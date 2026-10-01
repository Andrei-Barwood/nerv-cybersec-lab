# frozen_string_literal: true

module Nerv
  class PlaybookEp08 < Playbook
    def run(angel:, eva_02:, theater:, magi:, dual_plug: nil)
      if theater.tokyo3?
        siem.emit(SIEM::TOKYO3_SILENT)
        @outcome = :unresolved
        return record(:unresolved)
      end
      
      siem.emit(SIEM::CONVOY_UNDER_ATTACK)
      siem.emit(SIEM::PATTERN_BLUE)
      siem.emit(SIEM::TOKYO3_SILENT)
      
      siem.emit(SIEM::EVA02_DEPLOYED)
      
      if dual_plug&.active?
        siem.emit(SIEM::DUAL_PLUG)
        siem.emit(SIEM::OPERATOR_INPUT_PRESENT)
      else
        @outcome = :unresolved
        return record(:unresolved)
      end

      # Asuka opens the jaw
      angel.open_jaw!
      siem.emit(SIEM::JAW_OPEN)

      # Fleet fires
      siem.emit(SIEM::FLEET_BATTERY_FIRED)
      battery = FleetBattery.new
      
      if angel.receive(battery) == :core_destroyed
        siem.emit(SIEM::CORE_DESTROYED)
        siem.emit(SIEM::EXTRA_CARGO_UNCLASSIFIED) # Note about Kaji
        
        @outcome = :contained_controlled
        record(:contained_controlled)
      else
        @outcome = :unresolved
        record(:unresolved)
      end
    end
  end
end
