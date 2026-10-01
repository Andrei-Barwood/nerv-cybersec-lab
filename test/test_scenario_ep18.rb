require "minitest/autorun"
require_relative "../lib/nerv"
require_relative "../lib/nerv/scenarios/ep18"

class TestScenarioEp18 < Minitest::Test
  def setup
    @scenario = Nerv::Scenarios::Ep18.new
  end

  def test_run_yields_contained_uncontrolled
    assert_equal :contained_uncontrolled, @scenario.run
    
    assert @scenario.events.include?(Nerv::SIEM::HITCHHIKER_ACTIVATED)
    assert @scenario.events.include?(Nerv::SIEM::EVA03_HIJACKED)
    assert @scenario.events.include?(Nerv::SIEM::OPERATOR_REFUSE)
    assert @scenario.events.include?(Nerv::SIEM::DUMMY_PLUG_ENGAGED)
    assert @scenario.events.include?(Nerv::SIEM::OCCUPANT_MAIMED)
  end
end
