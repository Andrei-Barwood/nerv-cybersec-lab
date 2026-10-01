# frozen_string_literal: true

module Nerv
  class PlaybookCatalog
    attr_reader :entries

    INCIDENT_IDS = %w[
      INC-SACHIEL-001
      INC-SHAMSHEL-001
      INC-HEDGEHOG-001
      INC-RAMIEL-001
      INC-JETALONE-001
      INC-GAGHIEL-001
      INC-ISRAFEL-001
      INC-SANDALPHON-001
      INC-MATARAEL-001
      INC-SAHAQUIEL-001
      INC-IREUL-001
    ].freeze

    def initialize
      @entries = []
    end

    def load_incidents
      INCIDENT_IDS.each do |id|
        @entries << {
          incident_id: id,
          method_that_won: :historic_method,
          contraindicated_as_default: true
        }
      end
    end

    def complete?
      @entries.map { |e| e[:incident_id] }.sort == INCIDENT_IDS.sort
    end
    
    def last_playbook_as_default?
      # Catalog strictly contraindicates using the last playbook as default
      @entries.any? { |e| e[:contraindicated_as_default] == false }
    end
  end
end
