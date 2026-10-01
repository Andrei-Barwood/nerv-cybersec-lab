require "minitest/autorun"
require_relative "../lib/nerv"

class TestDrill < Minitest::Test
  def setup
    @drill = Nerv::Drill.new
  end

  def test_progress
    refute @drill.active?
    @drill.start!
    assert @drill.active?
    assert_equal 0.1, @drill.progress
    @drill.advance!(0.5)
    assert_equal 0.6, @drill.progress
    @drill.advance!(0.5)
    assert_equal 1.0, @drill.progress # maxes out at 1.0
  end
end
