# frozen_string_literal: true

module Nerv
  # Isolation the attacker brings with them. Not the core.
  class AtField
    def initialize
      @lowered = false
      @penetrated = false
      @absorbing = false
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
      !lowered? && !penetrated? && !absorbing?
    end

    def rebound(_attack)
      :rebounced
    end

    def invert!
      @absorbing = true
    end

    def absorbing?
      @absorbing
    end
  end
end
