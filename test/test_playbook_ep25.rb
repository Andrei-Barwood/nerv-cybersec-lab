require "minitest/autorun"
require_relative "../lib/nerv"

class TestPlaybookEp25 < Minitest::Test
  def setup
    Nerv::Instrumentality.reset!
    @playbook = Nerv::PlaybookEp25.new
  end

  def test_success_path
    res = @playbook.run
    
    assert_equal :instrumentality_in_progress, res
    assert @playbook.siem.emitted?(Nerv::SIEM::NO_PATTERN_BLUE)
    assert @playbook.siem.emitted?(Nerv::SIEM::INSTRUMENTALITY_STARTED)
    assert @playbook.siem.emitted?(Nerv::SIEM::AT_FIELD_SELF_COLLAPSING)
    assert @playbook.siem.emitted?(Nerv::SIEM::PRIVACY_ZERO)
    assert @playbook.siem.emitted?(Nerv::SIEM::IDENTITY_INTERROGATION)
    assert @playbook.siem.emitted?(Nerv::SIEM::DO_YOU_LOVE_ME)
    assert @playbook.siem.emitted?(Nerv::SIEM::INSTRUMENTALITY_IN_PROGRESS)
    
    refute @playbook.siem.emitted?(Nerv::SIEM::CONGRATULATIONS_PREMATURE)
  end

  def test_fails_if_angel_present
    res = @playbook.run(angel: Nerv::Tabris.new)
    assert_equal :instrumentality_denied_skip, res
  end

  def test_fails_if_dummy_plug_engaged
    # Note: the playbook internally instantiates dummy plug.
    # DummyPlug by default is NOT engaged. But if we stub engaged? to true...
    dummy = Nerv::DummyPlug.new(eva: nil)
    dummy.instance_variable_set(:@engaged, true)
    
    # We must patch Playbook to use the mocked dummy or patch DummyPlug itself.
    # Just mocking the engaged check is easier.
    class << Nerv::DummyPlug
      alias_method :orig_new, :new
      def new(*args, **kwargs)
        d = orig_new(*args, **kwargs)
        d.instance_variable_set(:@engaged, true)
        d
      end
    end
    
    res = @playbook.run
    assert_equal :instrumentality_denied_skip, res
    
    class << Nerv::DummyPlug
      alias_method :new, :orig_new
      remove_method :orig_new
    end
  end

  def test_fails_if_complete_merge
    Nerv::Instrumentality.complete_merge!
    res = @playbook.run
    assert_equal :instrumentality_denied_skip, res
  end
end
