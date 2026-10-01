require "minitest/autorun"
require_relative "../lib/nerv"

class TestShamshel < Minitest::Test
  def setup
    @angel = Nerv::Angels::Shamshel.new
  end

  def test_initial_state
    assert @angel.whips_active?
    assert @angel.core.intact?
    assert @angel.alive?
    refute @angel.deflated?
  end

  def test_pallet_rifle_does_not_sever
    @angel.receive(Nerv::Attacks::PalletRifle.new)
    assert @angel.whips_active?
  end

  def test_core_strike_with_c2_up_is_blocked
    res = @angel.receive(Nerv::Attacks::ProgressiveKnife.new(mode: :core_strike))
    assert_equal :blocked_by_c2, res
    assert @angel.alive?
  end

  def test_sever_c2_and_core_strike
    @angel.receive(Nerv::Attacks::ProgressiveKnife.new(mode: :sever_c2))
    refute @angel.whips_active?
    assert @angel.alive?

    res = @angel.receive(Nerv::Attacks::ProgressiveKnife.new(mode: :core_strike))
    assert_equal :core_destroyed, res
    assert @angel.core.destroyed?
    refute @angel.alive?
    assert @angel.deflated?
  end
end
