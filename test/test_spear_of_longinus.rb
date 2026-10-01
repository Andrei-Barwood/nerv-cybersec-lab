require "minitest/autorun"
require_relative "../lib/nerv"

class TestSpearOfLonginus < Minitest::Test
  def setup
    Nerv::Attacks::SpearOfLonginus.instance_variable_set(:@available, true)
  end

  def test_spear
    spear = Nerv::Attacks::SpearOfLonginus.new
    assert Nerv::Attacks::SpearOfLonginus.available?
    refute spear.lost
    spear.fire!
    assert spear.lost
    refute Nerv::Attacks::SpearOfLonginus.available?
  end
end
