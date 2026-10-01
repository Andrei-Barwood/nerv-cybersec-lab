# frozen_string_literal: true

module Nerv
  class Eva03Intake
    attr_reader :eva, :theater

    def initialize(eva:, theater: :matsushiro)
      @eva = eva
      @theater = theater
    end

    def skip_audit!
      @eva.status = :trusted_intake
    end
  end
end
