# frozen_string_literal: true

module Nerv
  class Silence
    attr_reader :missing_logs

    def initialize
      @missing_logs = 0
    end

    def record_missing_log!
      @missing_logs += 1
    end
  end
end
