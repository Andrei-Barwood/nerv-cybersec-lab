# frozen_string_literal: true

require_relative "../angel"

module Nerv
  module Angels
    class Lilim < Angel
      attr_reader :state, :population_egos

      def initialize
        super
        @name = "Lilim"
        @state = :fragmented_individual_egos
        @population_egos = :dispersed
      end

      def eighteenth_angel?
        true
      end

      def humanity?
        true
      end

      def pattern_blue?
        # Lilim pattern is normally hidden until collective AT field collapse
        @state == :instrumentality_dissolved
      end

      def fruit_of_knowledge?
        true
      end

      def trigger_instrumentality!
        @state = :instrumentality_dissolved
        @population_egos = :ocean_of_lcl
      end

      def restore_boundaries!
        @state = :fragmented_individual_egos
        @population_egos = :individual_restored_fragile
      end
    end
  end
end
