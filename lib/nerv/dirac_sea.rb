# frozen_string_literal: true

module Nerv
  class DiracSea
    attr_reader :occupant

    def initialize
      @occupant = nil
    end

    def absorb!(eva)
      @occupant = eva
    end

    def occupant?
      !@occupant.nil?
    end

    def time_dilation_ratio
      # 16 horas fuera = meses adentro. Ratio 1:45 (aprox)
      45
    end
  end
end
