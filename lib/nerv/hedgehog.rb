# frozen_string_literal: true

module Nerv
  class Hedgehog
    attr_accessor :distance
    
    # 0.0 = too_close (fusión)
    # 0.3 - 0.7 = habitable
    # 1.0 = too_far (aislamiento)

    def initialize(initial_distance: 0.5)
      @distance = initial_distance
    end

    def too_close?
      @distance < 0.3
    end

    def too_far?
      @distance > 0.7
    end

    def habitable_band?
      !too_close? && !too_far?
    end

    def isolate!
      @distance = 1.0
    end

    def fuse!
      @distance = 0.0
    end

    def set_habitable!
      @distance = 0.5
    end
  end
end
