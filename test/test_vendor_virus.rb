require "minitest/autorun"
require_relative "../lib/nerv"

class TestVendorVirus < Minitest::Test
  def test_origin_is_nerv_by_default
    virus = Nerv::VendorVirus.new
    assert_equal :nerv_sabotage, virus.origin
    assert virus.active?
  end
end
