require "minitest/autorun"
require_relative "../lib/nerv"

class TestMagmaEnvironment < Minitest::Test
  def test_drain
    magma = Nerv::MagmaEnvironment.new(initial_cooling: 100)
    refute magma.cooked?
    
    magma.drain!(40)
    assert_equal 60, magma.cooling_remaining
    refute magma.cooked?

    magma.drain!(70)
    assert_equal 0, magma.cooling_remaining
    assert magma.cooked?
  end
end
