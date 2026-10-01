# frozen_string_literal: true
require_relative "../angel"
require_relative "../attacks/n2_mine"

module Nerv
  module Angels
    class Israfel < Angel
      attr_reader :cores_alive

      def initialize
        super
        @cores_alive = 1
        @stun_window = false
      end

      def split!
        @cores_alive = 2
        @stun_window = false
      end

      def stun_window?
        @stun_window
      end

      def rejoin!
        @cores_alive = 2
      end

      def receive(attack)
        # N2 Mine stuns instead of rebouncing
        if attack.is_a?(Attacks::N2Mine)
          @stun_window = true
          return :stunned
        end

        # A standard attack on an unsplit Israfel will just trigger split!
        if @cores_alive == 1 && attack.is_a?(Attacks::CoreStrike)
          split!
          return :split
        end

        # When split, a single core strike will just destroy one and trigger rejoin
        if @cores_alive == 2 && attack.is_a?(Attacks::CoreStrike)
          # Instead of dying, one dies and the other rejoins it immediately
          @cores_alive = 1
          rejoin!
          return :rejoin
        end

        :rebounced
      end
      
      def receive_simultaneous_strikes(strikes_count, time_delta, epsilon)
        if strikes_count == 2 && time_delta <= epsilon
          @cores_alive = 0
          @core.instance_variable_set(:@destroyed, true)
          :core_destroyed
        else
          rejoin!
          :rejoin
        end
      end
    end
  end
end
