# frozen_string_literal: true

module Nerv
  class Introjection
    def self.introject!(eva:, operator:)
      eva.introjected_operator = operator
      operator.role = :introjected
    end
  end
end
