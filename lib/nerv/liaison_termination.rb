# frozen_string_literal: true

module Nerv
  class LiaisonTermination
    def self.execute!(liaison:)
      liaison.terminate!
    end
  end
end
