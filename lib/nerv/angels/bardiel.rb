# frozen_string_literal: true

require_relative "../angel"

module Nerv
  class Bardiel < Angel
    attr_reader :host_eva

    def initialize(host_eva:)
      super()
      @host_eva = host_eva
    end

    def pattern_blue?
      true
    end
  end
end
