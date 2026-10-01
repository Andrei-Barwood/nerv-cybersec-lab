# frozen_string_literal: true

module Nerv
  class CloneTank
    attr_reader :revealed
    
    def initialize
      @revealed = false
    end
    
    def reveal!
      @revealed = true
    end
    
    def boot_next!
      Operator.new(name: :rei_iii)
    end
  end
end
