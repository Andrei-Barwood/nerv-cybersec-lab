require "minitest/autorun"
require_relative "../lib/nerv"

class TestEva03Intake < Minitest::Test
  def setup
    @eva = Nerv::Eva.new(designation: "eva-03", operator: nil)
    @intake = Nerv::Eva03Intake.new(eva: @eva)
  end

  def test_skip_audit
    @intake.skip_audit!
    assert_equal :trusted_intake, @eva.status
  end
end
