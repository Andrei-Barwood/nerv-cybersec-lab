# frozen_string_literal: true

module Nerv
  class S2Organ
    attr_reader :ingested

    def initialize
      @ingested = false
    end

    def ingest!
      @ingested = true
    end
  end
end
