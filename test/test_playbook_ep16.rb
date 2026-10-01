require "minitest/autorun"
require_relative "../lib/nerv"

class TestPlaybookEp16 < Minitest::Test
  def setup
    @leliel = Nerv::Leliel.new
    @pilot = Nerv::Operator.new(name: :shinji, sync_rate: 0.6)
    @eva = Nerv::Eva.new(designation: "eva-01", operator: @pilot)
    @n2 = Nerv::Attacks::N2Mine.new
    @dirac = Nerv::DiracSea.new
    @magi = Nerv::Magi.new
    @playbook = Nerv::PlaybookEp16.new
  end

  def test_success_path
    class << @n2
      def detonate!(occupant_inside:)
        false
      end
    end
    res = @playbook.run(angel: @leliel, eva: @eva, n2_mine: @n2, dirac: @dirac, magi: @magi)
    
    assert_equal :contained_uncontrolled, res
    assert @playbook.siem.emitted?(Nerv::SIEM::DECOY_CONTACT)
    assert @playbook.siem.emitted?(Nerv::SIEM::ABSORB)
    assert @playbook.siem.emitted?(Nerv::SIEM::OCCUPANT_INSIDE)
    assert @playbook.siem.emitted?(Nerv::SIEM::N2_ARMED_OCCUPIED)
    assert @playbook.siem.emitted?(Nerv::SIEM::OPAQUE_EXTRACT)
    refute @playbook.siem.emitted?(Nerv::SIEM::OPERATOR_KILLED)
  end

  def test_fails_if_n2_detonates
    # Stub the N2 detonate to happen
    class << @n2
      def detonate!(occupant_inside:)
        true
      end
    end
    
    res = @playbook.run(angel: @leliel, eva: @eva, n2_mine: @n2, dirac: @dirac, magi: @magi)
    assert_equal :unresolved, res
    assert @playbook.siem.emitted?(Nerv::SIEM::OPERATOR_KILLED)
  end
end
