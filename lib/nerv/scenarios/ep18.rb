# frozen_string_literal: true

module Nerv
  module Scenarios
    class Ep18
      attr_reader :playbook, :siem, :outcome

      def initialize
        @siem = SIEM.new
        @shinji = Operator.new(name: :shinji, sync_rate: 0.6)
        @toji = Operator.new(name: :toji, sync_rate: 0.3)
        @eva01 = Eva.new(designation: "eva-01", operator: @shinji)
        @eva03 = Eva.new(designation: "eva-03", operator: @toji)
        @eva00 = Eva.new(designation: "eva-00", operator: Operator.new(name: :rei))
        @eva02 = Eva.new(designation: "eva-02", operator: Operator.new(name: :asuka))
        @dormant = DormantContaminant.new
        @dummy = DummyPlug.new(eva: @eva01)
        @magi = Magi.new
        @knows = NeedToKnow.new
        @playbook = PlaybookEp18.new(siem: @siem)
        @outcome = nil
      end

      def run
        @outcome = @playbook.run(
          dormant_contaminant: @dormant,
          eva03: @eva03,
          eva01: @eva01,
          eva00: @eva00,
          eva02: @eva02,
          dummy_plug: @dummy,
          magi: @magi,
          shinji: @shinji,
          toji: @toji,
          knows: @knows
        )
        @outcome
      end

      def events
        @siem.events
      end
    end
  end
end
