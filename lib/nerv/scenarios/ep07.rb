# frozen_string_literal: true

module Nerv
  module Scenarios
    class Ep07
      attr_reader :machine, :virus, :playbook, :siem, :outcome

      def initialize
        @siem = SIEM.new
        @machine = JetAlone.new
        @virus = VendorVirus.new
        @machine.inject_virus!(@virus)
        @playbook = PlaybookEp07.new(siem: @siem)
        @outcome = nil
      end

      def run
        @outcome = @playbook.run(
          machine: @machine,
          virus_analysis: @virus,
          misclassify_as_angel: false,
          sortie_eva: false,
          trepar: true
        )
        @outcome
      end

      def events
        @siem.events
      end
    end
  end
end
