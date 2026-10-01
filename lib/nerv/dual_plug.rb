# frozen_string_literal: true

module Nerv
  class DualPlug
    attr_reader :primary, :secondary

    def initialize(primary:, secondary:)
      @primary = primary
      @secondary = secondary
    end

    def active?
      !@primary.nil? && !@secondary.nil?
    end
    
    def sync_rate
      @primary.sync_rate + (@secondary.sync_rate * 0.5)
    end
  end
end
