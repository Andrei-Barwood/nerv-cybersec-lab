# frozen_string_literal: true

module Nerv
  module Scenarios
    # The Beast. Continues INC-SACHIEL-001. Exit 1 from bin/episodio.
    class Ep02
      attr_reader :ep01, :playbook, :outcome

      def initialize
        @ep01 = Ep01.new
      end

      def run
        @ep01.run
        @playbook = PlaybookEp02.new(siem: @ep01.siem)
        @outcome = @playbook.run(
          angel: @ep01.angel,
          eva: @ep01.eva,
          magi: @ep01.magi,
          skip_ep01: true
        )
        @outcome
      end

      def events
        @ep01.siem.events
      end

      def angel
        @ep01.angel
      end

      def eva
        @ep01.eva
      end

      def magi
        @ep01.magi
      end

      def siem
        @ep01.siem
      end
    end
  end
end
