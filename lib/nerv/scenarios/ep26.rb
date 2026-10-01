# frozen_string_literal: true

module Nerv
  module Scenarios
    class Ep26
      attr_reader :playbook, :siem, :outcome

      def initialize
        @siem = SIEM.new
        @playbook = PlaybookEp26.new(siem: @siem)
        @outcome = nil
      end

      def run
        Instrumentality.reset!
        Instrumentality.start!
        @outcome = @playbook.run
        @outcome
      end

      def events
        @siem.events
      end
    end
  end
end
