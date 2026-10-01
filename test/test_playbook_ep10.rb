require "minitest/autorun"
require_relative "../lib/nerv"

class TestPlaybookEp10 < Minitest::Test
  def setup
    @angel = Nerv::Angels::Sandalphon.new
    @eva_diver = Nerv::Eva.new(designation: "02", operator: Nerv::Operator.new(name: "Asuka", sync_rate: 0.9))
    @eva_support = Nerv::Eva.new(designation: "01", operator: Nerv::Operator.new(name: "Shinji", sync_rate: 0.9))
    @magma = Nerv::MagmaEnvironment.new
    @cage = Nerv::CaptureCage.new
    @playbook = Nerv::PlaybookEp10.new
  end

  def test_success_path
    res = @playbook.run(angel: @angel, eva_diver: @eva_diver, eva_support: @eva_support, magma: @magma, cage: @cage)
    
    assert_equal :contained_controlled, res
    assert @playbook.siem.emitted?(Nerv::SIEM::PATTERN_BLUE_EMBRYONIC)
    assert @playbook.siem.emitted?(Nerv::SIEM::CAPTURE_ATTEMPT)
    assert @playbook.siem.emitted?(Nerv::SIEM::ABORT_TO_KILL)
    assert @playbook.siem.emitted?(Nerv::SIEM::SAMPLE_LOST)
    assert @playbook.siem.emitted?(Nerv::SIEM::SUPPORT_RESCUE)
    refute @playbook.siem.emitted?(Nerv::SIEM::EVA_COOKED)
    assert @angel.hatch_progress < 1.0
  end

  def test_fails_if_greed_overrides
    res = @playbook.run(angel: @angel, eva_diver: @eva_diver, eva_support: @eva_support, magma: @magma, cage: @cage, greed_override: true)
    
    assert_equal :unresolved, res
    assert @playbook.siem.emitted?(Nerv::SIEM::EVA_COOKED)
    assert @angel.fully_hatched?
  end
end
