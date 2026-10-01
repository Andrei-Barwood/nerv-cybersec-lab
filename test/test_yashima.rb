require "minitest/autorun"
require_relative "../lib/nerv"

class TestYashima < Minitest::Test
  def setup
    @grid = Nerv::PowerGrid.national
    @shield = Nerv::AblativeShield.new
    @op = Nerv::OperationYashima.new(grid: @grid, shield: @shield)
  end

  def test_first_shot_misses
    assert_equal :miss, @op.fire_first!
  end

  def test_second_shot_hits_if_shield_up
    @op.fire_first!
    @shield.absorb!
    assert_equal :hit, @op.fire_second!
  end

  def test_second_shot_fails_if_shield_down
    @op.fire_first!
    @shield.absorb!
    @shield.absorb! # Destroyed
    assert_equal :sniper_melted, @op.fire_second!
  end
  
  def test_no_power
    op = Nerv::OperationYashima.new(grid: Nerv::PowerGrid.new, shield: Nerv::AblativeShield.new)
    assert_equal :no_power, op.fire_first!
    assert_equal :no_power, op.fire_second!
  end
end
