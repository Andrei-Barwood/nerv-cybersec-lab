# frozen_string_literal: true

module Nerv
  class OperationYashima
    attr_reader :rifle, :shield, :shot_count

    def initialize(grid:, shield:)
      @rifle = Attacks::PositronRifle.new(grid: grid)
      @shield = shield
      @shot_count = 0
    end

    def fire_first!
      @shot_count += 1
      return :no_power unless @rifle.enough_power?
      return :miss
    end

    def fire_second!
      @shot_count += 1
      return :no_power unless @rifle.enough_power?
      return :sniper_melted unless @shield.up?
      return :hit
    end
  end
end
