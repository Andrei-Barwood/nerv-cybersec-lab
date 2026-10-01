# frozen_string_literal: true

module Nerv
  module Scenarios
    class Ep22
      attr_reader :playbook, :siem, :outcome

      def initialize
        @siem = SIEM.new
        @arael = Arael.new
        @asuka = Operator.new(name: :asuka)
        @spear = Attacks::SpearOfLonginus.new
        @rei = Operator.new(name: :rei)
        
        @playbook = PlaybookEp22.new(siem: @siem)
        @outcome = nil
      end

      def run
        @outcome = @playbook.run(
          arael: @arael,
          asuka: @asuka,
          spear: @spear,
          eva00_operator: @rei
        )
        @outcome
      end

      def events
        @siem.events
      end
    end
  end
end
