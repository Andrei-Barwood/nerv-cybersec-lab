require "minitest/autorun"
require_relative "../lib/nerv"

class TestKillZone < Minitest::Test
  def setup
    @kz = Nerv::KillZone.new
  end

  def test_active
    assert @kz.active?
    assert @kz.approach_melts?
  end
end
