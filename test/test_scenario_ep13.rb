require "minitest/autorun"
require_relative "../lib/nerv"
require_relative "../lib/nerv/scenarios/ep13"

class TestScenarioEp13 < Minitest::Test
  def setup
    @scenario = Nerv::Scenarios::Ep13.new
  end

  def test_run_yields_contained_controlled
    assert_equal :contained_controlled, @scenario.run
    
    assert @scenario.events.include?(Nerv::SIEM::PATTERN_BLUE_MICRO)
    assert @scenario.events.include?(Nerv::SIEM::SIGNATURE_FAILED)
    assert @scenario.events.include?(Nerv::SIEM::CASPER_REVERSE_HACK)
    assert @scenario.events.include?(Nerv::SIEM::EVOLUTION_DEAD_END)
    refute @scenario.events.include?(Nerv::SIEM::EVA_SORTIE_MISAPPLIED)
  end
end
