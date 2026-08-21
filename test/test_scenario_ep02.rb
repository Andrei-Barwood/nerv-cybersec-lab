# frozen_string_literal: true

require_relative "test_helper"
require_relative "../lib/nerv/scenarios/ep01"
require_relative "../lib/nerv/scenarios/ep02"

class TestScenarioEp02 < Minitest::Test
  def setup
    @scenario = Nerv::Scenarios::Ep02.new
    @outcome = @scenario.run
  end

  def test_ends_contained_uncontrolled
    assert_equal :contained_uncontrolled, @outcome
    refute_equal :contained_controlled, @outcome
    refute_equal :unresolved, @outcome
    refute_equal :berserk, @outcome
  end

  def test_trace_has_inherited_wipe_and_crush
    ids = @scenario.events
    assert_includes ids, "siem.wipe_failed_regen"
    assert_includes ids, "siem.eva_berserk"
    assert_includes ids, "siem.core_destroyed"
    assert_includes ids, "siem.congratulations_issued"
    assert_includes ids, "siem.operator_non_consent"
  end

  def test_angel_dead_operator_did_not_consent
    assert @scenario.angel.core.destroyed?
    assert @scenario.eva.operator_non_consent
    refute @scenario.magi.authorized?(:berserk)
  end
end
