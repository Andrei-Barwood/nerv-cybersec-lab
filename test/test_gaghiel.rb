require "minitest/autorun"
require_relative "../lib/nerv"

class TestGaghiel < Minitest::Test
  def setup
    @gaghiel = Nerv::Angels::Gaghiel.new
    @battery = Nerv::FleetBattery.new
  end

  def test_is_angel
    assert @gaghiel.is_a?(Nerv::Angel)
  end

  def test_battery_fails_when_jaw_closed
    assert_equal :rebounced, @gaghiel.receive(@battery)
  end

  def test_battery_succeeds_when_jaw_open
    @gaghiel.open_jaw!
    assert_equal :core_destroyed, @gaghiel.receive(@battery)
    refute @gaghiel.alive?
  end
  
  def test_knife_fails_without_jaw_open
    knife = Nerv::Attacks::ProgressiveKnife.new
    assert_equal :rebounced, @gaghiel.receive(knife)
  end
end
