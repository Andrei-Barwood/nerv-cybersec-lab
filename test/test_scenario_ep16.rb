require "minitest/autorun"
require_relative "../lib/nerv"
require_relative "../lib/nerv/scenarios/ep16"

class TestScenarioEp16 < Minitest::Test
  def setup
    @scenario = Nerv::Scenarios::Ep16.new
  end

  def test_run_yields_contained_uncontrolled
    assert_equal :contained_uncontrolled, @scenario.run
    
    assert @scenario.events.include?(Nerv::SIEM::DECOY_CONTACT)
    assert @scenario.events.include?(Nerv::SIEM::ABSORB)
    assert @scenario.events.include?(Nerv::SIEM::OCCUPANT_INSIDE)
    assert @scenario.events.include?(Nerv::SIEM::OPAQUE_EXTRACT)
  end
end
