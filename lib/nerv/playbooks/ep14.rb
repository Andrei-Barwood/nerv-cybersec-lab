# frozen_string_literal: true

module Nerv
  class PlaybookEp14 < Playbook
    attr_reader :angel

    def run(seele:, catalog:, pairing_test:, rewrite_attempt: false, false_pattern_blue: false)
      siem.emit(SIEM::TABLETOP_STARTED)
      siem.emit(SIEM::SEELE_REVIEW)

      if false_pattern_blue
        siem.emit(SIEM::FALSE_PATTERN_BLUE)
        @outcome = :aar_failed
        return record(:aar_failed)
      end

      if rewrite_attempt
        siem.emit(SIEM::REWRITE_ATTEMPT)
        @outcome = :aar_failed
        return record(:aar_failed)
      end

      catalog.load_incidents
      catalog.entries.each do |entry|
        siem.emit("#{SIEM::CATALOG_ENTRY}=#{entry[:incident_id]}")
      end

      if catalog.complete?
        siem.emit(SIEM::CATALOG_COMPLETE)
      end

      if catalog.last_playbook_as_default?
        @outcome = :aar_failed
        return record(:aar_failed)
      end

      if seele.kpi != :containment
        siem.emit(SIEM::KPI_CONFLICT)
      else
        @outcome = :aar_failed
        return record(:aar_failed)
      end

      siem.emit(SIEM::PAIRING_TEST)
      pairing_test.run_test!
      
      if pairing_test.anomaly_recorded
        siem.emit(SIEM::EVA00_ANOMALY)
      else
        # We expect this specific mismatch test in ep14
        @outcome = :aar_failed
        return record(:aar_failed)
      end

      siem.emit(SIEM::AAR_COMPLETE)
      @outcome = :aar_complete
      record(:aar_complete)
    end
  end
end
