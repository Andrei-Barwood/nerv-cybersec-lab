# frozen_string_literal: true

module Nerv
  module Attacks
    class ProgressiveKnife
      def initialize(mode: :core_strike)
        @mode = mode
      end

      def sever_c2?
        @mode == :sever_c2
      end

      def core_strike?
        @mode == :core_strike
      end
    end
  end
end
