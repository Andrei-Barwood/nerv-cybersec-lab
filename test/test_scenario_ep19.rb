require "minitest/autorun"
require_relative "../lib/nerv"
require_relative "../lib/nerv/scenarios/ep19"

class TestScenarioEp19 < Minitest::Test
  def setup
    @scenario = Nerv::Scenarios::Ep19.new
  end

  def test_run_yields_contained_uncontrolled
    assert_equal :contained_uncontrolled, @scenario.run
    
    assert @scenario.events.include?(Nerv::SIEM::OVERWHELM)
    assert @scenario.events.include?(Nerv::SIEM::ARMOR_STRIPPED)
    assert @scenario.events.include?(Nerv::SIEM::N2_SUICIDE_FAILED)
    assert @scenario.events.include?(Nerv::SIEM::DUMMY_FAILED)
    assert @scenario.events.include?(Nerv::SIEM::S2_INGESTED)
    assert @scenario.events.include?(Nerv::SIEM::OPERATOR_INTROJECTED)
    assert @scenario.events.include?(Nerv::SIEM::PLUG_EMPTY)
  end
end
