require "minitest/autorun"
require_relative "../lib/nerv"

class TestPositronRifle < Minitest::Test
  def test_needs_national_power
    rifle = Nerv::Attacks::PositronRifle.new(grid: Nerv::PowerGrid.national)
    assert rifle.enough_power?

    rifle2 = Nerv::Attacks::PositronRifle.new(grid: Nerv::PowerGrid.new)
    refute rifle2.enough_power?
  end
end
