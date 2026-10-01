# frozen_string_literal: true

module Nerv
  class FourthChild
    attr_reader :operator

    def initialize(operator)
      @operator = operator
    end

    def select!
      @operator.role = :fourth_child
    end
    
    def selected?
      @operator.role == :fourth_child
    end
  end
end
