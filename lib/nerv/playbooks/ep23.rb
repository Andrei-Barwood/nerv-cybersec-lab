# frozen_string_literal: true

module Nerv
  class PlaybookEp23 < Playbook
    def run(armisael:, eva00:, eva01:, clone_tank:)
      siem.emit(SIEM::PATTERN_BLUE)
      siem.emit(SIEM::HELIX_CONTACT)
      
      armisael.fuse!(eva00)
      siem.emit(SIEM::EVA00_FUSED)
      
      armisael.lateral_to(eva01)
      siem.emit(SIEM::LATERAL_THREAT_EVA01)
      
      # Dummy / Longinus / etc fail here.
      
      # Node sacrifice
      if NodeSacrifice.execute!(eva00, consent: true)
        armisael.node_sacrificed!
        siem.emit(SIEM::NODE_SACRIFICE)
        siem.emit(SIEM::EVA00_DESTROYED)
        siem.emit(SIEM::ARMISAEL_DEAD_WITH_NODE)
        
        rei_iii = clone_tank.boot_next!
        siem.emit(SIEM::REI_III_BOOTED)
        
        # Identity mismatch
        siem.emit(SIEM::IDENTITY_MISMATCH)
        
        clone_tank.reveal!
        siem.emit(SIEM::CLONE_TANK_REVEALED)
        
        @outcome = :contained_controlled
        record(:contained_controlled)
      else
        @outcome = :unresolved
        record(:unresolved)
      end
    end
  end
end
