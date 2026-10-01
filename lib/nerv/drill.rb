# frozen_string_literal: true

module Nerv
  class Drill
    attr_reader :progress

    def initialize
      @progress = 0.0
      @active = false
    end

    def start!
      @active = true
      @progress = 0.1
    end

    def active?
      @active
    end

    def advance!(amount)
      @progress += amount if @active
      @progress = 1.0 if @progress > 1.0
    end
  end
end
