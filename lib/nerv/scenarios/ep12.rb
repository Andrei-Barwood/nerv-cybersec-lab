# frozen_string_literal: true

module Nerv
  module Scenarios
    class Ep12
      attr_reader :angel, :impact_clock, :magi, :playbook, :siem, :outcome

      def initialize
        @siem = SIEM.new
        @angel = Angels::Sahaquiel.new
        @impact_clock = ImpactClock.new
        @magi = Magi.new
        @playbook = PlaybookEp12.new(siem: @siem)
        @outcome = nil
      end

      def run
        @outcome = @playbook.run(
          angel: @angel,
          impact_clock: @impact_clock,
          magi: @magi,
          evas_catching: 3
        )
        @outcome
      end

      def events
        @siem.events
      end
    end
  end
end
