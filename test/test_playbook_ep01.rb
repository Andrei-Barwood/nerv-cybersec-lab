# frozen_string_literal: true

require_relative "test_helper"

class TestPlaybookEp01 < Minitest::Test
  def setup
    @sachiel = Nerv::Angels::Sachiel.new
    @shinji = Nerv::Operator.new(name: "Shinji", sync_rate: 0.25, freeze: true)
    @eva = Nerv::Eva.new(designation: "01", operator: @shinji)
    @magi = Nerv::Magi.new
    @playbook = Nerv::PlaybookEp01.new
  end

  def run_ep01
    @playbook.run(
      angel: @sachiel,
      eva: @eva,
      magi: @magi,
      backup_unavailable: true
    )
  end

  def test_ends_unresolved
    assert_equal :unresolved, run_ep01
    assert_equal :unresolved, @playbook.outcome
  end

  def test_never_contained
    run_ep01
    refute_equal :contained, @playbook.outcome
    assert @sachiel.core.intact?
  end

  def test_never_berserk
    run_ep01
    refute_equal :berserk, @playbook.outcome
    refute_includes @playbook.steps, :berserk
  end

  def test_canonical_step_results
    run_ep01
    assert_equal %i[fail regen deploy unresolved], @playbook.steps
  end

  def test_eva_is_not_a_preventive_control
    refute_includes @playbook.preventive_controls, :eva
    refute_includes @playbook.preventive_controls, :eva_deploy
    assert_includes @playbook.mitigation_steps, :eva_deploy
  end

  def test_mutates_after_wipe
    run_ep01
    assert @sachiel.regenerated?
    assert @sachiel.mutated?
    assert_includes @sachiel.ttps, Nerv::Angels::Sachiel::TTP_ADAPTIVE_MUTATION
  end

  def test_eva_deployed_and_core_intact
    run_ep01
    assert @eva.deployed?
    assert @sachiel.core.intact?
  end

  def test_backup_unavailable_does_not_swap_operator
    run_ep01
    assert_equal "Shinji", @eva.operator.name
  end
end
