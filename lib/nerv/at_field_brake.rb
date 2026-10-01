# frozen_string_literal: true

module Nerv
  class AtFieldBrake
    def initialize(evas_count:)
      @evas_count = evas_count
    end

    def intercept_ok?
      @evas_count >= 3
    end
  end

  module Attacks
    class InFlightCoreKill
      # A specific type of attack meant to run during the AT Field brake window
    end
  end
end
