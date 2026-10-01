require "minitest/autorun"
require_relative "../lib/nerv"
require_relative "../lib/nerv/scenarios/ep15"

class TestScenarioEp15 < Minitest::Test
  def setup
    @scenario = Nerv::Scenarios::Ep15.new
  end

  def test_run_yields_mapped
    assert_equal :shadow_graph_mapped, @scenario.run
    
    assert @scenario.events.include?(Nerv::SIEM::UNDECLARED_CHANNEL)
    assert @scenario.events.include?(Nerv::SIEM::COI_CONTROL_PLANE)
    assert @scenario.events.include?(Nerv::SIEM::MISSING_LOG)
    assert @scenario.events.include?(Nerv::SIEM::SHADOW_GRAPH_MAPPED)
  end
end
