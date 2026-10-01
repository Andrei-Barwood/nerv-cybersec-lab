# frozen_string_literal: true

module Nerv
  class Rehearsal
    attr_reader :hours_spent
    
    def initialize
      @hours_spent = 0
      @done = false
    end

    def start!
      @hours_spent = 144 # 6 days
      @done = true
    end

    def done?
      @done
    end
  end
end
