# frozen_string_literal: true

module Nerv
  module Scenarios
    class Ep20
      attr_reader :playbook, :siem, :outcome

      def initialize
        @siem = SIEM.new
        @shinji = Operator.new(name: :shinji)
        @eva01 = Eva.new(designation: "eva-01", operator: @shinji)
        @dummy = DummyPlug.new(eva: @eva01)
        @salvage = Salvage.new
        
        # State from Ep 19
        @s2 = S2Organ.new
        @s2.ingest!
        @eva01.s2_engine = @s2
        Introjection.introject!(eva: @eva01, operator: @shinji)
        
        @playbook = PlaybookEp20.new(siem: @siem)
        @outcome = nil
      end

      def run
        @outcome = @playbook.run(
          eva01: @eva01,
          shinji: @shinji,
          salvage: @salvage,
          dummy_plug: @dummy,
          dwell_days: 30,
          maternal_presence: true
        )
        @outcome
      end

      def events
        @siem.events
      end
    end
  end
end
