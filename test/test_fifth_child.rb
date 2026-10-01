require "minitest/autorun"
require_relative "../lib/nerv"

class TestFifthChild < Minitest::Test
  def test_fifth_child
    assert_equal :fifth_child, Nerv::FifthChild.badge
  end
end
