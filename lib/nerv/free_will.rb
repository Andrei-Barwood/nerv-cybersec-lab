# frozen_string_literal: true

module Nerv
  class FreeWill
    def self.abort!(entity)
      entity.abort_merge! if entity.respond_to?(:abort_merge!)
    end
  end
end
