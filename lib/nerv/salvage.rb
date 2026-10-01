# frozen_string_literal: true

module Nerv
  class Salvage
    attr_reader :started
    
    def initialize
      @started = false
    end

    def start!
      @started = true
    end
  end
end
