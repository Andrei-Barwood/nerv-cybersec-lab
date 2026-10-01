# frozen_string_literal: true

module Nerv
  class Instrumentality
    def self.start!
      @in_progress = true
      @complete = false
    end

    def self.in_progress?
      @in_progress
    end

    def self.complete?
      @complete
    end

    def self.complete_merge!
      @complete = true
    end

    def self.reject_merge!
      @rejected = true
      @in_progress = false
    end

    def self.rejected?
      @rejected
    end

    def self.interrogate!
      true
    end
    
    def self.reset!
      @in_progress = false
      @complete = false
      @rejected = false
    end
  end
end
