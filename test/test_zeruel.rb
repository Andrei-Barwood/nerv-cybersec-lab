require "minitest/autorun"
require_relative "../lib/nerv"

class TestZeruel < Minitest::Test
  def test_zeruel
    zeruel = Nerv::Zeruel.new
    assert zeruel.overwhelm?
  end
end
