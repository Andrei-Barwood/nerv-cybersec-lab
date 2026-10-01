# frozen_string_literal: true

module Nerv
  module Scenarios
    class Ep10
      attr_reader :angel, :eva_diver, :eva_support, :magma, :cage, :playbook, :siem, :outcome

      def initialize
        @siem = SIEM.new
        @angel = Angels::Sandalphon.new
        @eva_diver = Eva.new(designation: "02", operator: Operator.new(name: "Asuka", sync_rate: 0.9))
        @eva_support = Eva.new(designation: "01", operator: Operator.new(name: "Shinji", sync_rate: 0.9))
        @magma = MagmaEnvironment.new
        @cage = CaptureCage.new
        @playbook = PlaybookEp10.new(siem: @siem)
        @outcome = nil
      end

      def run
        @outcome = @playbook.run(
          angel: @angel,
          eva_diver: @eva_diver,
          eva_support: @eva_support,
          magma: @magma,
          cage: @cage
        )
        @outcome
      end

      def events
        @siem.events
      end
    end
  end
end
