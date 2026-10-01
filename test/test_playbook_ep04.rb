require "minitest/autorun"
require_relative "../lib/nerv"

class TestPlaybookEp04 < Minitest::Test
  def setup
    @operator = Nerv::Operator.new(name: "Shinji", sync_rate: 0.6)
    @eva = Nerv::Eva.new(designation: "01", operator: @operator)
    @magi = Nerv::Magi.new
    @playbook = Nerv::PlaybookEp04.new
  end

  def test_success_path_voluntary_return
    res = @playbook.run(eva: @eva, magi: @magi, replace_proposed: true)
    assert_equal :staffing_restored_fragile, res
    
    assert @playbook.siem.emitted?(Nerv::SIEM::OPERATOR_AWOL)
    assert @playbook.siem.emitted?(Nerv::SIEM::CAPACITY_ACTUAL_ZERO)
    assert @playbook.siem.emitted?(Nerv::SIEM::IM_HOME)
    assert @playbook.siem.emitted?(Nerv::SIEM::STAFFING_FRAGILE)
    refute @playbook.siem.emitted?(Nerv::SIEM::PATTERN_BLUE)
    
    assert @operator.hedgehog.habitable_band?
  end

  def test_force_return_fails
    res = @playbook.run(eva: @eva, magi: @magi, force_return: true)
    assert_equal :staffing_failed, res
  end

  def test_replace_with_backup_fails
    res = @playbook.run(eva: @eva, magi: @magi, replace_proposed: true, use_backup: true)
    assert_equal :staffing_failed, res
    assert @playbook.siem.emitted?(Nerv::SIEM::BACKUP_USED_AS_LEVERAGE)
  end

  def test_gendo_override_fails
    res = @playbook.run(eva: @eva, magi: @magi, gendo_override: true)
    assert_equal :staffing_failed, res
    assert @magi.gendo_override_registered
  end
end
