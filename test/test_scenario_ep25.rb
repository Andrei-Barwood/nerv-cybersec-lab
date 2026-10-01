require "minitest/autorun"
require_relative "../lib/nerv"
require_relative "../lib/nerv/scenarios/ep25"

class TestScenarioEp25 < Minitest::Test
  def setup
    @scenario = Nerv::Scenarios::Ep25.new
  end

  def test_run_yields_instrumentality_in_progress
    assert_equal :instrumentality_in_progress, @scenario.run
    
    assert @scenario.events.include?(Nerv::SIEM::NO_PATTERN_BLUE)
    assert @scenario.events.include?(Nerv::SIEM::INSTRUMENTALITY_STARTED)
    assert @scenario.events.include?(Nerv::SIEM::AT_FIELD_SELF_COLLAPSING)
    assert @scenario.events.include?(Nerv::SIEM::PRIVACY_ZERO)
    assert @scenario.events.include?(Nerv::SIEM::IDENTITY_INTERROGATION)
    assert @scenario.events.include?(Nerv::SIEM::DO_YOU_LOVE_ME)
    assert @scenario.events.include?(Nerv::SIEM::INSTRUMENTALITY_IN_PROGRESS)
  end
end
