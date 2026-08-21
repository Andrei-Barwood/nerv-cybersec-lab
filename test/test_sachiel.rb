# frozen_string_literal: true

require_relative "test_helper"

class TestSachiel < Minitest::Test
  def setup
    @sachiel = Nerv::Angels::Sachiel.new
  end

  def test_pattern_blue
    assert @sachiel.pattern_blue?
  end

  def test_conventional_attack_does_not_destroy_core
    result = @sachiel.receive(Nerv::Attacks::ConventionalAttack.new)
    assert_equal :rebounced, result
    assert @sachiel.core.intact?
    refute @sachiel.core.destroyed?
    refute @sachiel.mutated?
  end

  def test_n2_mine_does_not_destroy_core
    @sachiel.receive(Nerv::Attacks::N2Mine.new)
    assert @sachiel.core.intact?
    refute @sachiel.core.destroyed?
  end

  def test_n2_mine_triggers_regenerate
    refute @sachiel.regenerated?
    @sachiel.receive(Nerv::Attacks::N2Mine.new)
    assert @sachiel.regenerated?, "N2Mine must call regenerate! — a wipe is not a kill"
    assert @sachiel.core.intact?
  end

  def test_n2_mine_triggers_mutate_with_adaptive_mutation
    refute @sachiel.ttps.include?(Nerv::Angels::Sachiel::TTP_ADAPTIVE_MUTATION)
    @sachiel.receive(Nerv::Attacks::N2Mine.new)
    assert @sachiel.mutated?
    assert_includes @sachiel.ttps, Nerv::Angels::Sachiel::TTP_ADAPTIVE_MUTATION
    assert_includes @sachiel.ttps, Nerv::Angels::Sachiel::TTP_WIPE_SURVIVAL
  end

  def test_core_strike_with_field_up_does_not_destroy
    @sachiel.receive(Nerv::Attacks::CoreStrike.new)
    assert @sachiel.at_field.blocks?
    assert @sachiel.core.intact?
  end

  def test_core_strike_with_field_lowered_destroys_core
    @sachiel.at_field.lower!
    result = @sachiel.receive(Nerv::Attacks::CoreStrike.new)
    assert_equal :core_destroyed, result
    assert @sachiel.core.destroyed?
    refute @sachiel.core.intact?
  end

  def test_core_strike_with_field_penetrated_destroys_core
    @sachiel.at_field.penetrate!
    @sachiel.receive(Nerv::Attacks::CoreStrike.new)
    assert @sachiel.core.destroyed?
  end

  def test_low_sync_eva_does_not_core_strike
    shinji = Nerv::Operator.new(name: "Shinji", sync_rate: 0.25, freeze: true)
    eva = Nerv::Eva.new(designation: "01", operator: shinji)
    eva.deploy!
    @sachiel.at_field.lower!
    result = eva.attempt_core_strike(@sachiel)
    assert_equal :freeze, result
    assert @sachiel.core.intact?, "ep 01 operator cannot land CoreStrike"
  end

  def test_low_sync_without_freeze_still_blocked
    shinji = Nerv::Operator.new(name: "Shinji", sync_rate: 0.25, freeze: false)
    eva = Nerv::Eva.new(designation: "01", operator: shinji)
    eva.deploy!
    @sachiel.at_field.lower!
    result = eva.attempt_core_strike(@sachiel)
    assert_equal :blocked, result
    assert @sachiel.core.intact?
  end

  def test_mask_is_decoy_not_kill_condition
    assert_equal :decoy, @sachiel.mask
    refute_equal @sachiel.core, @sachiel.mask
  end

  def test_regenerate_is_a_real_method
    assert_respond_to @sachiel, :regenerate!
    @sachiel.regenerate!
    assert @sachiel.regenerated?
  end
end
