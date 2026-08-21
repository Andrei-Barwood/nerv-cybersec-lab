# frozen_string_literal: true

require_relative "test_helper"

class TestPlaybookEp02 < Minitest::Test
  def setup
    @sachiel = Nerv::Angels::Sachiel.new
    @shinji = Nerv::Operator.new(
      name: "Shinji", sync_rate: 0.25, freeze: true, hidden_agenda: true
    )
    @eva = Nerv::Eva.new(designation: "01", operator: @shinji)
    @magi = Nerv::Magi.new
    @playbook = Nerv::PlaybookEp02.new
  end

  def run_ep02
    @playbook.run(angel: @sachiel, eva: @eva, magi: @magi)
  end

  def test_ep01_still_unresolved_when_run_alone
    ep01 = Nerv::PlaybookEp01.new
    sachiel = Nerv::Angels::Sachiel.new
    eva = Nerv::Eva.new(
      designation: "01",
      operator: Nerv::Operator.new(name: "Shinji", sync_rate: 0.25, freeze: true)
    )
    assert_equal :unresolved, ep01.run(angel: sachiel, eva: eva, magi: Nerv::Magi.new)
    refute_equal :contained_uncontrolled, ep01.outcome
    refute_equal :berserk, ep01.outcome
    assert sachiel.core.intact?
  end

  def test_outcome_contained_uncontrolled
    assert_equal :contained_uncontrolled, run_ep02
    assert_equal :contained_uncontrolled, @playbook.outcome
    assert_equal :contained_uncontrolled, @playbook.containment.status
  end

  def test_never_contained_controlled
    run_ep02
    refute_equal :contained_controlled, @playbook.outcome
    refute_equal :contained_controlled, @playbook.containment.status
  end

  def test_berserk_is_not_a_victory_outcome
    run_ep02
    refute_equal :berserk, @playbook.outcome
    refute_includes @playbook.steps, :berserk
  end

  def test_operator_non_consent_at_close
    run_ep02
    assert @playbook.containment.operator_non_consent
    assert @eva.operator_non_consent
  end

  def test_magi_did_not_authorize_berserk
    run_ep02
    refute @magi.authorized?(:berserk)
    assert @playbook.siem.emitted?(Nerv::SIEM::MAGI_BERSERK_UNAUTHORIZED)
  end

  def test_sachiel_dead_only_after_berserk_channel
    run_ep02
    assert @sachiel.core.destroyed?
    assert @eva.berserk?
    refute @eva.core_strike_possible?
  end

  def test_low_sync_still_cannot_core_strike
    run_ep02
    assert_equal 0.25, @eva.sync_rate
  end

  def test_required_siem_events
    run_ep02
    %w[
      siem.eva_berserk
      siem.at_field_shattered
      siem.core_destroyed
      siem.public_disclosure
      siem.congratulations_issued
      siem.operator_pain_sync
      siem.operator_non_consent
    ].each do |id|
      assert @playbook.siem.emitted?(id), "expected #{id}"
    end
  end

  def test_inherits_ep01_wipe_failed
    run_ep02
    assert @playbook.siem.emitted?("siem.wipe_failed_regen")
    assert @playbook.siem.emitted?("siem.pattern_blue")
  end

  def test_eva01_ttps_recorded
    run_ep02
    assert_includes @playbook.ttps, "T-EVA01-01"
    assert_includes @playbook.ttps, "T-EVA01-02"
    assert_includes @playbook.ttps, "T-EVA01-03"
    assert_includes @playbook.ttps, "T-EVA01-04"
    assert_includes @playbook.ttps, "T-EVA01-05"
    assert_includes @playbook.ttps, "T-EVA01-06"
  end
end
