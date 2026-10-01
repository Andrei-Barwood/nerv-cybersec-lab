# frozen_string_literal: true

module Nerv
  class PlaybookEp18 < Playbook
    def run(dormant_contaminant:, eva03:, eva01:, eva00:, eva02:, dummy_plug:, magi:, shinji:, toji:, knows:)
      
      dormant_contaminant.activate!
      siem.emit(SIEM::HITCHHIKER_ACTIVATED)

      bardiel = Bardiel.new(host_eva: eva03)
      hijack = EvaHijack.new(angel: bardiel, eva: eva03)
      hijack.hijack!

      siem.emit(SIEM::PATTERN_BLUE)
      siem.emit(SIEM::EVA03_HIJACKED)
      siem.emit(SIEM::OCCUPANT_INSIDE)

      eva00.status = :down
      siem.emit(SIEM::EVA00_DOWN)

      eva02.status = :down
      siem.emit(SIEM::EVA02_DOWN)

      # Orden de destruir, Shinji refuse
      shinji_consent = false
      siem.emit(SIEM::OPERATOR_REFUSE)

      # Override Gendo
      dummy_plug.engage!
      siem.emit(SIEM::DUMMY_PLUG_ENGAGED)
      siem.emit(SIEM::OPERATOR_INPUT_DISCARDED)

      # Destrucción
      eva03.status = :destroyed
      bardiel.kill!
      siem.emit(SIEM::TRUSTED_UNIT_DESTROYED)

      toji.trauma_load += 1.0 # Maimed
      siem.emit(SIEM::OCCUPANT_MAIMED)

      @outcome = :contained_uncontrolled
      record(:contained_uncontrolled)
    end
  end
end
