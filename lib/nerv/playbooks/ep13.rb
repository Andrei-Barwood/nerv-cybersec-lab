# frozen_string_literal: true

module Nerv
  class PlaybookEp13 < Playbook
    def run(angel:, magi:, magi_infection:, forced_evolution:, eva_deployed: false)
      siem.emit(SIEM::PATTERN_BLUE_MICRO)
      siem.emit(SIEM::PRIBNOW_CONTAMINANT)

      # Attempt to use signatures
      angel.adapt_to(:ozone)
      siem.emit(SIEM::SIGNATURE_FAILED)
      siem.emit(SIEM::IREUL_EVOLVED)

      # Magi Infection
      magi_infection.infect_brain!(:melchior)
      siem.emit("#{SIEM::MAGI_BRAIN_INFECTED}=melchior")

      magi_infection.infect_brain!(:balthasar)
      siem.emit("#{SIEM::MAGI_BRAIN_INFECTED}=balthasar")
      
      owner = magi_infection.majority_owner
      siem.emit("#{SIEM::MAJORITY_OWNER}=#{owner}")

      if magi_infection.self_destruct_armed?
        siem.emit(SIEM::SELF_DESTRUCT_ARMED)
      end

      # Ensure Evas are not used
      if eva_deployed
        siem.emit(SIEM::EVA_SORTIE_MISAPPLIED)
        @outcome = :unresolved
        return record(:unresolved)
      end

      # Attempt Reverse-Hack
      if forced_evolution.reverse_hack_via_casper!
        siem.emit(SIEM::CASPER_REVERSE_HACK)
        if forced_evolution.dead_end?
          siem.emit(SIEM::EVOLUTION_DEAD_END)
          siem.emit("#{SIEM::MAJORITY_OWNER}=nerv")
          @outcome = :contained_controlled
          return record(:contained_controlled)
        end
      end

      @outcome = :unresolved
      record(:unresolved)
    end
  end
end
