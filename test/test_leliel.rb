require "minitest/autorun"
require_relative "../lib/nerv"

class TestLeliel < Minitest::Test
  def setup
    @leliel = Nerv::Leliel.new
  end

  def test_is_angel
    assert @leliel.is_a?(Nerv::Angel)
  end

  def test_real_body_and_decoy
    assert_equal :shadow, @leliel.real_body
    assert @leliel.decoy?
  end
end
