# frozen_string_literal: true

require_relative "../angel"

module Nerv
  class Leliel < Angel
    attr_reader :real_body
    
    def initialize
      super
      @real_body = :shadow
    end

    def decoy?
      true
    end
  end
end
