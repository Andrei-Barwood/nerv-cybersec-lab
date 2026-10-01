# frozen_string_literal: true

module Nerv
  class PlaybookEp10 < Playbook
    def run(angel:, eva_diver:, eva_support:, magma:, cage:, greed_override: false)
      siem.emit(SIEM::PATTERN_BLUE_EMBRYONIC)
      siem.emit(SIEM::DIVER_DEPLOYED)

      magma.drain!(20) # descent drain
      
      siem.emit(SIEM::CAPTURE_ATTEMPT)
      cage.deploy!(angel)
      
      magma.drain!(40) # struggle drain
      siem.emit(SIEM::CAPTURE_FAILED)
      siem.emit("#{SIEM::HATCH_PROGRESS}=#{angel.hatch_progress}")

      # Decide abort
      if greed_override
        # They don't abort, hatch goes to 1.0
        angel.provoke_hatch!
        magma.drain!(40)
        siem.emit("#{SIEM::HATCH_PROGRESS}=#{angel.hatch_progress}")
      else
        # Misato calls abort
        siem.emit(SIEM::ABORT_TO_KILL)
        result = angel.receive(Attacks::ProgressiveKnife.new(mode: :core_strike))
        
        if result == :angel_killed_pre_hatch
          siem.emit(SIEM::ANGEL_KILLED_PRE_HATCH)
          siem.emit(SIEM::SAMPLE_LOST)
        end
        magma.drain!(20) # escape drain
      end

      # Check conditions
      siem.emit("#{SIEM::COOLING_REMAINING}=#{magma.cooling_remaining}")
      
      if magma.cooked?
        siem.emit(SIEM::EVA_COOKED)
        @outcome = :unresolved
        return record(:unresolved)
      end

      if angel.fully_hatched?
        @outcome = :unresolved
        return record(:unresolved)
      end

      if !angel.alive?
        siem.emit(SIEM::SUPPORT_RESCUE)
        @outcome = :contained_controlled
        return record(:contained_controlled)
      end

      @outcome = :unresolved
      record(:unresolved)
    end
  end
end
