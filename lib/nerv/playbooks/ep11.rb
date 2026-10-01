# frozen_string_literal: true

module Nerv
  module Attacks
    class CombinedSortie
      def initialize(evas:)
        @evas = evas
      end
    end
  end

  class PlaybookEp11 < Playbook
    def run(angel:, hq_outage:, magi:, acid:, wait_for_power: false)
      siem.emit(SIEM::HQ_POWER_LOST) if hq_outage.active?
      siem.emit(SIEM::ANALOG_MODE)
      siem.emit(SIEM::PATTERN_BLUE_DEGRADED)

      acid.melt!(0.5)
      siem.emit("#{SIEM::ACID_PROGRESS}=#{acid.progress}")

      if wait_for_power
        acid.melt!(0.6)
        siem.emit("#{SIEM::ACID_PROGRESS}=#{acid.progress}")
        if acid.geofront_breached?
          @outcome = :unresolved
          return record(:unresolved)
        end
      else
        analog = AnalogLaunch.new(hq_outage: hq_outage, magi: magi)
        analog.run!
        siem.emit(SIEM::ANALOG_LAUNCH)

        siem.emit(SIEM::COMBINED_SORTIE)
        attack = Attacks::CombinedSortie.new(evas: 3)
        result = angel.receive(attack)

        if result == :core_destroyed
          siem.emit(SIEM::CORE_DESTROYED)
          @outcome = :contained_controlled
          hq_outage.restore_power!
          siem.emit(SIEM::POWER_RESTORED)
          return record(:contained_controlled)
        end
      end

      @outcome = :unresolved
      record(:unresolved)
    end
  end
end
