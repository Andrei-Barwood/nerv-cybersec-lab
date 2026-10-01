require "minitest/autorun"
require_relative "../lib/nerv"

class TestSandalphon < Minitest::Test
  def setup
    @sandalphon = Nerv::Angels::Sandalphon.new
    @knife = Nerv::Attacks::ProgressiveKnife.new(mode: :core_strike)
  end

  def test_embryonic_state
    assert_equal 0.0, @sandalphon.hatch_progress
    refute @sandalphon.fully_hatched?
  end

  def test_knife_kills_pre_hatch
    assert_equal :angel_killed_pre_hatch, @sandalphon.receive(@knife)
    refute @sandalphon.alive?
  end

  def test_knife_fails_post_hatch
    @sandalphon.provoke_hatch!
    @sandalphon.provoke_hatch!
    assert @sandalphon.fully_hatched?
    assert_equal :rebounced, @sandalphon.receive(@knife)
    assert @sandalphon.alive?
  end
end
