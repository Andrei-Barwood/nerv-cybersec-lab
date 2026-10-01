# frozen_string_literal: true
require_relative "../angel"

module Nerv
  module Angels
    class Ireul < Angel
      def initialize
        super
      end

      # Ireul is a true Angel, not human sabotage
      def origin
        :unknown
      end

      def adapt_to(control)
        # Polymorphism logic, burns signatures
        true
      end
    end
  end
end
