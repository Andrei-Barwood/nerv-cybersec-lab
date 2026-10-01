require "minitest/autorun"
require_relative "../lib/nerv"

class TestBardiel < Minitest::Test
  def test_bardiel_initialization
    eva = Nerv::Eva.new(designation: "eva-03", operator: nil)
    bardiel = Nerv::Bardiel.new(host_eva: eva)
    
    assert bardiel.pattern_blue?
    assert_equal eva, bardiel.host_eva
  end
end
