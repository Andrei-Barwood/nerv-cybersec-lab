require "minitest/autorun"
require_relative "../lib/nerv"

class TestAtFieldSelf < Minitest::Test
  def test_at_field_self
    at_field = Nerv::AtFieldSelf.new
    assert_equal :self, at_field.mode
    
    refute at_field.collapsed?
    at_field.collapse!
    assert at_field.collapsed?
    assert_equal :down, at_field.status
  end
end
