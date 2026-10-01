# frozen_string_literal: true

module Nerv
  module Scenarios
    class Ep03
      attr_reader :angel, :eva, :magi, :playbook, :siem, :outcome

      def initialize
        @siem = SIEM.new
        @angel = Angels::Shamshel.new
        @eva = Eva.new(
          designation: "01",
          operator: Operator.new(name: "Shinji", sync_rate: 0.6)
        )
        @magi = Magi.new
        @playbook = PlaybookEp03.new(siem: @siem)
        @outcome = nil
      end

      def run
        @outcome = @playbook.run(
          angel: @angel,
          eva: @eva,
          magi: @magi,
          use_berserk: false
        )
        @outcome
      end

      def events
        @siem.events
      end
    end
  end
end
