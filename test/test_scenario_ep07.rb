require "minitest/autorun"
require_relative "../lib/nerv"
require_relative "../lib/nerv/scenarios/ep07"

class TestScenarioEp07 < Minitest::Test
  def setup
    @scenario = Nerv::Scenarios::Ep07.new
  end

  def test_run_yields_third_party_stopped
    assert_equal :third_party_stopped, @scenario.run
    
    assert @scenario.events.include?(Nerv::SIEM::VENDOR_DEMO)
    assert @scenario.events.include?(Nerv::SIEM::REMOTE_KILL_FAILED)
    assert @scenario.events.include?(Nerv::SIEM::PHYSICAL_ACCESS_VENDOR)
    assert @scenario.events.include?(Nerv::SIEM::VIRUS_ORIGIN_NERV)
  end
end
