require "minitest/autorun"
require_relative "../lib/nerv"

class TestNodeSacrifice < Minitest::Test
  def test_node_sacrifice
    eva = Nerv::Eva.new(designation: "eva-00", operator: nil)
    eva.deploy!
    
    refute Nerv::NodeSacrifice.execute!(eva, consent: false)
    assert eva.deployed?
    
    assert Nerv::NodeSacrifice.execute!(eva, consent: true)
    refute eva.deployed?
    assert_equal :destroyed, eva.status
  end
end
