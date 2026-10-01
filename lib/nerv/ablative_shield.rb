# frozen_string_literal: true

module Nerv
  class AblativeShield
    attr_reader :status

    def initialize
      @status = :intact
    end

    def up?
      @status == :intact || @status == :degraded
    end

    def absorb!
      if @status == :intact
        @status = :degraded
        true
      else
        @status = :destroyed
        false
      end
    end
  end
end
