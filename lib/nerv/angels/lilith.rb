# frozen_string_literal: true

require_relative "../angel"

module Nerv
  module Angels
    class Lilith < Angel
      attr_reader :state, :lcl_flow

      def initialize
        super
        @name = "Lilith"
        @state = :crucified_terminal_dogma
        @spear_impaled = true
        @lcl_flow = :continuous
        @honeypot_active = true
      end

      def seed_of_knowledge?
        true
      end

      def pattern_blue?
        true
      end

      def crucified?
        @state == :crucified_terminal_dogma
      end

      def spear_impaled?
        @spear_impaled
      end

      def remove_spear!
        @spear_impaled = false
        @state = :awakened_ready_for_impact
      end

      def honeypot_active?
        @honeypot_active
      end

      def attract_angels?
        @honeypot_active
      end
    end
  end
end
