# frozen_string_literal: true

module Nerv
  class Acid
    attr_reader :progress

    def initialize
      @progress = 0.0
    end

    def melt!(amount)
      @progress += amount
      @progress = 1.0 if @progress > 1.0
    end

    def geofront_breached?
      @progress >= 1.0
    end
  end
end
