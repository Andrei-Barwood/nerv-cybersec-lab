require "minitest/autorun"
require_relative "../lib/nerv"
require_relative "../lib/nerv/scenarios/ep04"

class TestScenarioEp04 < Minitest::Test
  def setup
    @scenario = Nerv::Scenarios::Ep04.new
  end

  def test_run_yields_staffing_restored_fragile
    assert_equal :staffing_restored_fragile, @scenario.run
    
    assert @scenario.events.include?(Nerv::SIEM::OPERATOR_AWOL)
    assert @scenario.events.include?(Nerv::SIEM::IM_HOME)
    assert @scenario.events.include?(Nerv::SIEM::STAFFING_FRAGILE)
    
    refute @scenario.events.include?(Nerv::SIEM::PATTERN_BLUE)
  end
end
