# frozen_string_literal: true

module Nerv
  class Seele
    attr_reader :kpi

    def initialize
      # Intent of Instrumentality / merging souls
      @kpi = :instrumentality_intent
    end
    
    def is_a_angel?
      false
    end
  end
end
