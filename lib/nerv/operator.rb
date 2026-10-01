# frozen_string_literal: true
require_relative "hedgehog"

module Nerv
  class Operator
    attr_reader :name
    attr_accessor :sync_rate, :backup_unavailable, :hidden_agenda, :role, :awol

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
      @awol = false
      @hedgehog = Hedgehog.new
    end

    attr_accessor :trauma_load, :hidden_agenda_progress, :hedgehog, :boundaries_restored, :psyche_broken
    attr_reader :name

    def identity_match(other)
      return 1.0 if self == other
      0.0
    end

    def action_frozen?
      @action_frozen
    end

    def freeze_action!
      @action_frozen = true
      self
    end
    
    def resign!
      @awol = true
      @hedgehog.isolate!
      @sync_rate = 0.0
    end
    
    def revoke_resignation!(forced: false)
      @awol = false
      if forced
        @hedgehog.isolate! # Or stay too_far essentially
        @sync_rate = 0.0
      else
        @hedgehog.set_habitable!
        @sync_rate = 0.5 # basic sync returns
      end
    end
  end
end
