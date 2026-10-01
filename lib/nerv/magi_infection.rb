# frozen_string_literal: true

module Nerv
  class MagiInfection
    def initialize(magi:)
      @magi = magi
    end

    def infect_brain!(name)
      brain = @magi.unit(name)
      brain.compromised = true
      brain.vote = :ireul
    end

    def majority_owner
      ireul_votes = @magi.units.count { |u| u.vote == :ireul }
      if ireul_votes >= 2
        :ireul
      elsif @magi.units.count { |u| u.vote == :nerv } >= 2
        :nerv
      else
        :split
      end
    end
    
    def self_destruct_armed?
      majority_owner == :ireul
    end
  end
end
