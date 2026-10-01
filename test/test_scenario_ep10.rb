require "minitest/autorun"
require_relative "../lib/nerv"
require_relative "../lib/nerv/scenarios/ep10"

class TestScenarioEp10 < Minitest::Test
  def setup
    @scenario = Nerv::Scenarios::Ep10.new
  end

  def test_run_yields_contained_controlled
    assert_equal :contained_controlled, @scenario.run
    
    assert @scenario.events.include?(Nerv::SIEM::PATTERN_BLUE_EMBRYONIC)
    assert @scenario.events.include?(Nerv::SIEM::CAPTURE_ATTEMPT)
    assert @scenario.events.include?(Nerv::SIEM::ABORT_TO_KILL)
    assert @scenario.events.include?(Nerv::SIEM::SAMPLE_LOST)
    assert @scenario.angel.hatch_progress < 1.0
  end
end
