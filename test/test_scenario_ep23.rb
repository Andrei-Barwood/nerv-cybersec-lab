require "minitest/autorun"
require_relative "../lib/nerv"
require_relative "../lib/nerv/scenarios/ep23"

class TestScenarioEp23 < Minitest::Test
  def setup
    Nerv::Attacks::SpearOfLonginus.instance_variable_set(:@available, false)
    @scenario = Nerv::Scenarios::Ep23.new
  end

  def test_run_yields_contained_controlled
    assert_equal :contained_controlled, @scenario.run
    
    assert @scenario.events.include?(Nerv::SIEM::PATTERN_BLUE)
    assert @scenario.events.include?(Nerv::SIEM::HELIX_CONTACT)
    assert @scenario.events.include?(Nerv::SIEM::EVA00_FUSED)
    assert @scenario.events.include?(Nerv::SIEM::LATERAL_THREAT_EVA01)
    assert @scenario.events.include?(Nerv::SIEM::NODE_SACRIFICE)
    assert @scenario.events.include?(Nerv::SIEM::REI_III_BOOTED)
    assert @scenario.events.include?(Nerv::SIEM::IDENTITY_MISMATCH)
    assert @scenario.events.include?(Nerv::SIEM::CLONE_TANK_REVEALED)
  end
end
