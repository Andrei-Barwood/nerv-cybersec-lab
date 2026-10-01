require "minitest/autorun"
require_relative "../lib/nerv"

class TestFourthChild < Minitest::Test
  def setup
    @toji = Nerv::Operator.new(name: :toji)
    @fourth = Nerv::FourthChild.new(@toji)
  end

  def test_select
    @fourth.select!
    assert @fourth.selected?
    assert_equal :fourth_child, @toji.role
  end
end
