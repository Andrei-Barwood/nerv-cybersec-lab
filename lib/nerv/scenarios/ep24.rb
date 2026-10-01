# frozen_string_literal: true

module Nerv
  module Scenarios
    class Ep24
      attr_reader :playbook, :siem, :outcome

      def initialize
        @siem = SIEM.new
        @tabris = Tabris.new
        @shinji = Operator.new(name: :shinji)
        
        @playbook = PlaybookEp24.new(siem: @siem)
        @outcome = nil
      end

      def run
        @outcome = @playbook.run(
          tabris: @tabris,
          shinji: @shinji
        )
        @outcome
      end

      def events
        @siem.events
      end
    end
  end
end
