# frozen_string_literal: true

module Nerv
  class VendorVirus
    attr_reader :origin

    def initialize(origin: :nerv_sabotage)
      @origin = origin
      @active = true
    end

    def active?
      @active
    end
  end
end
