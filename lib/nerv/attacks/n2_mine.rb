# frozen_string_literal: true

module Nerv
  module Attacks
    class N2Mine
      def detonate!(occupant_inside: false)
        if occupant_inside
          # The occupant is killed
          return true
        end
        true
      end
    end
  end
end
