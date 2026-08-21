# frozen_string_literal: true

module Nerv
  class Operator
    attr_reader :name, :sync_rate
    attr_accessor :backup_unavailable, :hidden_agenda, :role

    def initialize(name:, sync_rate: 0.0, freeze: false,
                   backup_unavailable: false, hidden_agenda: false, role: :operator)
      @name = name
      @sync_rate = sync_rate
      @action_frozen = freeze
      @backup_unavailable = backup_unavailable
      @hidden_agenda = hidden_agenda
      @role = role
      @trauma_load = 0.0
      @hidden_agenda_progress = 0.0
    end

    attr_accessor :trauma_load, :hidden_agenda_progress

    def action_frozen?
      @action_frozen
    end

    def freeze_action!
      @action_frozen = true
      self
    end
  end

  class Eva
    SYNC_THRESHOLD = 0.5

    attr_reader :designation, :operator, :sync_rate

    def initialize(designation:, operator:, sync_rate: nil)
      @designation = designation
      @operator = operator
      @sync_rate = sync_rate.nil? ? operator.sync_rate : sync_rate
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
  end
end
