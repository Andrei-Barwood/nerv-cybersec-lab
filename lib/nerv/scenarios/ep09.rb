# frozen_string_literal: true

module Nerv
  module Scenarios
    class Ep09
      attr_reader :angel, :eva_01, :eva_02, :sync_clock, :rehearsal, :playbook, :siem, :outcome

      def initialize
        @siem = SIEM.new
        @angel = Angels::Israfel.new
        @eva_01 = Eva.new(designation: "01", operator: Operator.new(name: "Shinji", sync_rate: 0.9))
        @eva_02 = Eva.new(designation: "02", operator: Operator.new(name: "Asuka", sync_rate: 0.9))
        @sync_clock = SyncClock.new(pair_sync: 0.9, asuka_lead_override: false)
        @rehearsal = Rehearsal.new
        @playbook = PlaybookEp09.new(siem: @siem)
        @outcome = nil
      end

      def run
        @outcome = @playbook.run(
          angel: @angel,
          eva_01: @eva_01,
          eva_02: @eva_02,
          sync_clock: @sync_clock,
          rehearsal: @rehearsal
        )
        @outcome
      end

      def events
        @siem.events
      end
    end
  end
end
