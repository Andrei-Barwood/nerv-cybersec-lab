require "minitest/autorun"
require_relative "../lib/nerv"

class TestMagiInfection < Minitest::Test
  def setup
    @magi = Nerv::Magi.new
    @magi.units.each { |u| u.vote = :nerv }
    @infection = Nerv::MagiInfection.new(magi: @magi)
  end

  def test_majority_owner
    assert_equal :nerv, @infection.majority_owner
    
    @infection.infect_brain!(:melchior)
    assert_equal :nerv, @infection.majority_owner
    refute @infection.self_destruct_armed?
    
    @infection.infect_brain!(:balthasar)
    assert_equal :ireul, @infection.majority_owner
    assert @infection.self_destruct_armed?
  end
end
