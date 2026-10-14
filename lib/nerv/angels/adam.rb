# frozen_string_literal: true

require_relative "../angel"

module Nerv
  module Angels
    class Adam < Angel
      attr_reader :state, :awakened

      def initialize
        super
        @name = "Adam"
        @state = :dormant_antarctica
        @awakened = false
        @embryo = false
      end

      def seed_of_life?
        true
      end

      def pattern_blue?
        true
      end

      def contact_experiment!
        @state = :contact_experiment
        @awakened = true
      end

      def second_impact!
        raise "Contact experiment required" unless @awakened
        @state = :second_impact_explosion
      end

      def revert_to_embryo!(spear:)
        raise "Spear of Longinus required" unless spear
        @state = :embryo_in_bakelite
        @embryo = true
        @awakened = false
      end

      def embryo?
        @embryo
      end
    end
  end
end
