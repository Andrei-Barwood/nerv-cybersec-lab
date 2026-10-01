# frozen_string_literal: true

module Nerv
  class PlaybookEp06 < Playbook
    def run(angel:, eva_01:, eva_00:, magi:, grid:)
      # Start where Ep05 left off
      siem.emit(SIEM::STANDOFF_CAPABILITY_PRESENT)
      siem.emit(SIEM::YASHIMA_DECLARED)
      
      shield = AblativeShield.new
      op = OperationYashima.new(grid: grid, shield: shield)
      
      if grid.sufficient_for_positron?
        siem.emit(SIEM::NATIONAL_BLACKOUT)
      end
      
      siem.emit(SIEM::POSITRON_CHARGING)
      siem.emit(SIEM::POSITRON_SHOT)
      
      res1 = op.fire_first!
      if res1 == :no_power
        @outcome = :unresolved
        return record(:unresolved)
      end
      
      # Miss! Counterfire!
      siem.emit(SIEM::SHOT_INSUFFICIENT)
      siem.emit(SIEM::COUNTERFIRE_ON_NEST)
      
      if shield.up?
        shield.absorb!
        siem.emit(SIEM::SHIELD_ABSORBED)
        siem.emit(SIEM::SHIELD_DEGRADED)
      else
        siem.emit(SIEM::EVA_MELTED)
        @outcome = :unresolved
        return record(:unresolved)
      end
      
      res2 = op.fire_second!
      if res2 == :hit
        # Kill
        angel.receive(op.rifle)
        siem.emit(SIEM::CORE_DESTROYED)
        siem.emit(SIEM::DRILL_STOPPED)
        
        siem.emit(SIEM::THANK_YOU)
        
        @outcome = :contained_controlled
        record(:contained_controlled)
      elsif res2 == :sniper_melted
        siem.emit(SIEM::EVA_MELTED)
        @outcome = :unresolved
        record(:unresolved)
      end
    end
  end
end
