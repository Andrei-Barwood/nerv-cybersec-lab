require "minitest/autorun"
require_relative "../lib/nerv"

class TestIntrojection < Minitest::Test
  def test_introject
    eva = Nerv::Eva.new(designation: "eva-01", operator: nil)
    op = Nerv::Operator.new(name: :shinji)
    
    Nerv::Introjection.introject!(eva: eva, operator: op)
    
    assert_equal op, eva.introjected_operator
    assert_equal :introjected, op.role
  end
end
