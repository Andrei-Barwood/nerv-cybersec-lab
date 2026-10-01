# frozen_string_literal: true

module Nerv
  module Scenarios
    class Ep23
      attr_reader :playbook, :siem, :outcome

      def initialize
        @siem = SIEM.new
        @armisael = Armisael.new
        @rei = Operator.new(name: :rei_ii)
        @eva00 = Eva.new(designation: "eva-00", operator: @rei)
        @eva00.deploy!
        
        @shinji = Operator.new(name: :shinji)
        @eva01 = Eva.new(designation: "eva-01", operator: @shinji)
        
        @clone_tank = CloneTank.new
        
        @playbook = PlaybookEp23.new(siem: @siem)
        @outcome = nil
      end

      def run
        @outcome = @playbook.run(
          armisael: @armisael,
          eva00: @eva00,
          eva01: @eva01,
          clone_tank: @clone_tank
        )
        @outcome
      end

      def events
        @siem.events
      end
    end
  end
end
