# frozen_string_literal: true

module Nerv
  module Scenarios
    class Ep16
      attr_reader :leliel, :eva, :n2_mine, :dirac, :magi, :playbook, :siem, :outcome

      def initialize
        @siem = SIEM.new
        @leliel = Leliel.new
        @pilot = Operator.new(name: :shinji, sync_rate: 0.6)
        @eva = Eva.new(designation: "eva-01", operator: @pilot)
        @n2_mine = Attacks::N2Mine.new
        
        # Scenario specific N2 stub where Misato aborts
        class << @n2_mine
          def detonate!(occupant_inside:)
            false # Freno de Misato
          end
        end
        
        @dirac = DiracSea.new
        @magi = Magi.new
        @playbook = PlaybookEp16.new(siem: @siem)
        @outcome = nil
      end

      def run
        @outcome = @playbook.run(
          angel: @leliel,
          eva: @eva,
          n2_mine: @n2_mine,
          dirac: @dirac,
          magi: @magi
        )
        @outcome
      end

      def events
        @siem.events
      end
    end
  end
end
