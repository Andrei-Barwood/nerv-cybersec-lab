require "minitest/autorun"
require_relative "../lib/nerv"

class TestPlaybookEp19 < Minitest::Test
  def setup
    @shinji = Nerv::Operator.new(name: :shinji, sync_rate: 0.6)
    @eva01 = Nerv::Eva.new(designation: "eva-01", operator: @shinji)
    @eva00 = Nerv::Eva.new(designation: "eva-00", operator: Nerv::Operator.new(name: :rei))
    @eva02 = Nerv::Eva.new(designation: "eva-02", operator: Nerv::Operator.new(name: :asuka))
    
    @zeruel = Nerv::Zeruel.new
    @dummy = Nerv::DummyPlug.new(eva: @eva01)
    @s2_organ = Nerv::S2Organ.new
    @n2 = Nerv::Attacks::N2Mine.new
    @playbook = Nerv::PlaybookEp19.new
  end

  def test_success_path
    res = @playbook.run(
      zeruel: @zeruel,
      eva01: @eva01,
      eva02: @eva02,
      eva00: @eva00,
      dummy_plug: @dummy,
      s2_organ: @s2_organ,
      shinji: @shinji,
      n2_mine: @n2
    )
    
    assert_equal :contained_uncontrolled, res
    assert @playbook.siem.emitted?(Nerv::SIEM::OVERWHELM)
    assert @playbook.siem.emitted?(Nerv::SIEM::ARMOR_STRIPPED)
    assert @playbook.siem.emitted?(Nerv::SIEM::N2_SUICIDE_FAILED)
    assert @playbook.siem.emitted?(Nerv::SIEM::DUMMY_FAILED)
    assert @playbook.siem.emitted?(Nerv::SIEM::OPERATOR_LATE_SORTIE)
    assert @playbook.siem.emitted?(Nerv::SIEM::EVA_BERSERK)
    assert @playbook.siem.emitted?(Nerv::SIEM::S2_INGESTED)
    assert @playbook.siem.emitted?(Nerv::SIEM::OPERATOR_INTROJECTED)
    assert @playbook.siem.emitted?(Nerv::SIEM::PLUG_EMPTY)
    
    assert @eva02.armor_stripped
    refute @dummy.engaged?
    assert @s2_organ.ingested
    assert_equal @shinji, @eva01.introjected_operator
  end
end
