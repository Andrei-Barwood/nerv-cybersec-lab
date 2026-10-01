# frozen_string_literal: true

module Nerv
  class DummyPlug
    def initialize(eva:)
      @eva = eva
      @engaged = false
    end

    def engage!(target: nil)
      if target.is_a?(Zeruel) || target.is_a?(Arael) || target.is_a?(Armisael) || target.is_a?(Tabris) || target == :rescue
        @engaged = false
        return false
      end
      @engaged = true
      @eva.operator_input_discarded = true
    end

    def engaged?
      @engaged
    end
  end
end
