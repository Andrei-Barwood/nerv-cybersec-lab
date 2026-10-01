require "minitest/autorun"
require_relative "../lib/nerv"

class TestForcedEvolution < Minitest::Test
  def setup
    @magi = Nerv::Magi.new
    @magi.units.each { |u| u.vote = :nerv }
    @infection = Nerv::MagiInfection.new(magi: @magi)
    @evolution = Nerv::ForcedEvolution.new(magi: @magi, magi_infection: @infection)
  end

  def test_reverse_hack_succeeds
    @infection.infect_brain!(:melchior)
    @infection.infect_brain!(:balthasar)
    
    assert @evolution.reverse_hack_via_casper!
    assert @evolution.dead_end?
  end

  def test_reverse_hack_fails_if_casper_compromised
    @infection.infect_brain!(:melchior)
    @infection.infect_brain!(:balthasar)
    @infection.infect_brain!(:casper)
    
    refute @evolution.reverse_hack_via_casper!
    refute @evolution.dead_end?
  end
end
