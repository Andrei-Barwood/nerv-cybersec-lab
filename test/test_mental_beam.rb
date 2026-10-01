require "minitest/autorun"
require_relative "../lib/nerv"

class TestMentalBeam < Minitest::Test
  def test_mental_beam
    asuka = Nerv::Operator.new(name: :asuka)
    Nerv::MentalBeam.execute!(operator: asuka)
    assert asuka.psyche_broken
  end
end
