# frozen_string_literal: true

require_relative "test_helper"
require_relative "../lib/nerv/scenarios/ep01"

class TestScenarioEp01 < Minitest::Test
  def setup
    @scenario = Nerv::Scenarios::Ep01.new
    @outcome = @scenario.run
  end

  def test_ends_unresolved
    assert_equal :unresolved, @outcome
    assert_equal :unresolved, @scenario.playbook.outcome
  end

  def test_not_contained_and_not_berserk
    refute_equal :contained, @outcome
    refute_equal :berserk, @outcome
    assert @scenario.angel.core.intact?
  end

  def test_trace_includes_wipe_failure
    ids = @scenario.events
    assert_includes ids, "siem.pattern_blue"
    assert_includes ids, "siem.wipe_declared"
    assert_includes ids, "siem.wipe_failed_regen"
    assert_includes ids, "siem.eva_deployed"
    assert_includes ids, "siem.operator_sync_low"
  end

  def test_sachiel_mutated_and_eva_deployed
    assert @scenario.angel.mutated?
    assert @scenario.eva.deployed?
  end
end
