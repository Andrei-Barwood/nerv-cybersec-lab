# frozen_string_literal: true

module Nerv
  module Scenarios
    # Angel Attack. Ends unresolved. Exit 2 from bin/episodio.
    class Ep01
      attr_reader :angel, :eva, :magi, :playbook, :siem, :outcome

      def initialize
        @siem = SIEM.new
        @angel = Angels::Sachiel.new
        @eva = Eva.new(
          designation: "01",
          operator: Operator.new(name: "Shinji", sync_rate: 0.25, freeze: true)
        )
        @magi = Magi.new
        @playbook = PlaybookEp01.new(siem: @siem)
        @outcome = nil
      end

      def run
        @angel.approach
        @outcome = @playbook.run(
          angel: @angel,
          eva: @eva,
          magi: @magi,
          backup_unavailable: true
        )
        @outcome
      end

      def events
        @siem.events
      end
    end
  end
end
