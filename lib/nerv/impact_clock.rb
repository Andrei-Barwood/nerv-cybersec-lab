# frozen_string_literal: true

module Nerv
  class ImpactClock
    attr_reader :impact_progress

    def initialize
      @impact_progress = 0.0
    end

    def tick!(amount)
      @impact_progress += amount
      @impact_progress = 1.0 if @impact_progress > 1.0
    end

    def landed?
      @impact_progress >= 1.0
    end
  end
end
