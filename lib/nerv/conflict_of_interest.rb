# frozen_string_literal: true

module Nerv
  class ConflictOfInterest
    attr_reader :recorded

    def initialize
      @recorded = false
    end

    def record_magi_coi!
      @recorded = true
    end
  end
end
