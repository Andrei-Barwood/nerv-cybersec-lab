# frozen_string_literal: true

module Nerv
  class SyncClock
    def initialize(pair_sync:, asuka_lead_override: false)
      @pair_sync = pair_sync
      @asuka_lead_override = asuka_lead_override
    end

    def calculate_delta
      return 1.0 if @asuka_lead_override
      return 1.0 if @pair_sync < 0.8
      0.05 # Epsilon-compliant delta
    end
  end
end
