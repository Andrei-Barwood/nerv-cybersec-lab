# frozen_string_literal: true

module Nerv
  module Angels
    class Shamshel < Angel
      attr_reader :whip_left, :whip_right

      def initialize
        super()
        @whip_left = C2Channel.new(id: :left)
        @whip_right = C2Channel.new(id: :right)
        @deflated = false
      end

      def alive?
        whips_active? || core.intact?
      end

      def whips_active?
        @whip_left.active? || @whip_right.active?
      end

      def deflate!
        @deflated = true
        @whip_left.sever!
        @whip_right.sever!
      end

      def deflated?
        @deflated
      end

      def receive(attack)
        case attack
        when Attacks::ConventionalAttack, Attacks::N2Mine, Attacks::PalletRifle
          # no-op
        when Attacks::ProgressiveKnife
          if attack.sever_c2?
            @whip_left.sever!
            @whip_right.sever!
          elsif attack.core_strike?
            if whips_active?
              return :blocked_by_c2
            else
              core.destroy!
              deflate!
              return :core_destroyed
            end
          end
        when Attacks::BerserkChannel
          core.destroy!
          deflate!
          return :core_destroyed_by_berserk
        when Attacks::CoreStrike
          if whips_active?
            return :blocked_by_c2
          else
            core.destroy!
            deflate!
            return :core_destroyed
          end
        else
          super
        end
      end
    end
  end
end
