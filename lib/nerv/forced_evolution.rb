# frozen_string_literal: true

module Nerv
  class ForcedEvolution
    def initialize(magi:, magi_infection:)
      @magi = magi
      @magi_infection = magi_infection
    end

    def reverse_hack_via_casper!
      casper = @magi.unit(:casper)
      return false if casper.compromised? || casper.vote == :ireul
      
      # Clear infection by resetting votes to :nerv
      @magi.units.each do |unit|
        unit.compromised = false
        unit.vote = :nerv
      end
      
      true
    end

    def dead_end?
      @magi_infection.majority_owner == :nerv
    end
  end
end
