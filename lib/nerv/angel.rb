# frozen_string_literal: true

module Nerv
  class Angel
    attr_reader :at_field, :core

    def initialize
      @at_field = AtField.new
      @core = Core.new
    end

    def pattern_blue?
      true
    end

    def regenerate!
      raise NotImplementedError, "#{self.class}#regenerate!"
    end

    def mutate!
      raise NotImplementedError, "#{self.class}#mutate!"
    end

    def alive?
      core.intact?
    end

    def receive(attack)
      if attack.is_a?(Attacks::BerserkChannel)
        at_field.penetrate!
        core.destroy!
        return :core_crushed
      end

      if core_strike?(attack) && field_open?
        core.destroy!
        return :core_destroyed
      end

      at_field.rebound(attack) if at_field.blocks?

      after_non_core_impact(attack)
    end

    private

    def field_open?
      at_field.lowered? || at_field.penetrated?
    end

    def core_strike?(attack)
      attack.is_a?(Attacks::CoreStrike)
    end

    def after_non_core_impact(_attack)
      :rebounced
    end
  end
end
