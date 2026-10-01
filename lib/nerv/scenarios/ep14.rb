# frozen_string_literal: true

module Nerv
  module Scenarios
    class Ep14
      attr_reader :seele, :catalog, :pairing_test, :playbook, :siem, :outcome

      def initialize
        @siem = SIEM.new
        @seele = Seele.new
        @catalog = PlaybookCatalog.new
        @pairing_test = PairingTest.new(operator: :shinji, unit: :eva00)
        @playbook = PlaybookEp14.new(siem: @siem)
        @outcome = nil
      end

      def run
        @outcome = @playbook.run(
          seele: @seele,
          catalog: @catalog,
          pairing_test: @pairing_test
        )
        generate_matrix_file! if @outcome == :aar_complete
        @outcome
      end
      
      def generate_matrix_file!
        File.write("docs/episodios/ep14_catalogo_playbooks.md", <<~MD)
          # Playbook Catalog (H1)
          
          | Incident ID | Method That Won | Contraindicated As Default |
          | :--- | :--- | :--- |
          #{@catalog.entries.map { |e| "| #{e[:incident_id]} | #{e[:method_that_won]} | #{e[:contraindicated_as_default]} |" }.join("\n")}
        MD
      end

      def events
        @siem.events
      end
    end
  end
end
