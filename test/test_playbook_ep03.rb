require "minitest/autorun"
require_relative "../lib/nerv"

class TestPlaybookEp03 < Minitest::Test
  def setup
    @angel = Nerv::Angels::Shamshel.new
    @operator = Nerv::Operator.new(name: "Shinji", sync_rate: 0.6)
    @eva = Nerv::Eva.new(designation: "Eva-01", operator: @operator)
    @magi = Nerv::Magi.new
    @playbook = Nerv::PlaybookEp03.new
  end

  def test_success_path
    @playbook.run(angel: @angel, eva: @eva, magi: @magi)
    
    assert_equal :contained_controlled, @playbook.outcome
    refute @angel.alive?
    assert @angel.deflated?
    assert @playbook.siem.emitted?(Nerv::SIEM::OPERATOR_INPUT_PRESENT)
    assert @playbook.siem.emitted?(Nerv::SIEM::C2_CHANNEL_SEVERED)
    assert @playbook.siem.emitted?(Nerv::SIEM::CORE_DESTROYED)
    assert @playbook.siem.emitted?(Nerv::SIEM::UNAUTHORIZED_OBSERVER)
    assert @playbook.siem.emitted?(Nerv::SIEM::CALLBACK_ABSENT)
    
    refute @eva.operator_input_discarded
  end

  def test_berserk_path_is_fail
    @playbook.run(angel: @angel, eva: @eva, magi: @magi, use_berserk: true)
    
    assert_equal :contained_uncontrolled, @playbook.outcome
    assert @playbook.siem.emitted?(Nerv::SIEM::EVA_BERSERK)
    refute @angel.alive?
  end

  def test_freeze_path
    @operator.freeze_action!
    @playbook.run(angel: @angel, eva: @eva, magi: @magi)
    
    assert_equal :unresolved, @playbook.outcome
    assert @angel.alive?
    assert @playbook.siem.emitted?(Nerv::SIEM::OPERATOR_FREEZE)
  end
end
