require "minitest/autorun"
require_relative "../lib/nerv"
require_relative "../lib/nerv/scenarios/ep20"

class TestScenarioEp20 < Minitest::Test
  def setup
    @scenario = Nerv::Scenarios::Ep20.new
  end

  def test_run_yields_operator_recovered_fragile
    assert_equal :operator_recovered_fragile, @scenario.run
    
    assert @scenario.events.include?(Nerv::SIEM::PLUG_EMPTY)
    assert @scenario.events.include?(Nerv::SIEM::S2_PRESENT)
    assert @scenario.events.include?(Nerv::SIEM::DWELL_INSIDE)
    assert @scenario.events.include?(Nerv::SIEM::SALVAGE_STARTED)
    assert @scenario.events.include?(Nerv::SIEM::RETURN_TO_BODY)
    assert @scenario.events.include?(Nerv::SIEM::BOUNDARIES_RESTORED)
    assert @scenario.events.include?(Nerv::SIEM::S2_STILL_IN_PROD)
    
    refute @scenario.events.include?(Nerv::SIEM::PATTERN_BLUE)
  end
end
