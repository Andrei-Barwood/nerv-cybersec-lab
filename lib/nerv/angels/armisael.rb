# frozen_string_literal: true

require_relative "../angel"

module Nerv
  class Armisael < Angel
    attr_reader :fused_eva, :lateral_target

    def initialize
      super
      @name = "Armisael"
      @fused_eva = nil
      @lateral_target = nil
      @alive = true
    end

    def alive?
      @alive
    end

    def fuse!(eva)
      @fused_eva = eva
    end

    def lateral_to(eva)
      @lateral_target = eva
    end

    def node_sacrificed!
      @alive = false
    end
  end
end
