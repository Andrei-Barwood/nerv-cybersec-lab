# frozen_string_literal: true

module Nerv
  module Scenarios
    class Ep21
      attr_reader :playbook, :siem, :outcome

      def initialize
        @siem = SIEM.new
        @origin_file = OriginFile.new
        @gehirn = Gehirn.new
        @magi = Magi.new
        @liaison = Liaison.new([:japan, :nerv, :seele])
        @shinji = Operator.new(name: :shinji)
        @eva01 = Eva.new(designation: "eva-01", operator: @shinji)
        
        @playbook = PlaybookEp21.new(siem: @siem)
        @outcome = nil
      end

      def run
        @outcome = @playbook.run(
          origin_file: @origin_file,
          gehirn: @gehirn,
          magi: @magi,
          liaison: @liaison,
          shinji: @shinji,
          eva01: @eva01
        )
        @outcome
      end

      def events
        @siem.events
      end
    end
  end
end
