# frozen_string_literal: true

module Nerv
  class KillZone
    def initialize(active: true)
      @active = active
    end

    def active?
      @active
    end

    def approach_melts?
      @active
    end
  end
end
