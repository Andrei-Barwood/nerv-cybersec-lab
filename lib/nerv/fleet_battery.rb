# frozen_string_literal: true
require_relative "attacks/conventional"

module Nerv
  class FleetBattery < Attacks::ConventionalAttack
    def initialize
      super()
    end
    
    def effective_against?(jaw_open:)
      jaw_open
    end
  end
end
