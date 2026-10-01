require "minitest/autorun"
require_relative "../lib/nerv"

class TestAnalogLaunch < Minitest::Test
  def test_analog_launch_bypasses_power
    outage = Nerv::HqOutage.new
    magi = Nerv::Magi.new
    magi.instance_variable_set(:@unpowered, true)
    
    launch = Nerv::AnalogLaunch.new(hq_outage: outage, magi: magi)
    assert_equal :analog_launch, launch.run!
    assert launch.deployed
  end
end
