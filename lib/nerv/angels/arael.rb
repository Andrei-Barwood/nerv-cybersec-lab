# frozen_string_literal: true

require_relative "../angel"

module Nerv
  class Arael < Angel
    attr_reader :orbital_stay, :name
    
    def initialize
      super
      @name = "Arael"
      @orbital_stay = false
      @alive = true
    end

    def orbit!
      @orbital_stay = true
    end

    def alive?
      @alive
    end

    def receive(attack)
      if attack.is_a?(Attacks::SpearOfLonginus)
        @alive = false
        :core_destroyed
      else
        :ineffective
      end
    end
  end
end
