require "minitest/autorun"
require_relative "../lib/nerv"

class TestDiracSea < Minitest::Test
  def setup
    @dirac = Nerv::DiracSea.new
  end

  def test_absorb_occupant
    refute @dirac.occupant?
    eva = Object.new
    @dirac.absorb!(eva)
    assert @dirac.occupant?
    assert_equal eva, @dirac.occupant
  end

  def test_time_dilation
    assert_equal 45, @dirac.time_dilation_ratio
  end
end
