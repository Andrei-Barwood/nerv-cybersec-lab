# frozen_string_literal: true

module Nerv
  class PlaybookEp22 < Playbook
    def run(arael:, asuka:, spear:, eva00_operator:)
      arael.orbit!
      siem.emit(SIEM::PATTERN_BLUE)
      siem.emit(SIEM::ORBITAL_STAY)
      
      siem.emit(SIEM::OPERATOR_AS_SURFACE)
      MentalBeam.execute!(operator: asuka)
      siem.emit(SIEM::MENTAL_BEAM)
      siem.emit(SIEM::PSYCHE_BROKEN) if asuka.psyche_broken
      
      # Dummy/close range
      siem.emit(SIEM::CLOSE_RANGE_IMPOSSIBLE)
      
      # Fire longinus
      attack = spear.fire!
      siem.emit(SIEM::LONGINUS_FIRED)
      res = arael.receive(attack)
      
      if res == :core_destroyed
        siem.emit(SIEM::CORE_DESTROYED)
      end
      
      if spear.lost
        siem.emit(SIEM::SPEAR_LOST)
        siem.emit(SIEM::SEELE_ARTIFACT_LOST)
      end

      if !arael.alive? && spear.lost && asuka.psyche_broken && eva00_operator
        @outcome = :contained_controlled
        record(:contained_controlled)
      else
        @outcome = :unresolved
        record(:unresolved)
      end
    end
  end
end
