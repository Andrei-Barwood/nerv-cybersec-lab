# frozen_string_literal: true

module Nerv
  class ReturnToBody
    def self.execute!(eva:, operator:)
      eva.introjected_operator = nil
      operator.role = :active
      operator.boundaries_restored = true
    end
  end
end
