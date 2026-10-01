# frozen_string_literal: true

module Nerv
  module Attacks
    class SpearOfLonginus
      @available = true

      class << self
        def available?
          @available
        end

        def lose!
          @available = false
        end
      end

      attr_reader :lost
      
      def initialize
        @lost = false
      end
      
      def fire!
        @lost = true
        self.class.lose!
        self
      end
    end
  end
end
