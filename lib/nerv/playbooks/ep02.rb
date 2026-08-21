# frozen_string_literal: true

module Nerv
  # Continues INC-SACHIEL-001. Berserk fires; it is not chosen.
  # Outcome is :contained_uncontrolled. Never a victory-state :berserk.
  class PlaybookEp02 < Playbook
    attr_reader :collateral, :disclosure, :containment, :ttps, :hidden_agenda_progress

    def preventive_controls
      %i[
        human_in_the_loop
        sync_abort_threshold
        opaque_agency_inventory
        documented_kill_switch
        pain_sync_isolation
        magi_motion_per_channel
        congratulations_not_kpi
      ]
    end

    def mitigation_steps
      %i[
        unresolved_handoff
        pain_sync
        berserk_trigger
        magi_unauthorized
        shatter
        crush
        collateral
        disclosure
        congratulations
      ]
    end

    def self.berserk_trigger?(eva, angel)
      eva.deployed? &&
        eva.critical? &&
        (eva.action_frozen? || eva.pain_sync >= Eva::PAIN_SYNC_TRIGGER) &&
        angel.alive?
    end

    def run(angel:, eva:, magi:, backup_unavailable: true, skip_ep01: false)
      @collateral = Collateral.new
      @disclosure = Disclosure.new
      @ttps = []
      @hidden_agenda_progress = 0.0

      unless skip_ep01
        PlaybookEp01.new(siem: siem).run(
          angel: angel,
          eva: eva,
          magi: magi,
          backup_unavailable: backup_unavailable
        )
      end
      record(:unresolved_handoff)

      continue_fight!(eva)
      siem.emit(SIEM::OPERATOR_PAIN_SYNC)
      @ttps << Eva::TTP_PAIN_SYNC

      unless magi.authorized?(:berserk)
        siem.emit(SIEM::MAGI_BERSERK_UNAUTHORIZED)
      end

      raise "berserk trigger not met" unless self.class.berserk_trigger?(eva, angel)

      eva.berserk!
      siem.emit(SIEM::EVA_BERSERK)
      siem.emit(SIEM::OPERATOR_NON_CONSENT)
      @ttps << Eva::TTP_OPERATOR_BYPASS
      @hidden_agenda_progress += 1.0
      eva.operator.hidden_agenda_progress += 1.0 if eva.operator.hidden_agenda
      eva.operator.trauma_load += 1.0

      result = angel.receive(Attacks::BerserkChannel.new)
      siem.emit(SIEM::AT_FIELD_SHATTERED)
      siem.emit(SIEM::CORE_DESTROYED)
      @ttps << Eva::TTP_BRUTE_AT_FIELD
      @ttps << Eva::TTP_CORE_CRUSH
      record(:crush)

      @collateral.record!(city: 1, unit: 1, operator: 1)
      siem.emit(SIEM::COLLATERAL_RECORDED)
      @ttps << Eva::TTP_COLLATERAL_CITY

      @disclosure.reveal!
      @disclosure.issue_congratulations!
      siem.emit(SIEM::PUBLIC_DISCLOSURE)
      siem.emit(SIEM::CONGRATULATIONS_ISSUED)
      @ttps << Eva::TTP_PUBLIC_DISCLOSURE

      @containment = ContainmentResult.new(
        status: :contained_uncontrolled,
        operator_non_consent: true,
        angel_dead: angel.core.destroyed?
      )
      @containment.record_congratulations!

      @outcome = :contained_uncontrolled
      record(:contained_uncontrolled)
      @outcome
    end

    private

    def continue_fight!(eva)
      eva.critical!
      eva.pain_sync = 0.9
    end
  end
end
