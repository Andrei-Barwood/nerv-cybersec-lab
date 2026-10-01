# frozen_string_literal: true

module Nerv
  class PlaybookEp24 < Playbook
    def run(tabris:, shinji:)
      # Intake
      badge = FifthChild.badge
      siem.emit(SIEM::FIFTH_CHILD_INTAKE)
      
      if tabris.looks_human?
        siem.emit(SIEM::HUMAN_SHAPED_ANGEL)
      end
      
      siem.emit(SIEM::TRUST_CHANNEL_SHINJI)
      
      tabris.dogma_walk!
      siem.emit(SIEM::DOGMA_WALK)
      
      # Target confusion (Lilith, not Adam)
      siem.emit(SIEM::LILITH_NOT_ADAM)
      
      # Free Will abort
      FreeWill.abort!(tabris)
      if tabris.aborted?
        siem.emit(SIEM::MERGE_ABORTED)
      else
        @outcome = :unresolved
        record(:unresolved)
        return @outcome
      end
      
      # Operator crush
      siem.emit(SIEM::OPERATOR_CRUSH)
      tabris.crushed_by!(shinji)
      siem.emit(SIEM::FRIEND_REVOKED)
      
      siem.emit(SIEM::THIRD_IMPACT_AVERTED)
      
      @outcome = :contained_controlled
      record(:contained_controlled)
    end
  end
end
