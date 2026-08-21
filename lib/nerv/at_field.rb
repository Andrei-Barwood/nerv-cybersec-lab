# frozen_string_literal: true

module Nerv
  # Isolation the attacker brings with them. Not the core.
  class AtField
    def initialize
      @lowered = false
      @penetrated = false
    end

    def lowered?
      @lowered
    end

    def penetrated?
      @penetrated
    end

    def lower!
      @lowered = true
      self
    end

    def penetrate!
      @penetrated = true
      self
    end

    def blocks?
      !lowered? && !penetrated?
    end

    def rebound(_attack)
      :rebounced
    end
  end
end
