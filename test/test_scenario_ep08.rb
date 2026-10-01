require "minitest/autorun"
require_relative "../lib/nerv"
require_relative "../lib/nerv/scenarios/ep08"

class TestScenarioEp08 < Minitest::Test
  def setup
    @scenario = Nerv::Scenarios::Ep08.new
  end

  def test_run_yields_contained_controlled
    assert_equal :contained_controlled, @scenario.run
    
    assert @scenario.events.include?(Nerv::SIEM::CONVOY_UNDER_ATTACK)
    assert @scenario.events.include?(Nerv::SIEM::DUAL_PLUG)
    assert @scenario.events.include?(Nerv::SIEM::JAW_OPEN)
    assert @scenario.events.include?(Nerv::SIEM::FLEET_BATTERY_FIRED)
    assert @scenario.events.include?(Nerv::SIEM::CORE_DESTROYED)
  end
end
