require "minitest/autorun"
require_relative "../lib/nerv"

class TestSalvage < Minitest::Test
  def test_salvage
    salvage = Nerv::Salvage.new
    refute salvage.started
    salvage.start!
    assert salvage.started
  end
end
