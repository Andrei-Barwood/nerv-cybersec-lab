# frozen_string_literal: true

module Nerv
  class Liaison
    attr_reader :principals, :status

    def initialize(principals)
      @principals = principals
      @status = :alive
    end

    def terminate!
      @status = :terminated
      @principals.clear
    end

    def is_a_angel?
      false
    end
  end
end
