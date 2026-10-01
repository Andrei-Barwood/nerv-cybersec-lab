require "minitest/autorun"
require_relative "../lib/nerv"

class TestSyncClock < Minitest::Test
  def test_good_sync
    clock = Nerv::SyncClock.new(pair_sync: 0.9, asuka_lead_override: false)
    assert clock.calculate_delta <= 0.1
  end

  def test_asuka_override_breaks_delta
    clock = Nerv::SyncClock.new(pair_sync: 0.9, asuka_lead_override: true)
    assert clock.calculate_delta > 0.1
  end

  def test_low_pair_sync_breaks_delta
    clock = Nerv::SyncClock.new(pair_sync: 0.5, asuka_lead_override: false)
    assert clock.calculate_delta > 0.1
  end
end
