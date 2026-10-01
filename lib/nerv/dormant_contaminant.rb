# frozen_string_literal: true

module Nerv
  class DormantContaminant
    attr_reader :sealed

    def initialize
      @sealed = true
    end

    def sealed?
      @sealed
    end
    
    def activate!
      @sealed = false
    end
  end
end
