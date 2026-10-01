# frozen_string_literal: true

module Nerv
  # Three votes. Majority 2 of 3. Units are distinct so Ireul (ep 13)
  # can compromise them later without rewriting this class.
  class Magi
    NAMES = %i[melchior balthasar casper].freeze

    class Unit
      attr_reader :name
      attr_accessor :vote, :compromised

      def initialize(name)
        @name = name
        @vote = nil
        @compromised = false
      end

      def compromised?
        @compromised
      end
    end

    attr_reader :gendo_override_registered
    attr_accessor :builder

    def initialize
      @units = {}
      NAMES.each { |name| @units[name] = Unit.new(name) }
      @motions = {}
      @gendo_override_registered = false
      @builder = nil
    end

    def register_gendo_override!
      @gendo_override_registered = true
    end

    def unit(name)
      @units.fetch(name)
    end

    def units
      @units.values
    end

    def vote!(name, value, topic = :deploy)
      unit(name).vote = value
      @motions[topic] ||= {}
      @motions[topic][name] = value
      self
    end

    # True only if an explicit motion on +topic+ reached 2 of 3 yes.
    # Deploy majority MUST NOT count as berserk authorization.
    def authorized?(topic)
      motion = @motions[topic]
      return false if motion.nil? || motion.empty?

      motion.values.count { |v| v == true } >= 2
    end

    # Two of three votes equal to +value+ (default: true).
    # Compromised units still vote — that is the Ireul hook.
    def majority?(value = true)
      units.count { |u| u.vote == value } >= 2
    end

    def infected?
      false
    end

    def compute_impact
      true
    end
    
    def vote_on_n2!
      # En el ep 16, MAGI vota a favor de destruir la anomalia
      true
    end
  end
end
