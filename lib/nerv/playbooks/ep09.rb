# frozen_string_literal: true

module Nerv
  class PlaybookEp09 < Playbook
    EPSILON = 0.1

    def run(angel:, eva_01:, eva_02:, sync_clock:, rehearsal:, skip_rehearsal: false)
      siem.emit(SIEM::PATTERN_BLUE)

      # Act 1: Desync
      siem.emit(SIEM::DESYNC)
      angel.split!
      siem.emit(SIEM::ANGEL_SPLIT)
      siem.emit(SIEM::CORE_PAIR_ALIVE)

      # Deploy N2 to Stun
      angel.receive(Attacks::N2Mine.new)
      siem.emit(SIEM::N2_STUN_WINDOW)

      unless skip_rehearsal
        siem.emit(SIEM::REHEARSAL_STARTED)
        rehearsal.start!
        siem.emit(SIEM::REHEARSAL_DONE)
      end

      # Act 2: Simultaneous Strike
      if rehearsal.done?
        siem.emit(SIEM::SIMULTANEOUS_STRIKE)
        delta = sync_clock.calculate_delta
        
        result = angel.receive_simultaneous_strikes(2, delta, EPSILON)
        
        if result == :core_destroyed
          siem.emit(SIEM::CORE_DESTROYED)
          @outcome = :contained_controlled
          return record(:contained_controlled)
        else
          siem.emit(SIEM::REJOIN)
          @outcome = :unresolved
          return record(:unresolved)
        end
      else
        siem.emit(SIEM::REJOIN)
        @outcome = :unresolved
        return record(:unresolved)
      end
    end
  end
end
