# frozen_string_literal: true
require_relative "../angel"

module Nerv
  module Angels
    class Sahaquiel < Angel
      attr_reader :in_orbit

      def initialize
        super
        @in_orbit = true
      end

      def receive(attack)
        # Rebounds everything but the in-flight core kill during brake
        if attack.is_a?(Attacks::InFlightCoreKill)
          @core.instance_variable_set(:@destroyed, true)
          return :core_destroyed
        end

        :rebounced
      end
    end
  end
end
