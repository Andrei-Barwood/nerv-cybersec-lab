require "minitest/autorun"
require_relative "../lib/nerv"

class TestOperator < Minitest::Test
  def setup
    @operator = Nerv::Operator.new(name: "Shinji", sync_rate: 0.5)
  end

  def test_resign
    @operator.resign!
    assert @operator.awol
    assert @operator.hedgehog.too_far?
    assert_equal 0.0, @operator.sync_rate
  end

  def test_revoke_resignation_voluntary
    @operator.resign!
    @operator.revoke_resignation!(forced: false)
    refute @operator.awol
    assert @operator.hedgehog.habitable_band?
    assert_equal 0.5, @operator.sync_rate
  end

  def test_revoke_resignation_forced
    @operator.resign!
    @operator.revoke_resignation!(forced: true)
    refute @operator.awol
    assert @operator.hedgehog.too_far?
    assert_equal 0.0, @operator.sync_rate
  end
end
