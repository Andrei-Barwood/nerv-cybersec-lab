require "minitest/autorun"
require_relative "../lib/nerv"

class TestHqOutage < Minitest::Test
  def test_outage_state
    outage = Nerv::HqOutage.new
    assert outage.active?
    refute outage.hq_power
    
    outage.restore_power!
    refute outage.active?
    assert outage.hq_power
  end
end
