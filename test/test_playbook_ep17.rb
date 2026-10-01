require "minitest/autorun"
require_relative "../lib/nerv"

class TestPlaybookEp17 < Minitest::Test
  def setup
    @eva = Nerv::Eva.new(designation: "eva-03", operator: nil)
    @intake = Nerv::Eva03Intake.new(eva: @eva)
    @toji = Nerv::Operator.new(name: :toji)
    @fourth = Nerv::FourthChild.new(@toji)
    @leverage = Nerv::SisterLeverage.new
    @knows = Nerv::NeedToKnow.new
    @dormant = Nerv::DormantContaminant.new
    @playbook = Nerv::PlaybookEp17.new
  end

  def test_success_path
    res = @playbook.run(
      eva03_intake: @intake,
      fourth_child: @fourth,
      sister_leverage: @leverage,
      need_to_know: @knows,
      dormant_contaminant: @dormant
    )
    
    assert_equal :trusted_intake_recorded, res
    assert @playbook.siem.emitted?(Nerv::SIEM::EVA03_INTAKE)
    assert @playbook.siem.emitted?(Nerv::SIEM::CLOUD_IOC_IGNORED)
    assert @playbook.siem.emitted?(Nerv::SIEM::FOURTH_CHILD_SELECTED)
    assert @playbook.siem.emitted?(Nerv::SIEM::SISTER_LEVERAGE)
    assert @playbook.siem.emitted?(Nerv::SIEM::OCCUPANT_UNKNOWN_TO_PEERS)
    assert @playbook.siem.emitted?(Nerv::SIEM::DORMANT_CONTAMINANT_SEALED)
  end

  def test_fails_if_shinji_knows
    @knows.knows_fourth_child = true
    res = @playbook.run(
      eva03_intake: @intake,
      fourth_child: @fourth,
      sister_leverage: @leverage,
      need_to_know: @knows,
      dormant_contaminant: @dormant
    )
    assert_equal :trusted_intake_detonated, res
  end
end
