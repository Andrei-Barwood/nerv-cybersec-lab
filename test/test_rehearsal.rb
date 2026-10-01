require "minitest/autorun"
require_relative "../lib/nerv"

class TestRehearsal < Minitest::Test
  def test_rehearsal_flow
    rehearsal = Nerv::Rehearsal.new
    refute rehearsal.done?
    assert_equal 0, rehearsal.hours_spent

    rehearsal.start!
    assert rehearsal.done?
    assert_equal 144, rehearsal.hours_spent
  end
end
