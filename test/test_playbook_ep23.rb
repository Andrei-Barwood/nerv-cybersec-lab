require "minitest/autorun"
require_relative "../lib/nerv"

class TestPlaybookEp23 < Minitest::Test
  def setup
    Nerv::Attacks::SpearOfLonginus.instance_variable_set(:@available, false)
    @armisael = Nerv::Armisael.new
    
    @rei_ii = Nerv::Operator.new(name: :rei_ii)
    @eva00 = Nerv::Eva.new(designation: "eva-00", operator: @rei_ii)
    @eva00.deploy!
    
    @shinji = Nerv::Operator.new(name: :shinji)
    @eva01 = Nerv::Eva.new(designation: "eva-01", operator: @shinji)
    
    @clone_tank = Nerv::CloneTank.new
    
    @playbook = Nerv::PlaybookEp23.new
  end

  def test_success_path
    res = @playbook.run(
      armisael: @armisael,
      eva00: @eva00,
      eva01: @eva01,
      clone_tank: @clone_tank
    )
    
    assert_equal :contained_controlled, res
    assert @playbook.siem.emitted?(Nerv::SIEM::PATTERN_BLUE)
    assert @playbook.siem.emitted?(Nerv::SIEM::HELIX_CONTACT)
    assert @playbook.siem.emitted?(Nerv::SIEM::EVA00_FUSED)
    assert @playbook.siem.emitted?(Nerv::SIEM::LATERAL_THREAT_EVA01)
    assert @playbook.siem.emitted?(Nerv::SIEM::NODE_SACRIFICE)
    assert @playbook.siem.emitted?(Nerv::SIEM::EVA00_DESTROYED)
    assert @playbook.siem.emitted?(Nerv::SIEM::ARMISAEL_DEAD_WITH_NODE)
    assert @playbook.siem.emitted?(Nerv::SIEM::REI_III_BOOTED)
    assert @playbook.siem.emitted?(Nerv::SIEM::IDENTITY_MISMATCH)
    assert @playbook.siem.emitted?(Nerv::SIEM::CLONE_TANK_REVEALED)
    
    refute @armisael.alive?
    refute @eva00.deployed?
    assert @clone_tank.revealed
    refute Nerv::Attacks::SpearOfLonginus.available?
  end

  def test_dummy_plug_fails
    dummy = Nerv::DummyPlug.new(eva: nil)
    refute dummy.engage!(target: @armisael)
  end

  def test_identity_mismatch
    rei_iii = @clone_tank.boot_next!
    assert rei_iii.identity_match(@rei_ii) < 1.0
  end
end
