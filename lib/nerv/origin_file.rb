# frozen_string_literal: true

module Nerv
  class OriginFile
    attr_reader :opened
    
    def initialize
      @opened = false
    end
    
    def open!
      @opened = true
    end
  end
end
