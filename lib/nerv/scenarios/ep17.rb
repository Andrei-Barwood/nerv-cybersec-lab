# frozen_string_literal: true

module Nerv
  module Scenarios
    class Ep17
      attr_reader :playbook, :siem, :outcome

      def initialize
        @siem = SIEM.new
        @eva = Eva.new(designation: "eva-03", operator: nil)
        @intake = Eva03Intake.new(eva: @eva)
        @toji = Operator.new(name: :toji)
        @fourth = FourthChild.new(@toji)
        @leverage = SisterLeverage.new
        @knows = NeedToKnow.new
        @dormant = DormantContaminant.new
        
        @playbook = PlaybookEp17.new(siem: @siem)
        @outcome = nil
      end

      def run
        @outcome = @playbook.run(
          eva03_intake: @intake,
          fourth_child: @fourth,
          sister_leverage: @leverage,
          need_to_know: @knows,
          dormant_contaminant: @dormant
        )
        @outcome
      end

      def events
        @siem.events
      end
    end
  end
end
