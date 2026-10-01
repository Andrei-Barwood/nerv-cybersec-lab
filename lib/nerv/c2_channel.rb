# frozen_string_literal: true

module Nerv
  class C2Channel
    attr_reader :id

    def initialize(id:)
      @id = id
      @active = true
    end

    def active?
      @active
    end

    def sever!
      @active = false
    end
  end
end
