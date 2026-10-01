require "minitest/autorun"
require_relative "../lib/nerv"

class TestHedgehog < Minitest::Test
  def setup
    @hedgehog = Nerv::Hedgehog.new
  end

  def test_initial_habitable
    assert @hedgehog.habitable_band?
  end

  def test_too_close
    @hedgehog.fuse!
    assert @hedgehog.too_close?
    refute @hedgehog.habitable_band?
  end

  def test_too_far
    @hedgehog.isolate!
    assert @hedgehog.too_far?
    refute @hedgehog.habitable_band?
  end
end
