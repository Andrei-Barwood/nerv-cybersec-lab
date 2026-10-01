# frozen_string_literal: true

module Nerv
  class Eva
    SYNC_THRESHOLD = 0.5

    attr_reader :designation, :operator, :sync_rate
    attr_accessor :operator_input_discarded, :status, :armor_stripped, :s2_engine, :introjected_operator, :maternal_presence_origin

    def initialize(designation:, operator:, sync_rate: nil)
      @designation = designation
      @operator = operator
      @sync_rate = sync_rate || (operator ? operator.sync_rate : 0.0)
      @deployed = false
      @berserk = false
      @operator_input_discarded = false
      @opaque_agency = false
      @operator_non_consent = false
      @pain_sync = 0.0
      @critical = false
    end

    def deploy!
      @deployed = true
      self
    end

    def destroy_node!
      @deployed = false
      @status = :destroyed
    end

    def deployed?
      @deployed
    end

    def action_frozen?
      operator.action_frozen?
    end

    def core_strike_possible?
      deployed? && !action_frozen? && sync_rate >= SYNC_THRESHOLD
    end

    # Returns :freeze if the operator does not send the action,
    # :blocked if sync is too low, otherwise the angel's receive result.
    def attempt_core_strike(angel)
      return :discarded if @operator_input_discarded
      return :freeze if action_frozen?
      return :blocked unless core_strike_possible?

      angel.receive(Attacks::CoreStrike.new)
    end

    def attempt_progressive_knife(angel, mode: :core_strike)
      return :discarded if @operator_input_discarded
      return :freeze if action_frozen?
      return :blocked unless core_strike_possible?

      angel.receive(Attacks::ProgressiveKnife.new(mode: mode))
    end
    
    def opaque_extract!
      @opaque_agency = true
    end
    
    def opaque_agency?
      @opaque_agency
    end
  end
end
