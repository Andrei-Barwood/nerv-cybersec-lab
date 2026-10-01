require "minitest/autorun"
require_relative "../lib/nerv"
require_relative "../lib/nerv/scenarios/ep17"

class TestScenarioEp17 < Minitest::Test
  def setup
    @scenario = Nerv::Scenarios::Ep17.new
  end

  def test_run_yields_trusted_intake_recorded
    assert_equal :trusted_intake_recorded, @scenario.run
    
    assert @scenario.events.include?(Nerv::SIEM::EVA03_INTAKE)
    assert @scenario.events.include?(Nerv::SIEM::CLOUD_IOC_IGNORED)
    assert @scenario.events.include?(Nerv::SIEM::FOURTH_CHILD_SELECTED)
    assert @scenario.events.include?(Nerv::SIEM::OCCUPANT_UNKNOWN_TO_PEERS)
    refute @scenario.events.include?(Nerv::SIEM::FALSE_PATTERN_BLUE)
  end
end
