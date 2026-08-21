# frozen_string_literal: true

module Nerv
  # Root persistence. Kill condition.
  class Core
    def initialize
      @destroyed = false
    end

    def intact?
      !@destroyed
    end

    def destroyed?
      @destroyed
    end

    def destroy!
      @destroyed = true
      self
    end
  end
end
