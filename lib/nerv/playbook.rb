# frozen_string_literal: true

module Nerv
  class Playbook
    attr_reader :siem, :outcome, :steps

    def initialize(siem: nil)
      @siem = siem || SIEM.new
      @outcome = nil
      @steps = []
    end

    def preventive_controls
      []
    end

    def mitigation_steps
      []
    end

    def run(**_kwargs)
      raise NotImplementedError, "#{self.class}#run"
    end

    private

    def record(result)
      @steps << result
      result
    end
  end

  # ONU → N² → Eva in the cold. Cuts at :unresolved. Never :berserk.
  class PlaybookEp01 < Playbook
    def preventive_controls
      %i[
        core_doctrine
        operator_pre_sync
        backup_available
        wipe_drills
        perimeter_abort
        magi_majority
        first_seen_hygiene
      ]
    end

    def mitigation_steps
      %i[
        onu_fire
        n2_mine
        pattern_blue
        magi_auth
        eva_deploy
        sync_check
        first_contact
        abort_handoff
      ]
    end

    def run(angel:, eva:, magi:, backup_unavailable: true)
      conventional_fail(angel)
      emit_pattern_blue(angel)
      n2_regen(angel)
      authorize!(magi)
      refuse_failover(backup_unavailable)
      deploy!(eva)
      sync_check(eva)
      first_contact(eva, angel)

      @outcome = :unresolved
      record(:unresolved)
      @outcome
    end

    private

    def conventional_fail(angel)
      angel.receive(Attacks::ConventionalAttack.new)
      record(:fail)
    end

    def emit_pattern_blue(angel)
      siem.emit(SIEM::PATTERN_BLUE) if angel.pattern_blue?
    end

    def n2_regen(angel)
      siem.emit(SIEM::WIPE_DECLARED)
      angel.receive(Attacks::N2Mine.new)
      siem.emit(SIEM::WIPE_FAILED_REGEN) if angel.regenerated?
      record(:regen)
    end

    def authorize!(magi)
      magi.vote!(:melchior, true)
      magi.vote!(:balthasar, true)
      magi.vote!(:casper, false)
      raise "MAGI majority required to deploy" unless magi.majority?
    end

    def refuse_failover(backup_unavailable)
      return unless backup_unavailable
      # Rei is injured. No Operator swap. Explicit no-op for tests.
      nil
    end

    def deploy!(eva)
      eva.deploy!
      siem.emit(SIEM::EVA_DEPLOYED)
      record(:deploy)
    end

    def sync_check(eva)
      return if eva.sync_rate >= Eva::SYNC_THRESHOLD

      siem.emit(SIEM::OPERATOR_SYNC_LOW)
    end

    def first_contact(eva, angel)
      eva.attempt_core_strike(angel)
    end
  end
end
