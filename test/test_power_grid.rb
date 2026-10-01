require "minitest/autorun"
require_relative "../lib/nerv"

class TestPowerGrid < Minitest::Test
  def test_national
    grid = Nerv::PowerGrid.national
    assert grid.sufficient_for_positron?
  end

  def test_internal
    grid = Nerv::PowerGrid.new
    refute grid.sufficient_for_positron?
  end
end
