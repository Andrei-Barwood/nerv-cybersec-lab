require "minitest/autorun"
require_relative "../lib/nerv"

class TestPlaybookEp18 < Minitest::Test
  def setup
    @shinji = Nerv::Operator.new(name: :shinji, sync_rate: 0.6)
    @toji = Nerv::Operator.new(name: :toji, sync_rate: 0.3)
    @eva01 = Nerv::Eva.new(designation: "eva-01", operator: @shinji)
    @eva03 = Nerv::Eva.new(designation: "eva-03", operator: @toji)
    @eva00 = Nerv::Eva.new(designation: "eva-00", operator: Nerv::Operator.new(name: :rei))
    @eva02 = Nerv::Eva.new(designation: "eva-02", operator: Nerv::Operator.new(name: :asuka))
    @dormant = Nerv::DormantContaminant.new
    @dummy = Nerv::DummyPlug.new(eva: @eva01)
    @magi = Nerv::Magi.new
    @knows = Nerv::NeedToKnow.new
    @playbook = Nerv::PlaybookEp18.new
  end

  def test_success_path
    res = @playbook.run(
      dormant_contaminant: @dormant,
      eva03: @eva03,
      eva01: @eva01,
      eva00: @eva00,
      eva02: @eva02,
      dummy_plug: @dummy,
      magi: @magi,
      shinji: @shinji,
      toji: @toji,
      knows: @knows
    )
    
    assert_equal :contained_uncontrolled, res
    assert @playbook.siem.emitted?(Nerv::SIEM::HITCHHIKER_ACTIVATED)
    assert @playbook.siem.emitted?(Nerv::SIEM::EVA03_HIJACKED)
    assert @playbook.siem.emitted?(Nerv::SIEM::OPERATOR_REFUSE)
    assert @playbook.siem.emitted?(Nerv::SIEM::DUMMY_PLUG_ENGAGED)
    assert @playbook.siem.emitted?(Nerv::SIEM::OCCUPANT_MAIMED)
    assert_equal :destroyed, @eva03.status
    assert_equal :down, @eva00.status
    assert_equal :down, @eva02.status
    refute @dormant.sealed?
  end
end
