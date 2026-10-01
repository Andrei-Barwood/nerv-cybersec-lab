require "minitest/autorun"
require_relative "../lib/nerv"

class TestFleetBattery < Minitest::Test
  def test_effective_only_with_jaw_open
    battery = Nerv::FleetBattery.new
    refute battery.effective_against?(jaw_open: false)
    assert battery.effective_against?(jaw_open: true)
  end
end
