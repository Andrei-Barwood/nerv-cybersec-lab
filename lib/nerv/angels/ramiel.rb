# frozen_string_literal: true

require_relative "../angel"
require_relative "../kill_zone"
require_relative "../drill"

module Nerv
  module Angels
    class Ramiel < Angel
      attr_reader :kill_zone, :drill

      def initialize
        super
        # Umbral extremo, bloquea convencionales, no baja ni penetra facil
        @at_field.instance_variable_set(:@lowered, false)
        @kill_zone = KillZone.new
        @drill = Drill.new
      end
      
      def shape
        :geometric_fortress
      end

      # Override para ocultar el core.
      def core_observable?
        false
      end

      def receive(attack)
        if attack.is_a?(Attacks::PositronRifle)
          # Only called internally by the playbook on success
          if attack.enough_power?
            @core.instance_variable_set(:@destroyed, true)
            return :core_destroyed
          end
          return :rebounced
        end

        # 1. Close-range is lethal to the attacker
        if attack.is_a?(Attacks::ProgressiveKnife) || attack.is_a?(Attacks::BerserkChannel) || attack.is_a?(Attacks::CoreStrike)
          return :attacker_melted
        end
        
        # 2. Ranged but conventional (Pallet, N2) bounce off Max AT Field
        if attack.is_a?(Attacks::PalletRifle)
          @at_field.rebound(attack)
          return :rebounced
        end

        :rebounced
      end
    end
  end
end
