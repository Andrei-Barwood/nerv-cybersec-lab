require "minitest/autorun"
require_relative "../lib/nerv"
require_relative "../lib/nerv/scenarios/ep12"

class TestScenarioEp12 < Minitest::Test
  def setup
    @scenario = Nerv::Scenarios::Ep12.new
  end

  def test_run_yields_contained_controlled
    assert_equal :contained_controlled, @scenario.run
    
    assert @scenario.events.include?(Nerv::SIEM::ORBITAL_CONTACT)
    assert @scenario.events.include?(Nerv::SIEM::MISSILES_REBUFFED)
    assert @scenario.events.include?(Nerv::SIEM::MAGI_IMPACT_PREDICT)
    assert @scenario.events.include?(Nerv::SIEM::TRIPLE_AT_BRAKE)
    assert @scenario.events.include?(Nerv::SIEM::INTERCEPT_OK)
    assert @scenario.events.include?(Nerv::SIEM::CORE_DESTROYED)
    assert @scenario.impact_clock.impact_progress < 1.0
  end
end
