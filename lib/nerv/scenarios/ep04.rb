# frozen_string_literal: true

module Nerv
  module Scenarios
    class Ep04
      attr_reader :eva, :magi, :playbook, :siem, :outcome

      def initialize
        @siem = SIEM.new
        @eva = Eva.new(
          designation: "01",
          operator: Operator.new(name: "Shinji", sync_rate: 0.6)
        )
        @magi = Magi.new
        @playbook = PlaybookEp04.new(siem: @siem)
        @outcome = nil
      end

      def run
        @outcome = @playbook.run(
          eva: @eva,
          magi: @magi,
          replace_proposed: true,
          force_return: false
        )
        @outcome
      end

      def events
        @siem.events
      end
    end
  end
end
