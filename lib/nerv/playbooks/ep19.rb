# frozen_string_literal: true

module Nerv
  class PlaybookEp19 < Playbook
    def run(zeruel:, eva01:, eva02:, eva00:, dummy_plug:, s2_organ:, shinji:, n2_mine:)
      
      siem.emit(SIEM::PATTERN_BLUE)
      siem.emit(SIEM::OVERWHELM) if zeruel.overwhelm?

      # Asuka falla
      eva02.armor_stripped = true
      eva02.status = :down
      siem.emit(SIEM::ARMOR_STRIPPED)

      # Rei falla suicida
      n2_mine.detonate!(occupant_inside: false)
      eva00.status = :down
      siem.emit(SIEM::N2_SUICIDE_FAILED)

      # Dummy falla
      dummy_plug.engage!(target: zeruel)
      siem.emit(SIEM::DUMMY_FAILED)

      # Shinji regresa tarde
      siem.emit(SIEM::OPERATOR_LATE_SORTIE)

      # Beast mode y come s2
      eva01.berserk!
      siem.emit(SIEM::EVA_BERSERK)
      
      zeruel.kill!

      s2_organ.ingest!
      eva01.s2_engine = s2_organ
      siem.emit(SIEM::S2_INGESTED)

      # Introyección
      Introjection.introject!(eva: eva01, operator: shinji)
      siem.emit(SIEM::OPERATOR_INTROJECTED)
      siem.emit(SIEM::PLUG_EMPTY)

      @outcome = :contained_uncontrolled
      record(:contained_uncontrolled)
    end
  end
end
