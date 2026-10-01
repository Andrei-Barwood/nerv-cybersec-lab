# frozen_string_literal: true
require_relative "../angel"

module Nerv
  module Angels
    class Sandalphon < Angel
      attr_reader :hatch_progress

      def initialize
        super
        @hatch_progress = 0.0
      end

      def provoke_hatch!
        @hatch_progress += 0.8
      end

      def fully_hatched?
        @hatch_progress >= 1.0
      end

      def receive(attack)
        # N2, Conventional, etc. will fail as usual
        if attack.is_a?(Attacks::ProgressiveKnife)
          if fully_hatched?
            # It's an adult now, knife might not be enough depending on logic, but here we just say rebounced
            return :rebounced
          else
            # Pre-hatch kill
            @core.instance_variable_set(:@destroyed, true)
            return :angel_killed_pre_hatch
          end
        end

        :rebounced
      end
    end
  end
end
