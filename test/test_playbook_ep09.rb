require "minitest/autorun"
require_relative "../lib/nerv"

class TestPlaybookEp09 < Minitest::Test
  def setup
    @israfel = Nerv::Angels::Israfel.new
    @eva_01 = Nerv::Eva.new(designation: "01", operator: Nerv::Operator.new(name: "Shinji", sync_rate: 0.9))
    @eva_02 = Nerv::Eva.new(designation: "02", operator: Nerv::Operator.new(name: "Asuka", sync_rate: 0.9))
    @sync_clock = Nerv::SyncClock.new(pair_sync: 0.9, asuka_lead_override: false)
    @rehearsal = Nerv::Rehearsal.new
    @playbook = Nerv::PlaybookEp09.new
  end

  def test_success_path
    res = @playbook.run(angel: @israfel, eva_01: @eva_01, eva_02: @eva_02, sync_clock: @sync_clock, rehearsal: @rehearsal)
    
    assert_equal :contained_controlled, res
    assert @playbook.siem.emitted?(Nerv::SIEM::ANGEL_SPLIT)
    assert @playbook.siem.emitted?(Nerv::SIEM::N2_STUN_WINDOW)
    assert @playbook.siem.emitted?(Nerv::SIEM::REHEARSAL_DONE)
    assert @playbook.siem.emitted?(Nerv::SIEM::SIMULTANEOUS_STRIKE)
    assert @playbook.siem.emitted?(Nerv::SIEM::CORE_DESTROYED)
  end

  def test_fails_without_rehearsal
    res = @playbook.run(angel: @israfel, eva_01: @eva_01, eva_02: @eva_02, sync_clock: @sync_clock, rehearsal: @rehearsal, skip_rehearsal: true)
    
    assert_equal :unresolved, res
    assert @playbook.siem.emitted?(Nerv::SIEM::REJOIN)
  end

  def test_fails_if_asuka_leads
    bad_clock = Nerv::SyncClock.new(pair_sync: 0.9, asuka_lead_override: true)
    res = @playbook.run(angel: @israfel, eva_01: @eva_01, eva_02: @eva_02, sync_clock: bad_clock, rehearsal: @rehearsal)
    
    assert_equal :unresolved, res
    assert @playbook.siem.emitted?(Nerv::SIEM::REJOIN)
  end
end
