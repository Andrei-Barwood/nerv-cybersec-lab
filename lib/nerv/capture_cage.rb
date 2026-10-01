# frozen_string_literal: true

module Nerv
  class CaptureCage
    def initialize
      @deployed = false
      @failed = false
    end

    def deploy!(target)
      @deployed = true
      target.provoke_hatch! if target.respond_to?(:provoke_hatch!)
      @failed = true
      :capture_failed
    end

    def failed?
      @failed
    end
  end
end
