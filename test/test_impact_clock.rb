require "minitest/autorun"
require_relative "../lib/nerv"

class TestImpactClock < Minitest::Test
  def test_impact_progress
    clock = Nerv::ImpactClock.new
    refute clock.landed?
    
    clock.tick!(0.5)
    assert_equal 0.5, clock.impact_progress
    refute clock.landed?
    
    clock.tick!(0.6)
    assert_equal 1.0, clock.impact_progress
    assert clock.landed?
  end
end
