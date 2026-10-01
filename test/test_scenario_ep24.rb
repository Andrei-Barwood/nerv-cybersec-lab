require "minitest/autorun"
require_relative "../lib/nerv"
require_relative "../lib/nerv/scenarios/ep24"

class TestScenarioEp24 < Minitest::Test
  def setup
    @scenario = Nerv::Scenarios::Ep24.new
  end

  def test_run_yields_contained_controlled
    assert_equal :contained_controlled, @scenario.run
    
    assert @scenario.events.include?(Nerv::SIEM::FIFTH_CHILD_INTAKE)
    assert @scenario.events.include?(Nerv::SIEM::HUMAN_SHAPED_ANGEL)
    assert @scenario.events.include?(Nerv::SIEM::TRUST_CHANNEL_SHINJI)
    assert @scenario.events.include?(Nerv::SIEM::DOGMA_WALK)
    assert @scenario.events.include?(Nerv::SIEM::LILITH_NOT_ADAM)
    assert @scenario.events.include?(Nerv::SIEM::MERGE_ABORTED)
    assert @scenario.events.include?(Nerv::SIEM::OPERATOR_CRUSH)
    assert @scenario.events.include?(Nerv::SIEM::FRIEND_REVOKED)
    assert @scenario.events.include?(Nerv::SIEM::THIRD_IMPACT_AVERTED)
  end
end
