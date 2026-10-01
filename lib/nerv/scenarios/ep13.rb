# frozen_string_literal: true

module Nerv
  module Scenarios
    class Ep13
      attr_reader :angel, :magi, :magi_infection, :forced_evolution, :playbook, :siem, :outcome

      def initialize
        @siem = SIEM.new
        @angel = Angels::Ireul.new
        @magi = Magi.new
        @magi.units.each { |u| u.vote = :nerv }
        @magi_infection = MagiInfection.new(magi: @magi)
        @forced_evolution = ForcedEvolution.new(magi: @magi, magi_infection: @magi_infection)
        @playbook = PlaybookEp13.new(siem: @siem)
        @outcome = nil
      end

      def run
        @outcome = @playbook.run(
          angel: @angel,
          magi: @magi,
          magi_infection: @magi_infection,
          forced_evolution: @forced_evolution,
          eva_deployed: false
        )
        @outcome
      end

      def events
        @siem.events
      end
    end
  end
end
