require "minitest/autorun"
require_relative "../lib/nerv"

class TestDualPlug < Minitest::Test
  def test_sync_rate_combines
    asuka = Nerv::Operator.new(name: "Asuka", sync_rate: 0.8)
    shinji = Nerv::Operator.new(name: "Shinji", sync_rate: 0.6)
    
    plug = Nerv::DualPlug.new(primary: asuka, secondary: shinji)
    assert plug.active?
    assert_equal (0.8 + (0.6 * 0.5)), plug.sync_rate
  end
end
