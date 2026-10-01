# frozen_string_literal: true

require_relative "../angel"

module Nerv
  module Angels
    class Gaghiel < Angel
      attr_reader :jaw_open

      def initialize
        super
        @jaw_open = false
      end

      def open_jaw!
        @jaw_open = true
      end

      def receive(attack)
        # Inherited from Angel, conventionally N2Mine/Conventional do nothing
        # But here FleetBattery works IF jaw_open is true
        if attack.is_a?(FleetBattery) && @jaw_open
          @core.instance_variable_set(:@destroyed, true)
          return :core_destroyed
        end

        return :contained_uncontrolled if attack.is_a?(Attacks::BerserkChannel)
        
        # Knife without jaw open fails
        if attack.is_a?(Attacks::ProgressiveKnife)
          return :rebounced
        end

        :rebounced
      end
    end
  end
end
