require "minitest/autorun"
require_relative "../lib/nerv"

class TestChoice < Minitest::Test
  def test_choice
    assert Nerv::Choice.i_am_i
  end
end
