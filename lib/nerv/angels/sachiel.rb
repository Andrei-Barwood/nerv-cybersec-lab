# frozen_string_literal: true

module Nerv
  module Angels
    class Sachiel < Angel
      TTP_FIRST_SEEN = "T-SACHIEL-01"
      TTP_PERIMETER_REBUFF = "T-SACHIEL-02"
      TTP_WIPE_SURVIVAL = "T-SACHIEL-03"
      TTP_ADAPTIVE_MUTATION = "T-SACHIEL-04"
      TTP_HIGH_VALUE_APPROACH = "T-SACHIEL-05"

      INITIAL_TTPS = [
        TTP_FIRST_SEEN,
        TTP_PERIMETER_REBUFF,
        TTP_HIGH_VALUE_APPROACH
      ].freeze

      attr_reader :ttps, :heading

      def initialize
        super
        @ttps = INITIAL_TTPS.dup
        @regenerated = false
        @mutated = false
        @heading = :geofront
        @mask = :decoy
      end

      def mask
        @mask
      end

      def approach
        @heading = :geofront
        self
      end

      def regenerated?
        @regenerated
      end

      def mutated?
        @mutated
      end

      def regenerate!
        return self if core.destroyed?

        @regenerated = true
        self
      end

      def mutate!
        return self if core.destroyed?

        @ttps << TTP_WIPE_SURVIVAL unless @ttps.include?(TTP_WIPE_SURVIVAL)
        @ttps << TTP_ADAPTIVE_MUTATION unless @ttps.include?(TTP_ADAPTIVE_MUTATION)
        @mutated = true
        self
      end

      private

      def after_non_core_impact(attack)
        if attack.is_a?(Attacks::N2Mine)
          regenerate!
          mutate!
          return :wipe_failed
        end

        :rebounced
      end
    end
  end
end
