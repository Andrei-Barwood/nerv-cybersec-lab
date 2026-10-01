require "minitest/autorun"
require_relative "../lib/nerv"

class TestPlaybookEp22 < Minitest::Test
  def setup
    Nerv::Attacks::SpearOfLonginus.instance_variable_set(:@available, true)
    @arael = Nerv::Arael.new
    @asuka = Nerv::Operator.new(name: :asuka)
    @spear = Nerv::Attacks::SpearOfLonginus.new
    @eva00_operator = Nerv::Operator.new(name: :rei)
    
    @playbook = Nerv::PlaybookEp22.new
  end

  def test_success_path
    res = @playbook.run(
      arael: @arael,
      asuka: @asuka,
      spear: @spear,
      eva00_operator: @eva00_operator
    )
    
    assert_equal :contained_controlled, res
    assert @playbook.siem.emitted?(Nerv::SIEM::PATTERN_BLUE)
    assert @playbook.siem.emitted?(Nerv::SIEM::ORBITAL_STAY)
    assert @playbook.siem.emitted?(Nerv::SIEM::OPERATOR_AS_SURFACE)
    assert @playbook.siem.emitted?(Nerv::SIEM::MENTAL_BEAM)
    assert @playbook.siem.emitted?(Nerv::SIEM::PSYCHE_BROKEN)
    assert @playbook.siem.emitted?(Nerv::SIEM::CLOSE_RANGE_IMPOSSIBLE)
    assert @playbook.siem.emitted?(Nerv::SIEM::LONGINUS_FIRED)
    assert @playbook.siem.emitted?(Nerv::SIEM::CORE_DESTROYED)
    assert @playbook.siem.emitted?(Nerv::SIEM::SPEAR_LOST)
    assert @playbook.siem.emitted?(Nerv::SIEM::SEELE_ARTIFACT_LOST)
    
    refute @arael.alive?
    assert @spear.lost
    assert @asuka.psyche_broken
  end
end
