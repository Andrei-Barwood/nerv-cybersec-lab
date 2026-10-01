# frozen_string_literal: true

require_relative "vendor_virus"
require_relative "password_shutdown"

module Nerv
  class JetAlone
    attr_reader :nuclear_progress

    def initialize
      @nuclear_progress = 0.0
      @virus = nil
      @stopped = false
      @password_system = PasswordShutdown.new
    end

    def inject_virus!(virus)
      @virus = virus
    end

    def run!
      @nuclear_progress += 0.1 unless @stopped
      @nuclear_progress = 1.0 if @nuclear_progress > 1.0
    end

    def remote_shutdown!
      if @virus&.active?
        false
      else
        @stopped = true
        true
      end
    end

    def enter_password!(pwd)
      if @password_system.valid?(pwd)
        @stopped = true
        true
      else
        false
      end
    end
    
    def stopped?
      @stopped
    end
    
    def runaway?
      @nuclear_progress >= 1.0
    end

    # Explicitly NOT an angel
    def is_a?(klass)
      return false if klass.to_s.end_with?("Angel")
      super
    end
  end
end
