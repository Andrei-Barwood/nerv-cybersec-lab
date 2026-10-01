# frozen_string_literal: true

module Nerv
  class HqOutage
    attr_reader :hq_power

    def initialize
      @hq_power = false
    end

    def active?
      !@hq_power
    end

    def restore_power!
      @hq_power = true
    end
  end
end
