require "minitest/autorun"
require_relative "../lib/nerv"

class TestPlaybookEp26 < Minitest::Test
  def setup
    Nerv::Instrumentality.reset!
    Nerv::Instrumentality.start!
    @playbook = Nerv::PlaybookEp26.new
  end

  def test_success_path
    res = @playbook.run
    
    assert_equal :boundaries_restored_fragile, res
    assert @playbook.siem.emitted?(Nerv::SIEM::MERGE_REJECTED)
    assert @playbook.siem.emitted?(Nerv::SIEM::AT_FIELD_SELF_ON)
    assert @playbook.siem.emitted?(Nerv::SIEM::I_AM_I)
    assert @playbook.siem.emitted?(Nerv::SIEM::SUBJECTS_RESTORED)
    assert @playbook.siem.emitted?(Nerv::SIEM::CONGRATULATIONS_OF_OTHERS)
    assert @playbook.siem.emitted?(Nerv::SIEM::TAKE_CARE)
    assert @playbook.siem.emitted?(Nerv::SIEM::BOUNDARIES_RESTORED)
    
    refute @playbook.siem.emitted?(Nerv::SIEM::FALSE_CONGRATULATIONS_KPI)
    
    assert Nerv::Instrumentality.rejected?
  end

  def test_fails_if_angel_present
    res = @playbook.run(angel: Nerv::Tabris.new)
    assert_equal :total_merge_accepted, res
  end

  def test_fails_if_dummy_plug_engaged
    class << Nerv::DummyPlug
      alias_method :orig_new, :new
      def new(*args, **kwargs)
        d = orig_new(*args, **kwargs)
        d.instance_variable_set(:@engaged, true)
        d
      end
    end
    
    res = @playbook.run
    assert_equal :total_merge_accepted, res
    
    class << Nerv::DummyPlug
      alias_method :new, :orig_new
      remove_method :orig_new
    end
  end

  def test_fails_if_complete_merge
    Nerv::Instrumentality.complete_merge!
    res = @playbook.run
    assert_equal :total_merge_accepted, res
  end
end
