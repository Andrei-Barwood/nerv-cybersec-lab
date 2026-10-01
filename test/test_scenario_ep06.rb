require "minitest/autorun"
require_relative "../lib/nerv"
require_relative "../lib/nerv/scenarios/ep06"

class TestScenarioEp06 < Minitest::Test
  def setup
    @scenario = Nerv::Scenarios::Ep06.new
  end

  def test_run_yields_contained_controlled
    assert_equal :contained_controlled, @scenario.run
    
    assert @scenario.events.include?(Nerv::SIEM::NATIONAL_BLACKOUT)
    assert @scenario.events.include?(Nerv::SIEM::POSITRON_CHARGING)
    assert @scenario.events.include?(Nerv::SIEM::COUNTERFIRE_ON_NEST)
    assert @scenario.events.include?(Nerv::SIEM::SHIELD_DEGRADED)
    assert @scenario.events.include?(Nerv::SIEM::CORE_DESTROYED)
    assert @scenario.events.include?(Nerv::SIEM::THANK_YOU)
  end
end
