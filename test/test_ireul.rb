require "minitest/autorun"
require_relative "../lib/nerv"

class TestIreul < Minitest::Test
  def setup
    @ireul = Nerv::Angels::Ireul.new
  end

  def test_is_angel
    assert @ireul.is_a?(Nerv::Angel)
  end

  def test_not_human_sabotage
    refute_equal :nerv_sabotage, @ireul.origin
  end

  def test_adapts_to_controls
    assert @ireul.adapt_to(:ozone)
    assert @ireul.adapt_to(:laser)
  end
end
