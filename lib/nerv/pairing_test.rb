# frozen_string_literal: true

module Nerv
  class PairingTest
    attr_reader :operator, :unit, :anomaly_recorded

    def initialize(operator:, unit:)
      @operator = operator
      @unit = unit
      @anomaly_recorded = false
    end

    def run_test!
      if @operator == :shinji && @unit == :eva00
        @anomaly_recorded = true
      end
    end
  end
end
