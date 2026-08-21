# frozen_string_literal: true

module Nerv
  class Disclosure
    attr_reader :public_visibility, :congratulations_issued

    def initialize
      @public_visibility = 0.0
      @congratulations_issued = false
    end

    def reveal!(amount = 1.0)
      @public_visibility += amount
      self
    end

    def issue_congratulations!
      @congratulations_issued = true
      self
    end
  end
end
