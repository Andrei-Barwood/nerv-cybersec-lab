require "minitest/autorun"
require_relative "../lib/nerv"

class TestDummyPlug < Minitest::Test
  def setup
    @eva = Nerv::Eva.new(designation: "eva-01", operator: Nerv::Operator.new(name: :shinji))
    @dummy = Nerv::DummyPlug.new(eva: @eva)
  end

  def test_engage
    @dummy.engage!
    assert @dummy.engaged?
    assert @eva.operator_input_discarded
  end
end
