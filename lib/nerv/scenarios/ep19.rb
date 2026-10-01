# frozen_string_literal: true

module Nerv
  module Scenarios
    class Ep19
      attr_reader :playbook, :siem, :outcome

      def initialize
        @siem = SIEM.new
        @shinji = Operator.new(name: :shinji, sync_rate: 0.6)
        @eva01 = Eva.new(designation: "eva-01", operator: @shinji)
        @eva00 = Eva.new(designation: "eva-00", operator: Operator.new(name: :rei))
        @eva02 = Eva.new(designation: "eva-02", operator: Operator.new(name: :asuka))
        
        @zeruel = Zeruel.new
        @dummy = DummyPlug.new(eva: @eva01)
        @s2_organ = S2Organ.new
        @n2 = Attacks::N2Mine.new
        
        @playbook = PlaybookEp19.new(siem: @siem)
        @outcome = nil
      end

      def run
        @outcome = @playbook.run(
          zeruel: @zeruel,
          eva01: @eva01,
          eva02: @eva02,
          eva00: @eva00,
          dummy_plug: @dummy,
          s2_organ: @s2_organ,
          shinji: @shinji,
          n2_mine: @n2
        )
        @outcome
      end

      def events
        @siem.events
      end
    end
  end
end
