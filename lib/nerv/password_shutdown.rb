# frozen_string_literal: true

module Nerv
  class PasswordShutdown
    EXPECTED = "HOPE"

    def valid?(pwd)
      pwd == EXPECTED
    end
  end
end
