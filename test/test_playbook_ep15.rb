require "minitest/autorun"
require_relative "../lib/nerv"

class TestPlaybookEp15 < Minitest::Test
  def setup
    @graph = Nerv::ShadowGraph.new
    @graph.add_edge!(:misato, :kaji, :trust)
    @graph.add_edge!(:gendo, :ritsuko, :coi)
    @graph.add_edge!(:shinji, :rei, :visit)
    @graph.add_edge!(:kaji, :shinji, :onboarding)
    
    @kaji = Nerv::Liaison.new([:nerv, :seele, :govt])
    @coi = Nerv::ConflictOfInterest.new
    @coi.record_magi_coi!
    @silence = Nerv::Silence.new
    @silence.record_missing_log!
    
    @playbook = Nerv::PlaybookEp15.new
  end

  def test_success_path
    res = @playbook.run(shadow_graph: @graph, liaison: @kaji, coi: @coi, silence: @silence)
    
    assert_equal :shadow_graph_mapped, res
    assert @playbook.siem.emitted?(Nerv::SIEM::UNDECLARED_CHANNEL)
    assert @playbook.siem.emitted?(Nerv::SIEM::COI_CONTROL_PLANE)
    assert @playbook.siem.emitted?(Nerv::SIEM::MISSING_LOG)
    assert @playbook.siem.emitted?(Nerv::SIEM::SHADOW_GRAPH_MAPPED)
  end

  def test_fails_if_dirac
    res = @playbook.run(shadow_graph: @graph, liaison: @kaji, coi: @coi, silence: @silence, is_dirac: true)
    assert_equal :shadow_graph_denied, res
  end
  
  def test_fails_if_principals_less_than_two
    kaji_loyal = Nerv::Liaison.new([:nerv])
    res = @playbook.run(shadow_graph: @graph, liaison: kaji_loyal, coi: @coi, silence: @silence)
    assert_equal :shadow_graph_denied, res
  end
end
