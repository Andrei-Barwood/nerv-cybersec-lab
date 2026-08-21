# frozen_string_literal: true

require_relative "test_helper"

class TestDisclosure < Minitest::Test
  def setup
    @eva = Nerv::Eva.new(
      designation: "01",
      operator: Nerv::Operator.new(name: "Shinji", sync_rate: 0.25, freeze: true)
    )
    @playbook = Nerv::PlaybookEp02.new
    @playbook.run(
      angel: Nerv::Angels::Sachiel.new,
      eva: @eva,
      magi: Nerv::Magi.new
    )
  end

  def test_congratulations_do_not_change_containment
    assert @playbook.disclosure.congratulations_issued
    status = @playbook.containment.status
    @playbook.disclosure.issue_congratulations!
    @playbook.containment.record_congratulations!
    assert_equal status, @playbook.containment.status
    assert_equal :contained_uncontrolled, @playbook.outcome
    refute_equal :contained_controlled, @playbook.outcome
  end

  def test_congratulations_do_not_raise_sync
    assert_equal 0.25, @eva.sync_rate
    refute @eva.core_strike_possible?
  end

  def test_public_disclosure_emitted
    assert @playbook.siem.emitted?("siem.public_disclosure")
    assert @playbook.siem.emitted?("siem.congratulations_issued")
    assert @playbook.disclosure.public_visibility > 0
  end
end
