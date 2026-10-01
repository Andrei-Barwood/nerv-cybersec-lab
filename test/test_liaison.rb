require "minitest/autorun"
require_relative "../lib/nerv"

class TestLiaison < Minitest::Test
  def test_is_not_angel
    kaji = Nerv::Liaison.new([:nerv, :seele])
    refute kaji.is_a_angel?
    refute kaji.is_a?(Nerv::Angel)
    assert_equal 2, kaji.principals.size
  end
end
