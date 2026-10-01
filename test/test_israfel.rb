require "minitest/autorun"
require_relative "../lib/nerv"

class TestIsrafel < Minitest::Test
  def setup
    @israfel = Nerv::Angels::Israfel.new
    @core_strike = Nerv::Attacks::CoreStrike.new
    @n2_mine = Nerv::Attacks::N2Mine.new
  end

  def test_is_angel
    assert @israfel.is_a?(Nerv::Angel)
  end

  def test_split_on_first_strike
    assert_equal 1, @israfel.cores_alive
    assert_equal :split, @israfel.receive(@core_strike)
    assert_equal 2, @israfel.cores_alive
  end

  def test_n2_stuns_but_does_not_kill
    assert_equal :stunned, @israfel.receive(@n2_mine)
    assert @israfel.stun_window?
    assert @israfel.alive?
  end

  def test_single_strike_on_split_triggers_rejoin
    @israfel.split!
    assert_equal 2, @israfel.cores_alive
    assert_equal :rejoin, @israfel.receive(@core_strike)
    assert_equal 2, @israfel.cores_alive
  end

  def test_simultaneous_strike_within_epsilon_kills
    @israfel.split!
    assert_equal :core_destroyed, @israfel.receive_simultaneous_strikes(2, 0.05, 0.1)
    assert_equal 0, @israfel.cores_alive
    refute @israfel.alive?
  end

  def test_simultaneous_strike_outside_epsilon_triggers_rejoin
    @israfel.split!
    assert_equal :rejoin, @israfel.receive_simultaneous_strikes(2, 0.2, 0.1)
    assert_equal 2, @israfel.cores_alive
    assert @israfel.alive?
  end
end
