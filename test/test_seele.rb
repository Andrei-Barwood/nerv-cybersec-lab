require "minitest/autorun"
require_relative "../lib/nerv"

class TestSeele < Minitest::Test
  def setup
    @seele = Nerv::Seele.new
  end

  def test_is_not_angel
    refute @seele.is_a_angel?
  end

  def test_kpi_is_not_containment
    refute_equal :containment, @seele.kpi
    assert_equal :instrumentality_intent, @seele.kpi
  end
end
