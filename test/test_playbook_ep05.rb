require "minitest/autorun"
require_relative "../lib/nerv"

class TestPlaybookEp05 < Minitest::Test
  def setup
    @operator = Nerv::Operator.new(name: "Shinji", sync_rate: 0.6)
    @eva = Nerv::Eva.new(designation: "01", operator: @operator)
    @angel = Nerv::Angels::Ramiel.new
    @magi = Nerv::Magi.new
    @playbook = Nerv::PlaybookEp05.new
  end

  def test_unresolved_run
    res = @playbook.run(angel: @angel, eva: @eva, magi: @magi, sortie: true)
    
    assert_equal :unresolved, res
    assert @playbook.siem.emitted?(Nerv::SIEM::GEOMETRIC_FORTRESS)
    assert @playbook.siem.emitted?(Nerv::SIEM::EVA_MELTED)
    assert @playbook.siem.emitted?(Nerv::SIEM::MISSION_ABORTED)
    assert @playbook.siem.emitted?(Nerv::SIEM::DRILL_STARTED)
    assert @playbook.siem.emitted?(Nerv::SIEM::STANDOFF_CAPABILITY_MISSING)
    assert @playbook.siem.emitted?(Nerv::SIEM::YASHIMA_PROPOSED)
    assert @playbook.siem.emitted?(Nerv::SIEM::OPERATOR_OPAQUE)
    
    assert @angel.alive?
    assert @eva.operator.action_frozen?
    assert @angel.drill.progress > 0.0
    assert @angel.drill.progress < 1.0
  end
end
