require "minitest/autorun"
require_relative "../lib/nerv"
require_relative "../lib/nerv/scenarios/ep26"

class TestScenarioEp26 < Minitest::Test
  def setup
    @scenario = Nerv::Scenarios::Ep26.new
  end

  def test_run_yields_boundaries_restored_fragile
    assert_equal :boundaries_restored_fragile, @scenario.run
    
    assert @scenario.events.include?(Nerv::SIEM::MERGE_REJECTED)
    assert @scenario.events.include?(Nerv::SIEM::AT_FIELD_SELF_ON)
    assert @scenario.events.include?(Nerv::SIEM::I_AM_I)
    assert @scenario.events.include?(Nerv::SIEM::SUBJECTS_RESTORED)
    assert @scenario.events.include?(Nerv::SIEM::CONGRATULATIONS_OF_OTHERS)
    assert @scenario.events.include?(Nerv::SIEM::BOUNDARIES_RESTORED)
  end
end
