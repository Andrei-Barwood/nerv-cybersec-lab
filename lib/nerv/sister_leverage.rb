# frozen_string_literal: true

module Nerv
  class SisterLeverage
    attr_reader :recorded

    def initialize
      @recorded = false
    end

    def record!
      @recorded = true
    end
  end
end
