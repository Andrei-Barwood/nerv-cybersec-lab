# frozen_string_literal: true

module Nerv
  class PlaybookEp16 < Playbook
    attr_reader :angel, :dirac

    def run(angel:, eva:, n2_mine:, dirac:, magi:)
      @angel = angel
      @eva = eva
      @dirac = dirac

      siem.emit("#{SIEM::PATTERN_BLUE}=inverted_dirac")

      # Defensor hace Rush a la esfera
      siem.emit(SIEM::DECOY_CONTACT)
      
      @angel.at_field.invert!
      if @angel.at_field.absorbing?
        siem.emit("#{SIEM::SHADOW_BODY_RADIUS}=340")
        siem.emit(SIEM::ABSORB)
        dirac.absorb!(eva)
        siem.emit(SIEM::OCCUPANT_INSIDE)
        
        siem.emit(SIEM::CLOCK_OUTSIDE)
        siem.emit(SIEM::CLOCK_INSIDE)
      end

      # MAGI vota N2
      n2_vote = magi.vote_on_n2!
      if n2_vote
        siem.emit(SIEM::N2_ARMED_OCCUPIED)
      end

      # Decision del humano
      if n2_mine.detonate!(occupant_inside: dirac.occupant?)
        siem.emit(SIEM::OPERATOR_KILLED)
        @outcome = :unresolved
        return record(:unresolved)
      end

      # Opaque extract salva el dia
      eva.opaque_extract!
      if eva.opaque_agency?
        angel.kill!
        siem.emit(SIEM::OPAQUE_EXTRACT)
        @outcome = :contained_uncontrolled
        return record(:contained_uncontrolled)
      end

      @outcome = :unresolved
      record(:unresolved)
    end
  end
end
