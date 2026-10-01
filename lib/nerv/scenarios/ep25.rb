# frozen_string_literal: true

module Nerv
  module Scenarios
    class Ep25
      attr_reader :playbook, :siem, :outcome

      def initialize
        @siem = SIEM.new
        @playbook = PlaybookEp25.new(siem: @siem)
        @outcome = nil
      end

      def run
        Instrumentality.reset!
        @outcome = @playbook.run
        @outcome
      end

      def events
        @siem.events
      end
    end
  end
end
