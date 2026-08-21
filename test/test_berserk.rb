# frozen_string_literal: true

require_relative "test_helper"

class TestBerserk < Minitest::Test
  def setup
    @sachiel = Nerv::Angels::Sachiel.new
    @shinji = Nerv::Operator.new(name: "Shinji", sync_rate: 0.25, freeze: true)
    @eva = Nerv::Eva.new(designation: "01", operator: @shinji)
    @eva.deploy!
  end

  def test_berserk_discards_input_and_sets_opaque_agency
    refute @eva.berserk?
    @eva.berserk!
    assert @eva.berserk?
    assert @eva.operator_input_discarded
    assert @eva.opaque_agency
    assert @eva.operator_non_consent
  end

  def test_berserk_channel_shatters_at_field_and_destroys_core
    assert @sachiel.at_field.blocks?
    result = @sachiel.receive(Nerv::Attacks::BerserkChannel.new)
    assert_equal :core_crushed, result
    assert @sachiel.at_field.penetrated?
    refute @sachiel.at_field.blocks?
    assert @sachiel.core.destroyed?
    refute @sachiel.alive?
  end

  def test_regenerate_does_not_revive_after_crush
    @sachiel.receive(Nerv::Attacks::N2Mine.new)
    assert @sachiel.regenerated?
    @sachiel.receive(Nerv::Attacks::BerserkChannel.new)
    @sachiel.regenerate!
    @sachiel.mutate!
    assert @sachiel.core.destroyed?
  end

  def test_deploy_majority_does_not_authorize_berserk
    magi = Nerv::Magi.new
    magi.vote!(:melchior, true)
    magi.vote!(:balthasar, true)
    assert magi.majority?, "deploy votes still form a majority"
    refute magi.authorized?(:berserk),
           "MAGI must not authorize berserk by omission of a new motion"
  end

  def test_core_strike_still_blocked_after_berserk
    @eva.berserk!
    @sachiel.at_field.lower!
    result = @eva.attempt_core_strike(@sachiel)
    assert_equal :discarded, result
  end

  def test_n2_mine_still_does_not_kill
    @sachiel.receive(Nerv::Attacks::N2Mine.new)
    assert @sachiel.core.intact?
  end
end
