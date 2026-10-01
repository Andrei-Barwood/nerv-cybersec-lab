# frozen_string_literal: true

module Nerv
  class Decoy
    attr_reader :radius

    def initialize
      @radius = 15 # radius in meters (30m diameter sphere)
    end
  end
end
