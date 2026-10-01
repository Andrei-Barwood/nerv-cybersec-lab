# frozen_string_literal: true

require_relative "../angel"

module Nerv
  class Tabris < Angel
    def initialize
      super
      @name = "Tabris"
      @alive = true
      @target_confusion = false
      @aborted = false
    end

    def looks_human?
      true
    end

    def dogma_walk!
      self
    end

    def abort_merge!
      @aborted = true
    end

    def aborted?
      @aborted
    end

    def crushed_by!(operator)
      raise "Operator input required" unless operator
      @alive = false
    end

    def alive?
      @alive
    end
  end
end
