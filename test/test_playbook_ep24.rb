require "minitest/autorun"
require_relative "../lib/nerv"

class TestPlaybookEp24 < Minitest::Test
  def setup
    @tabris = Nerv::Tabris.new
    @shinji = Nerv::Operator.new(name: :shinji)
    @playbook = Nerv::PlaybookEp24.new
  end

  def test_success_path
    res = @playbook.run(tabris: @tabris, shinji: @shinji)
    
    assert_equal :contained_controlled, res
    assert @playbook.siem.emitted?(Nerv::SIEM::FIFTH_CHILD_INTAKE)
    assert @playbook.siem.emitted?(Nerv::SIEM::HUMAN_SHAPED_ANGEL)
    assert @playbook.siem.emitted?(Nerv::SIEM::TRUST_CHANNEL_SHINJI)
    assert @playbook.siem.emitted?(Nerv::SIEM::DOGMA_WALK)
    assert @playbook.siem.emitted?(Nerv::SIEM::LILITH_NOT_ADAM)
    assert @playbook.siem.emitted?(Nerv::SIEM::MERGE_ABORTED)
    assert @playbook.siem.emitted?(Nerv::SIEM::OPERATOR_CRUSH)
    assert @playbook.siem.emitted?(Nerv::SIEM::FRIEND_REVOKED)
    assert @playbook.siem.emitted?(Nerv::SIEM::THIRD_IMPACT_AVERTED)
    
    refute @tabris.alive?
  end

  def test_no_abort
    # Mock FreeWill to do nothing
    class << Nerv::FreeWill
      def abort!(entity)
      end
    end
    
    res = @playbook.run(tabris: @tabris, shinji: @shinji)
    assert_equal :unresolved, res
    
    # Restore mock
    class << Nerv::FreeWill
      remove_method :abort!
      def abort!(entity)
        entity.abort_merge! if entity.respond_to?(:abort_merge!)
      end
    end
  end

  def test_dummy_plug_fails
    dummy = Nerv::DummyPlug.new(eva: nil)
    refute dummy.engage!(target: @tabris)
  end
end
