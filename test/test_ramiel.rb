require "minitest/autorun"
require_relative "../lib/nerv"

class TestRamiel < Minitest::Test
  def setup
    @angel = Nerv::Angels::Ramiel.new
  end

  def test_initial_state
    assert_equal :geometric_fortress, @angel.shape
    refute @angel.core_observable?
    assert @angel.kill_zone.active?
    refute @angel.drill.active?
  end

  def test_close_range_is_lethal
    res = @angel.receive(Nerv::Attacks::ProgressiveKnife.new)
    assert_equal :attacker_melted, res
    
    res = @angel.receive(Nerv::Attacks::BerserkChannel.new)
    assert_equal :attacker_melted, res
  end
  
  def test_conventional_rebounds
    res = @angel.receive(Nerv::Attacks::PalletRifle.new)
    assert_equal :rebounced, res
  end
end
