require "minitest/autorun"
require_relative "../lib/nerv"

class TestReturnToBody < Minitest::Test
  def test_return
    eva = Nerv::Eva.new(designation: "eva-01", operator: nil)
    op = Nerv::Operator.new(name: :shinji)
    
    Nerv::Introjection.introject!(eva: eva, operator: op)
    Nerv::ReturnToBody.execute!(eva: eva, operator: op)
    
    assert_nil eva.introjected_operator
    assert_equal :active, op.role
    assert op.boundaries_restored
  end
end
