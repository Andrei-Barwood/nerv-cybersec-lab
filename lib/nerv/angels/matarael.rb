# frozen_string_literal: true
require_relative "../angel"

module Nerv
  module Angels
    class Matarael < Angel
      def initialize
        super
      end

      def receive(attack)
        # Matarael is weak. Any combined sortie kills it.
        if attack.is_a?(Attacks::CombinedSortie)
          @core.instance_variable_set(:@destroyed, true)
          return :core_destroyed
        end

        :rebounced
      end
    end
  end
end
