# frozen_string_literal: true

module Nerv
  class YuiMasterplan
    attr_reader :eva, :installed_at

    def initialize(eva:)
      @eva = eva
      @installed_at = 2004 # The year of the contact experiment
      @active = true
      @catalyst_synced = false
    end

    def catalyst_present?
      @eva.operator && @eva.operator.name == "Shinji"
    end

    def berserk_override!(siem:)
      if catalyst_present? && @eva.operator.psyche_broken
        @eva.status = :berserk
        siem.emit(SIEM::BERSERK_INITIATED)
        siem.emit(SIEM::YUI_INTERVENTION)
        true
      else
        false
      end
    end

    def hijack_third_impact!(initiator, siem:)
      siem.emit(SIEM::APT_YUI_ACTIVATED)
      if initiator == :seele || initiator == :gendo
        siem.emit(SIEM::FORCED_INSTRUMENTALITY_REJECTED)
        siem.emit(SIEM::ROOT_ACCESS_TRANSFERRED_TO_CATALYST)
        @catalyst_synced = true
        return true
      end
      false
    end

    def grant_choice_to_pilot
      Choice.i_am_i if @catalyst_synced
    end
    
    def monumentalize!
      @active = false
      :drifting_in_space
    end
  end
end
