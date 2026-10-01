require "minitest/autorun"
require_relative "../lib/nerv"
require_relative "../lib/nerv/scenarios/ep14"

class TestScenarioEp14 < Minitest::Test
  def setup
    @scenario = Nerv::Scenarios::Ep14.new
  end

  def test_run_yields_aar_complete
    assert_equal :aar_complete, @scenario.run
    
    assert @scenario.events.include?(Nerv::SIEM::TABLETOP_STARTED)
    assert @scenario.events.include?(Nerv::SIEM::CATALOG_COMPLETE)
    assert @scenario.events.include?(Nerv::SIEM::KPI_CONFLICT)
    assert @scenario.events.include?(Nerv::SIEM::EVA00_ANOMALY)
  end
end
