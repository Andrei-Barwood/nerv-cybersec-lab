require "minitest/autorun"
require_relative "../lib/nerv"

class TestPlaybookEp20 < Minitest::Test
  def setup
    @shinji = Nerv::Operator.new(name: :shinji)
    @eva01 = Nerv::Eva.new(designation: "eva-01", operator: @shinji)
    @dummy = Nerv::DummyPlug.new(eva: @eva01)
    @salvage = Nerv::Salvage.new
    
    # State from Ep 19
    @s2 = Nerv::S2Organ.new
    @s2.ingest!
    @eva01.s2_engine = @s2
    Nerv::Introjection.introject!(eva: @eva01, operator: @shinji)
    
    @playbook = Nerv::PlaybookEp20.new
  end

  def test_success_path
    res = @playbook.run(
      eva01: @eva01,
      shinji: @shinji,
      salvage: @salvage,
      dummy_plug: @dummy,
      dwell_days: 30,
      maternal_presence: true
    )
    
    assert_equal :operator_recovered_fragile, res
    assert @playbook.siem.emitted?(Nerv::SIEM::PLUG_EMPTY)
    assert @playbook.siem.emitted?(Nerv::SIEM::S2_PRESENT)
    assert @playbook.siem.emitted?(Nerv::SIEM::DWELL_INSIDE)
    assert @playbook.siem.emitted?(Nerv::SIEM::DUMMY_SALVAGE_REJECTED)
    assert @playbook.siem.emitted?(Nerv::SIEM::SALVAGE_STARTED)
    assert @playbook.siem.emitted?(Nerv::SIEM::RETURN_TO_BODY)
    assert @playbook.siem.emitted?(Nerv::SIEM::BOUNDARIES_RESTORED)
    assert @playbook.siem.emitted?(Nerv::SIEM::OPERATOR_RECOVERED)
    assert @playbook.siem.emitted?(Nerv::SIEM::S2_STILL_IN_PROD)
    
    refute @playbook.siem.emitted?(Nerv::SIEM::PATTERN_BLUE)
    
    assert @s2.ingested
    assert_equal @s2, @eva01.s2_engine
    assert_nil @eva01.introjected_operator
  end
end
