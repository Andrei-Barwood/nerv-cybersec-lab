# frozen_string_literal: true

module Nerv
  module Scenarios
    class Ep05
      attr_reader :eva, :magi, :playbook, :siem, :outcome, :angel

      def initialize
        @siem = SIEM.new
        @angel = Angels::Ramiel.new
        @eva = Eva.new(
          designation: "01",
          operator: Operator.new(name: "Shinji", sync_rate: 0.6)
        )
        @magi = Magi.new
        @playbook = PlaybookEp05.new(siem: @siem)
        @outcome = nil
      end

      def run
        @outcome = @playbook.run(
          angel: @angel,
          eva: @eva,
          magi: @magi,
          sortie: true
        )
        @outcome
      end

      def events
        @siem.events
      end
    end
  end
end
