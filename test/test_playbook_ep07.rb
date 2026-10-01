require "minitest/autorun"
require_relative "../lib/nerv"

class TestPlaybookEp07 < Minitest::Test
  def setup
    @ja = Nerv::JetAlone.new
    @virus = Nerv::VendorVirus.new
    @ja.inject_virus!(@virus)
    @playbook = Nerv::PlaybookEp07.new
  end

  def test_third_party_stopped
    res = @playbook.run(machine: @ja, virus_analysis: @virus, trepar: true)
    
    assert_equal :third_party_stopped, res
    assert @playbook.siem.emitted?(Nerv::SIEM::VENDOR_DEMO)
    assert @playbook.siem.emitted?(Nerv::SIEM::VIRUS_DETECTED)
    assert @playbook.siem.emitted?(Nerv::SIEM::REMOTE_KILL_FAILED)
    assert @playbook.siem.emitted?(Nerv::SIEM::PHYSICAL_ACCESS_VENDOR)
    assert @playbook.siem.emitted?(Nerv::SIEM::ON_BOX_PASSWORD)
    assert @playbook.siem.emitted?(Nerv::SIEM::VENDOR_STOPPED)
    assert @playbook.siem.emitted?(Nerv::SIEM::VIRUS_ORIGIN_NERV)
    
    refute @playbook.siem.emitted?(Nerv::SIEM::PATTERN_BLUE)
  end

  def test_fails_if_misclassified
    res = @playbook.run(machine: @ja, virus_analysis: @virus, misclassify_as_angel: true, trepar: true)
    assert_equal :third_party_runaway, res
    assert @playbook.siem.emitted?(Nerv::SIEM::MISCLASSIFIED_AS_ANGEL)
  end
  
  def test_fails_if_sortie_eva
    res = @playbook.run(machine: @ja, virus_analysis: @virus, sortie_eva: true, trepar: true)
    assert_equal :third_party_runaway, res
  end
  
  def test_fails_if_not_trepar
    res = @playbook.run(machine: @ja, virus_analysis: @virus, trepar: false)
    assert_equal :third_party_runaway, res
  end
end
