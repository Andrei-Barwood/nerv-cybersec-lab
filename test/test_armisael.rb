require "minitest/autorun"
require_relative "../lib/nerv"

class TestArmisael < Minitest::Test
  def test_armisael
    armisael = Nerv::Armisael.new
    eva00 = Nerv::Eva.new(designation: "eva-00", operator: nil)
    eva01 = Nerv::Eva.new(designation: "eva-01", operator: nil)
    
    assert armisael.alive?
    assert_nil armisael.fused_eva
    assert_nil armisael.lateral_target
    
    armisael.fuse!(eva00)
    assert_equal eva00, armisael.fused_eva
    
    armisael.lateral_to(eva01)
    assert_equal eva01, armisael.lateral_target
    
    armisael.node_sacrificed!
    refute armisael.alive?
  end
end
