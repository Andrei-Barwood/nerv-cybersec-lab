# frozen_string_literal: true

module Nerv
  module Scenarios
    class Ep08
      attr_reader :angel, :eva_02, :asuka, :shinji, :dual_plug, :theater, :magi, :playbook, :siem, :outcome

      def initialize
        @siem = SIEM.new
        @angel = Angels::Gaghiel.new
        @asuka = Operator.new(name: "Asuka", sync_rate: 0.8)
        @eva_02 = Eva.new(designation: "02", operator: @asuka)
        @shinji = Operator.new(name: "Shinji", sync_rate: 0.6)
        @dual_plug = DualPlug.new(primary: @asuka, secondary: @shinji)
        @theater = Theater.new(:pacific_fleet)
        @magi = Magi.new
        @playbook = PlaybookEp08.new(siem: @siem)
        @outcome = nil
      end

      def run
        @outcome = @playbook.run(
          angel: @angel,
          eva_02: @eva_02,
          theater: @theater,
          magi: @magi,
          dual_plug: @dual_plug
        )
        @outcome
      end

      def events
        @siem.events
      end
    end
  end
end
