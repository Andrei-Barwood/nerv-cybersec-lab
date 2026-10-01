require "minitest/autorun"
require_relative "../lib/nerv"

class TestPlaybookEp08 < Minitest::Test
  def setup
    @gaghiel = Nerv::Angels::Gaghiel.new
    @asuka = Nerv::Operator.new(name: "Asuka", sync_rate: 0.8)
    @eva_02 = Nerv::Eva.new(designation: "02", operator: @asuka)
    @shinji = Nerv::Operator.new(name: "Shinji", sync_rate: 0.6)
    @dual_plug = Nerv::DualPlug.new(primary: @asuka, secondary: @shinji)
    @magi = Nerv::Magi.new
    @playbook = Nerv::PlaybookEp08.new
  end

  def test_pacific_fleet_success
    theater = Nerv::Theater.new(:pacific_fleet)
    res = @playbook.run(angel: @gaghiel, eva_02: @eva_02, theater: theater, magi: @magi, dual_plug: @dual_plug)
    
    assert_equal :contained_controlled, res
    assert @playbook.siem.emitted?(Nerv::SIEM::CONVOY_UNDER_ATTACK)
    assert @playbook.siem.emitted?(Nerv::SIEM::TOKYO3_SILENT)
    assert @playbook.siem.emitted?(Nerv::SIEM::EVA02_DEPLOYED)
    assert @playbook.siem.emitted?(Nerv::SIEM::DUAL_PLUG)
    assert @playbook.siem.emitted?(Nerv::SIEM::JAW_OPEN)
    assert @playbook.siem.emitted?(Nerv::SIEM::FLEET_BATTERY_FIRED)
    assert @playbook.siem.emitted?(Nerv::SIEM::CORE_DESTROYED)
  end

  def test_fails_in_tokyo
    theater = Nerv::Theater.new(:tokyo3_geofront)
    res = @playbook.run(angel: @gaghiel, eva_02: @eva_02, theater: theater, magi: @magi, dual_plug: @dual_plug)
    
    assert_equal :unresolved, res
    assert @playbook.siem.emitted?(Nerv::SIEM::TOKYO3_SILENT)
    refute @playbook.siem.emitted?(Nerv::SIEM::CORE_DESTROYED)
  end
end
