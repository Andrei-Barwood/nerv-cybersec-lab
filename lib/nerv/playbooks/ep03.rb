# frozen_string_literal: true

module Nerv
  class PlaybookEp03 < Playbook
    def run(angel:, eva:, magi:, use_berserk: false)
      siem.emit(SIEM::PATTERN_BLUE) if angel.pattern_blue?

      magi.vote!(:melchior, true)
      magi.vote!(:balthasar, true)
      magi.vote!(:casper, true)
      raise "MAGI majority required to deploy" unless magi.majority?
      
      eva.deploy!
      siem.emit(SIEM::EVA_DEPLOYED)

      siem.emit(SIEM::PALLET_RIFLE_FIRED)
      angel.receive(Attacks::PalletRifle.new)

      siem.emit(SIEM::C2_CHANNEL_UP) if angel.respond_to?(:whips_active?) && angel.whips_active?

      if eva.action_frozen?
        siem.emit(SIEM::OPERATOR_FREEZE)
        @outcome = :unresolved
        return record(:unresolved)
      end
      
      siem.emit(SIEM::OPERATOR_INPUT_PRESENT)
      eva.operator_input_discarded = false

      if use_berserk
        siem.emit(SIEM::EVA_BERSERK)
        angel.receive(Attacks::BerserkChannel.new)
        if angel.core.destroyed?
          siem.emit(SIEM::CORE_DESTROYED)
          siem.emit(SIEM::ANGEL_DEFLATED) if angel.deflated?
        end
        @outcome = :contained_uncontrolled
        return record(:contained_uncontrolled)
      end

      siem.emit(SIEM::PROGRESSIVE_KNIFE)
      eva.attempt_progressive_knife(angel, mode: :sever_c2)
      
      if angel.respond_to?(:whips_active?) && !angel.whips_active?
        siem.emit(SIEM::C2_CHANNEL_SEVERED)
      end

      res = eva.attempt_progressive_knife(angel, mode: :core_strike)
      if res == :core_destroyed
        siem.emit(SIEM::CORE_DESTROYED)
        siem.emit(SIEM::ANGEL_DEFLATED) if angel.respond_to?(:deflated?) && angel.deflated?
      end

      siem.emit(SIEM::UNAUTHORIZED_OBSERVER)
      siem.emit(SIEM::CALLBACK_ABSENT)

      @outcome = :contained_controlled
      record(:contained_controlled)
    end
  end
end
