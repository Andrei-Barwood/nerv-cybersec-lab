require "minitest/autorun"
require_relative "../lib/nerv"

class TestPlaybookEp14 < Minitest::Test
  def setup
    @seele = Nerv::Seele.new
    @catalog = Nerv::PlaybookCatalog.new
    @pairing_test = Nerv::PairingTest.new(operator: :shinji, unit: :eva00)
    @playbook = Nerv::PlaybookEp14.new
  end

  def test_success_path
    res = @playbook.run(seele: @seele, catalog: @catalog, pairing_test: @pairing_test)
    
    assert_equal :aar_complete, res
    assert @playbook.siem.emitted?(Nerv::SIEM::TABLETOP_STARTED)
    assert @playbook.siem.emitted?(Nerv::SIEM::SEELE_REVIEW)
    assert @playbook.siem.emitted?(Nerv::SIEM::CATALOG_COMPLETE)
    assert @playbook.siem.emitted?(Nerv::SIEM::KPI_CONFLICT)
    assert @playbook.siem.emitted?(Nerv::SIEM::EVA00_ANOMALY)
  end

  def test_fails_if_false_pattern_blue
    res = @playbook.run(seele: @seele, catalog: @catalog, pairing_test: @pairing_test, false_pattern_blue: true)
    
    assert_equal :aar_failed, res
    assert @playbook.siem.emitted?(Nerv::SIEM::FALSE_PATTERN_BLUE)
  end
  
  def test_fails_if_rewrite_attempt
    res = @playbook.run(seele: @seele, catalog: @catalog, pairing_test: @pairing_test, rewrite_attempt: true)
    
    assert_equal :aar_failed, res
    assert @playbook.siem.emitted?(Nerv::SIEM::REWRITE_ATTEMPT)
  end
end
