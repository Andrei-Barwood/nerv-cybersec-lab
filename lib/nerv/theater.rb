# frozen_string_literal: true

module Nerv
  class Theater
    attr_reader :location

    def initialize(location)
      @location = location # :pacific_fleet or :tokyo3_geofront
    end
    
    def tokyo3?
      @location == :tokyo3_geofront
    end
  end
end
