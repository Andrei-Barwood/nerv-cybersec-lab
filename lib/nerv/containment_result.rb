# frozen_string_literal: true

module Nerv
  class ContainmentResult
    attr_reader :status, :operator_non_consent, :angel_dead

    def initialize(status:, operator_non_consent:, angel_dead:)
      @status = status
      @operator_non_consent = operator_non_consent
      @angel_dead = angel_dead
    end

    # A "bravo" does not retcon containment.
    def record_congratulations!
      self
    end
  end
end
