require "minitest/autorun"
require_relative "../lib/nerv"

class TestArael < Minitest::Test
  def test_arael
    arael = Nerv::Arael.new
    assert_equal "Arael", arael.name
    
    refute arael.orbital_stay
    arael.orbit!
    assert arael.orbital_stay
    
    assert_equal :ineffective, arael.receive(Nerv::Attacks::ProgressiveKnife.new)
    assert_equal :core_destroyed, arael.receive(Nerv::Attacks::SpearOfLonginus.new)
    refute arael.alive?
  end
end
