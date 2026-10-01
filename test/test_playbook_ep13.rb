require "minitest/autorun"
require_relative "../lib/nerv"

class TestPlaybookEp13 < Minitest::Test
  def setup
    @angel = Nerv::Angels::Ireul.new
    @magi = Nerv::Magi.new
    @magi.units.each { |u| u.vote = :nerv }
    @infection = Nerv::MagiInfection.new(magi: @magi)
    @evolution = Nerv::ForcedEvolution.new(magi: @magi, magi_infection: @infection)
    @playbook = Nerv::PlaybookEp13.new
  end

  def test_success_path
    res = @playbook.run(angel: @angel, magi: @magi, magi_infection: @infection, forced_evolution: @evolution)
    
    assert_equal :contained_controlled, res
    assert @playbook.siem.emitted?(Nerv::SIEM::PATTERN_BLUE_MICRO)
    assert @playbook.siem.emitted?(Nerv::SIEM::SIGNATURE_FAILED)
    assert @playbook.siem.emitted?(Nerv::SIEM::SELF_DESTRUCT_ARMED)
    assert @playbook.siem.emitted?(Nerv::SIEM::CASPER_REVERSE_HACK)
    assert @playbook.siem.emitted?(Nerv::SIEM::EVOLUTION_DEAD_END)
    refute @playbook.siem.emitted?(Nerv::SIEM::EVA_SORTIE_MISAPPLIED)
  end

  def test_fails_if_eva_deployed
    res = @playbook.run(angel: @angel, magi: @magi, magi_infection: @infection, forced_evolution: @evolution, eva_deployed: true)
    
    assert_equal :unresolved, res
    assert @playbook.siem.emitted?(Nerv::SIEM::EVA_SORTIE_MISAPPLIED)
  end
end
