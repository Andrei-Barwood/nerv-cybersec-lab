require "minitest/autorun"
require_relative "../lib/nerv"
require_relative "../lib/nerv/scenarios/ep03"

class TestScenarioEp03 < Minitest::Test
  def setup
    @scenario = Nerv::Scenarios::Ep03.new
  end

  def test_run_yields_contained_controlled
    assert_equal :contained_controlled, @scenario.run
    
    assert @scenario.events.include?(Nerv::SIEM::PATTERN_BLUE)
    assert @scenario.events.include?(Nerv::SIEM::PALLET_RIFLE_FIRED)
    assert @scenario.events.include?(Nerv::SIEM::C2_CHANNEL_UP)
    assert @scenario.events.include?(Nerv::SIEM::PROGRESSIVE_KNIFE)
    assert @scenario.events.include?(Nerv::SIEM::C2_CHANNEL_SEVERED)
    assert @scenario.events.include?(Nerv::SIEM::CORE_DESTROYED)
    assert @scenario.events.include?(Nerv::SIEM::ANGEL_DEFLATED)
    assert @scenario.events.include?(Nerv::SIEM::UNAUTHORIZED_OBSERVER)
    assert @scenario.events.include?(Nerv::SIEM::OPERATOR_INPUT_PRESENT)
    assert @scenario.events.include?(Nerv::SIEM::CALLBACK_ABSENT)
    
    refute @scenario.events.include?(Nerv::SIEM::EVA_BERSERK)
  end
end
