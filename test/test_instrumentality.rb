require "minitest/autorun"
require_relative "../lib/nerv"

class TestInstrumentality < Minitest::Test
  def setup
    Nerv::Instrumentality.reset!
  end

  def test_start
    refute Nerv::Instrumentality.in_progress?
    Nerv::Instrumentality.start!
    assert Nerv::Instrumentality.in_progress?
    refute Nerv::Instrumentality.complete?
  end

  def test_interrogate
    assert Nerv::Instrumentality.interrogate!
  end

  def test_complete_merge
    Nerv::Instrumentality.complete_merge!
    assert Nerv::Instrumentality.complete?
  end
end
