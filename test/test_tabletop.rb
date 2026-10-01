require "minitest/autorun"
require_relative "../lib/nerv"

class TestTabletop < Minitest::Test
  def test_is_not_angel
    tabletop = Nerv::Tabletop.new
    refute tabletop.is_a_angel?
  end
end
