# frozen_string_literal: true

module Nerv
  module Scenarios
    class Ep11
      attr_reader :angel, :hq_outage, :magi, :acid, :playbook, :siem, :outcome

      def initialize
        @siem = SIEM.new
        @angel = Angels::Matarael.new
        @hq_outage = HqOutage.new
        @magi = Magi.new
        @magi.instance_variable_set(:@unpowered, true)
        @acid = Acid.new
        @playbook = PlaybookEp11.new(siem: @siem)
        @outcome = nil
      end

      def run
        @outcome = @playbook.run(
          angel: @angel,
          hq_outage: @hq_outage,
          magi: @magi,
          acid: @acid
        )
        @outcome
      end

      def events
        @siem.events
      end
    end
  end
end
