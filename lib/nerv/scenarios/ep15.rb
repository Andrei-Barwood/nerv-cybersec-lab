# frozen_string_literal: true

module Nerv
  module Scenarios
    class Ep15
      attr_reader :graph, :kaji, :coi, :silence, :playbook, :siem, :outcome

      def initialize
        @siem = SIEM.new
        @graph = ShadowGraph.new
        @graph.add_edge!(:misato, :kaji, :trust)
        @graph.add_edge!(:gendo, :ritsuko, :coi)
        @graph.add_edge!(:shinji, :rei, :visit)
        @graph.add_edge!(:kaji, :shinji, :onboarding)
        
        @kaji = Liaison.new([:nerv, :seele, :govt])
        @coi = ConflictOfInterest.new
        @coi.record_magi_coi!
        @silence = Silence.new
        @silence.record_missing_log!
        
        @playbook = PlaybookEp15.new(siem: @siem)
        @outcome = nil
      end

      def run
        @outcome = @playbook.run(
          shadow_graph: @graph,
          liaison: @kaji,
          coi: @coi,
          silence: @silence
        )
        generate_graph_file! if @outcome == :shadow_graph_mapped
        @outcome
      end
      
      def generate_graph_file!
        File.write("docs/episodios/ep15_shadow_graph.md", <<~MD)
          # Shadow Graph (INC-LIES-001)
          
          | Source | Target | Type |
          | :--- | :--- | :--- |
          #{@graph.edges.map { |e| "| #{e[:source]} | #{e[:target]} | #{e[:type]} |" }.join("\n")}
        MD
      end

      def events
        @siem.events
      end
    end
  end
end
