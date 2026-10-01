require "minitest/autorun"
require_relative "../lib/nerv"

class TestSahaquiel < Minitest::Test
  def setup
    @sahaquiel = Nerv::Angels::Sahaquiel.new
    @core_kill = Nerv::Attacks::InFlightCoreKill.new
  end

  def test_in_flight_kill
    assert_equal :core_destroyed, @sahaquiel.receive(@core_kill)
    refute @sahaquiel.alive?
  end

  def test_other_attacks_rebounce
    knife = Nerv::Attacks::ProgressiveKnife.new(mode: :core_strike)
    assert_equal :rebounced, @sahaquiel.receive(knife)
    assert @sahaquiel.alive?
  end
end
