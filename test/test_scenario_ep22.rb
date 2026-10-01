require "minitest/autorun"
require_relative "../lib/nerv"
require_relative "../lib/nerv/scenarios/ep22"

class TestScenarioEp22 < Minitest::Test
  def setup
    Nerv::Attacks::SpearOfLonginus.instance_variable_set(:@available, true)
    @scenario = Nerv::Scenarios::Ep22.new
  end

  def test_run_yields_contained_controlled
    assert_equal :contained_controlled, @scenario.run
    
    assert @scenario.events.include?(Nerv::SIEM::PATTERN_BLUE)
    assert @scenario.events.include?(Nerv::SIEM::ORBITAL_STAY)
    assert @scenario.events.include?(Nerv::SIEM::MENTAL_BEAM)
    assert @scenario.events.include?(Nerv::SIEM::PSYCHE_BROKEN)
    assert @scenario.events.include?(Nerv::SIEM::LONGINUS_FIRED)
    assert @scenario.events.include?(Nerv::SIEM::SPEAR_LOST)
    assert @scenario.events.include?(Nerv::SIEM::CORE_DESTROYED)
  end
end
