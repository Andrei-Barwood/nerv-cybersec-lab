require "minitest/autorun"
require_relative "../lib/nerv"
require_relative "../lib/nerv/scenarios/ep09"

class TestScenarioEp09 < Minitest::Test
  def setup
    @scenario = Nerv::Scenarios::Ep09.new
  end

  def test_run_yields_contained_controlled
    assert_equal :contained_controlled, @scenario.run
    
    assert @scenario.events.include?(Nerv::SIEM::ANGEL_SPLIT)
    assert @scenario.events.include?(Nerv::SIEM::DESYNC)
    assert @scenario.events.include?(Nerv::SIEM::N2_STUN_WINDOW)
    assert @scenario.events.include?(Nerv::SIEM::REHEARSAL_DONE)
    assert @scenario.events.include?(Nerv::SIEM::SIMULTANEOUS_STRIKE)
    assert @scenario.events.include?(Nerv::SIEM::CORE_DESTROYED)
  end
end
