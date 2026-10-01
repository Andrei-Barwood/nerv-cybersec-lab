require "minitest/autorun"
require_relative "../lib/nerv"

class TestPlaybookEp11 < Minitest::Test
  def setup
    @angel = Nerv::Angels::Matarael.new
    @hq_outage = Nerv::HqOutage.new
    @magi = Nerv::Magi.new
    @magi.instance_variable_set(:@unpowered, true)
    @acid = Nerv::Acid.new
    @playbook = Nerv::PlaybookEp11.new
  end

  def test_success_path_without_wait
    res = @playbook.run(angel: @angel, hq_outage: @hq_outage, magi: @magi, acid: @acid)
    
    assert_equal :contained_controlled, res
    assert @playbook.siem.emitted?(Nerv::SIEM::HQ_POWER_LOST)
    assert @playbook.siem.emitted?(Nerv::SIEM::ANALOG_MODE)
    assert @playbook.siem.emitted?(Nerv::SIEM::PATTERN_BLUE_DEGRADED)
    assert @playbook.siem.emitted?(Nerv::SIEM::ANALOG_LAUNCH)
    assert @playbook.siem.emitted?(Nerv::SIEM::COMBINED_SORTIE)
    assert @playbook.siem.emitted?(Nerv::SIEM::CORE_DESTROYED)
    assert @playbook.siem.emitted?(Nerv::SIEM::POWER_RESTORED)
    assert @acid.progress < 1.0
  end

  def test_fails_if_wait_for_power
    res = @playbook.run(angel: @angel, hq_outage: @hq_outage, magi: @magi, acid: @acid, wait_for_power: true)
    
    assert_equal :unresolved, res
    assert @acid.geofront_breached?
  end
end
