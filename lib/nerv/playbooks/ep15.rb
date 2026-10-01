# frozen_string_literal: true

module Nerv
  class PlaybookEp15 < Playbook
    attr_reader :angel

    def run(shadow_graph:, liaison:, coi:, silence:, is_dirac: false)
      if is_dirac
        @outcome = :shadow_graph_denied
        return record(:shadow_graph_denied)
      end
      
      if liaison.is_a_angel?
        siem.emit(SIEM::FALSE_PATTERN_BLUE)
        @outcome = :shadow_graph_denied
        return record(:shadow_graph_denied)
      end

      # 1. Map Multi-principal
      siem.emit("#{SIEM::KAJI_PRINCIPAL_COUNT}=#{liaison.principals.size}")
      if liaison.principals.size < 2
        @outcome = :shadow_graph_denied
        return record(:shadow_graph_denied)
      end

      # 2. Map Edges
      shadow_graph.edges.each do |e|
        siem.emit(SIEM::SHADOW_EDGE_DETECTED)
      end
      siem.emit(SIEM::UNDECLARED_CHANNEL) if shadow_graph.edges.any?

      # 3. Map COI
      if coi.recorded
        siem.emit(SIEM::COI_CONTROL_PLANE)
      end
      
      # 4. Map Silence
      if silence.missing_logs > 0
        siem.emit(SIEM::MISSING_LOG)
      end

      siem.emit(SIEM::UNAUTH_TRUST)
      siem.emit(SIEM::OFFBAND_ONBOARDING)
      
      if shadow_graph.contains_canonical_edges? && silence.missing_logs > 0 && coi.recorded
        siem.emit(SIEM::SHADOW_GRAPH_MAPPED)
        @outcome = :shadow_graph_mapped
        return record(:shadow_graph_mapped)
      end

      @outcome = :shadow_graph_denied
      record(:shadow_graph_denied)
    end
  end
end
