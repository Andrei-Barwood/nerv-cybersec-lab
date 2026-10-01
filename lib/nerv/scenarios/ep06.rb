# frozen_string_literal: true

module Nerv
  module Scenarios
    class Ep06
      attr_reader :eva_01, :eva_00, :magi, :playbook, :siem, :outcome, :angel, :grid

      def initialize
        @siem = SIEM.new
        @angel = Angels::Ramiel.new
        @eva_01 = Eva.new(
          designation: "01",
          operator: Operator.new(name: "Shinji", sync_rate: 0.6)
        )
        @eva_00 = Eva.new(
          designation: "00",
          operator: Operator.new(name: "Rei", sync_rate: 0.6)
        )
        @magi = Magi.new
        @grid = PowerGrid.national
        @playbook = PlaybookEp06.new(siem: @siem)
        @outcome = nil
      end

      def run
        @outcome = @playbook.run(
          angel: @angel,
          eva_01: @eva_01,
          eva_00: @eva_00,
          magi: @magi,
          grid: @grid
        )
        @outcome
      end

      def events
        @siem.events
      end
    end
  end
end
