# frozen_string_literal: true

module Nerv
  class AtFieldSelf < AtField
    attr_reader :mode, :status

    def initialize
      super
      @mode = :self
      @collapsed = false
    end

    def collapse!
      @collapsed = true
      @status = :down
    end

    def restore!
      @collapsed = false
      @status = :active
    end

    def collapsed?
      @collapsed
    end
  end
end
