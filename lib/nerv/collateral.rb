# frozen_string_literal: true

module Nerv
  class Collateral
    attr_reader :city, :unit, :operator, :narrative

    def initialize
      @city = 0
      @unit = 0
      @operator = 0
      @narrative = 0
    end

    def record!(city: 0, unit: 0, operator: 0, narrative: 0)
      @city += city
      @unit += unit
      @operator += operator
      @narrative += narrative
      self
    end
  end
end
