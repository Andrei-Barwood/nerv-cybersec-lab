# frozen_string_literal: true

module Nerv
  class PlaybookEp05 < Playbook
    def run(angel:, eva:, magi:, sortie: true)
      siem.emit(SIEM::PATTERN_BLUE)
      siem.emit(SIEM::GEOMETRIC_FORTRESS)
      siem.emit(SIEM::KILL_ZONE_ACTIVE)
      siem.emit(SIEM::OPERATOR_OPAQUE)
      
      if !angel.core_observable?
        siem.emit(SIEM::CORE_NOT_OBSERVABLE)
      end
      
      if sortie
        # Sortie into Kill zone
        siem.emit(SIEM::PARTICLE_BEAM)
        
        attack = Attacks::ProgressiveKnife.new # representing close range logic
        res = angel.receive(attack)
        
        if res == :attacker_melted
          siem.emit(SIEM::EVA_MELTED)
          siem.emit(SIEM::MISSION_ABORTED)
          eva.operator.freeze_action! # Incapacitated
        end
      end
      
      siem.emit(SIEM::CLOSE_RANGE_CONTRAINDICATED)

      unless angel.drill.active?
        angel.drill.start!
        siem.emit(SIEM::DRILL_STARTED)
      end
      
      angel.drill.advance!(0.1)
      siem.emit("#{SIEM::DRILL_PROGRESS}=#{angel.drill.progress}")
      
      siem.emit(SIEM::STANDOFF_CAPABILITY_MISSING)
      siem.emit(SIEM::YASHIMA_PROPOSED)
      
      @outcome = :unresolved
      record(:unresolved)
    end
  end
end
