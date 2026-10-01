# frozen_string_literal: true

module Nerv
  class AnalogLaunch
    attr_reader :deployed

    def initialize(hq_outage:, magi:)
      @hq_outage = hq_outage
      @magi = magi
      @deployed = false
    end

    def run!
      # Analog launch does NOT require magi.majority or hq_power
      @deployed = true
      :analog_launch
    end
  end
end
