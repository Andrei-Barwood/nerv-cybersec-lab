# frozen_string_literal: true

module Nerv
  class PowerGrid
    def self.national
      new(source: :national)
    end

    def initialize(source: :internal)
      @source = source
    end

    def sufficient_for_positron?
      @source == :national
    end
  end
end
