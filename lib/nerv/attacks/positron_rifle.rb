# frozen_string_literal: true
module Nerv
  module Attacks
    class PositronRifle
      attr_reader :grid

      def initialize(grid:)
        @grid = grid
      end

      def enough_power?
        @grid.sufficient_for_positron?
      end
    end
  end
end
