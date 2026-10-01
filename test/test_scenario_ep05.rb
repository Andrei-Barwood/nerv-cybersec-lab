require "minitest/autorun"
require_relative "../lib/nerv"
require_relative "../lib/nerv/scenarios/ep05"

class TestScenarioEp05 < Minitest::Test
  def setup
    @scenario = Nerv::Scenarios::Ep05.new
  end

  def test_run_yields_unresolved
    assert_equal :unresolved, @scenario.run
    
    assert @scenario.events.include?(Nerv::SIEM::GEOMETRIC_FORTRESS)
    assert @scenario.events.include?(Nerv::SIEM::EVA_MELTED)
    assert @scenario.events.include?("#{Nerv::SIEM::DRILL_PROGRESS}=0.2")
    assert @scenario.events.include?(Nerv::SIEM::YASHIMA_PROPOSED)
  end
end
