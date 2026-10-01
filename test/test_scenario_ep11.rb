require "minitest/autorun"
require_relative "../lib/nerv"
require_relative "../lib/nerv/scenarios/ep11"

class TestScenarioEp11 < Minitest::Test
  def setup
    @scenario = Nerv::Scenarios::Ep11.new
  end

  def test_run_yields_contained_controlled
    assert_equal :contained_controlled, @scenario.run
    
    assert @scenario.events.include?(Nerv::SIEM::HQ_POWER_LOST)
    assert @scenario.events.include?(Nerv::SIEM::ANALOG_LAUNCH)
    assert @scenario.events.include?(Nerv::SIEM::COMBINED_SORTIE)
    assert @scenario.events.include?(Nerv::SIEM::CORE_DESTROYED)
    assert @scenario.acid.progress < 1.0
  end
end
