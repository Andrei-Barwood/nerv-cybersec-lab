# frozen_string_literal: true

module Nerv
  class EvaHijack
    def initialize(angel:, eva:)
      @angel = angel
      @eva = eva
    end

    def hijack!
      @eva.status = :hijacked
    end
  end
end
