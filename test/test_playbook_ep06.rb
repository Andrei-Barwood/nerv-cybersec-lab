require "minitest/autorun"
require_relative "../lib/nerv"

class TestPlaybookEp06 < Minitest::Test
  def setup
    @eva_01 = Nerv::Eva.new(designation: "01", operator: Nerv::Operator.new(name: "Shinji", sync_rate: 0.6))
    @eva_00 = Nerv::Eva.new(designation: "00", operator: Nerv::Operator.new(name: "Rei", sync_rate: 0.6))
    @angel = Nerv::Angels::Ramiel.new
    @magi = Nerv::Magi.new
    @playbook = Nerv::PlaybookEp06.new
  end

  def test_yashima_success
    grid = Nerv::PowerGrid.national
    res = @playbook.run(angel: @angel, eva_01: @eva_01, eva_00: @eva_00, magi: @magi, grid: grid)
    
    assert_equal :contained_controlled, res
    assert @playbook.siem.emitted?(Nerv::SIEM::NATIONAL_BLACKOUT)
    assert @playbook.siem.emitted?(Nerv::SIEM::POSITRON_CHARGING)
    assert @playbook.siem.emitted?(Nerv::SIEM::SHOT_INSUFFICIENT)
    assert @playbook.siem.emitted?(Nerv::SIEM::COUNTERFIRE_ON_NEST)
    assert @playbook.siem.emitted?(Nerv::SIEM::SHIELD_ABSORBED)
    assert @playbook.siem.emitted?(Nerv::SIEM::CORE_DESTROYED)
    assert @playbook.siem.emitted?(Nerv::SIEM::DRILL_STOPPED)
    assert @playbook.siem.emitted?(Nerv::SIEM::THANK_YOU)
    
    refute @angel.alive?
  end

  def test_yashima_fails_without_grid
    grid = Nerv::PowerGrid.new
    res = @playbook.run(angel: @angel, eva_01: @eva_01, eva_00: @eva_00, magi: @magi, grid: grid)
    
    assert_equal :unresolved, res
    assert @angel.alive?
  end
end
