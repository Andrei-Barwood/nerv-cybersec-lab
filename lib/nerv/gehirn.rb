# frozen_string_literal: true

module Nerv
  class Gehirn
    attr_reader :name, :rei_i_status

    def initialize
      @name = "Gehirn"
      @rei_i_status = :alive
    end

    def kill_rei_i!
      @rei_i_status = :killed
    end

    def rebrand!
      @name = "NERV"
    end
  end
end
