# frozen_string_literal: true

module Nerv
  class MagmaEnvironment
    attr_reader :cooling_remaining

    def initialize(initial_cooling: 100)
      @cooling_remaining = initial_cooling
    end

    def drain!(amount)
      @cooling_remaining -= amount
      @cooling_remaining = 0 if @cooling_remaining < 0
    end

    def cooked?
      @cooling_remaining <= 0
    end
  end
end
