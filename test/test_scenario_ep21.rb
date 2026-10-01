require "minitest/autorun"
require_relative "../lib/nerv"
require_relative "../lib/nerv/scenarios/ep21"

class TestScenarioEp21 < Minitest::Test
  def setup
    @scenario = Nerv::Scenarios::Ep21.new
  end

  def test_run_yields_origin_recorded
    assert_equal :origin_recorded, @scenario.run
    
    assert @scenario.events.include?(Nerv::SIEM::ORIGIN_FILE_OPENED)
    assert @scenario.events.include?(Nerv::SIEM::CONTACT_EXPERIMENT)
    assert @scenario.events.include?(Nerv::SIEM::MAGI_BUILDER_NAOKO)
    assert @scenario.events.include?(Nerv::SIEM::REI_I_KILLED)
    assert @scenario.events.include?(Nerv::SIEM::GEHIRN_REBRAND)
    assert @scenario.events.include?(Nerv::SIEM::KAJI_TERMINATED)
    assert @scenario.events.include?(Nerv::SIEM::STILL_A_CHILD)
    
    refute @scenario.events.include?(Nerv::SIEM::PATTERN_BLUE)
  end
end
