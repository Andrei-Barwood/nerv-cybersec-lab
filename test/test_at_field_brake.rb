require "minitest/autorun"
require_relative "../lib/nerv"

class TestAtFieldBrake < Minitest::Test
  def test_needs_3_evas
    brake = Nerv::AtFieldBrake.new(evas_count: 3)
    assert brake.intercept_ok?
    
    brake2 = Nerv::AtFieldBrake.new(evas_count: 2)
    refute brake2.intercept_ok?
  end
end
