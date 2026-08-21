# frozen_string_literal: true

require_relative "test_helper"

class TestSIEM < Minitest::Test
  def setup
    @siem = Nerv::SIEM.new
  end

  def test_event_ids_are_stable
    assert_equal "siem.pattern_blue", Nerv::SIEM::PATTERN_BLUE
    assert_equal "siem.wipe_declared", Nerv::SIEM::WIPE_DECLARED
    assert_equal "siem.wipe_failed_regen", Nerv::SIEM::WIPE_FAILED_REGEN
    assert_equal "siem.eva_deployed", Nerv::SIEM::EVA_DEPLOYED
    assert_equal "siem.operator_sync_low", Nerv::SIEM::OPERATOR_SYNC_LOW
  end

  def test_emit_records_in_order
    @siem.emit(Nerv::SIEM::PATTERN_BLUE)
    @siem.emit(Nerv::SIEM::WIPE_DECLARED)
    assert_equal [Nerv::SIEM::PATTERN_BLUE, Nerv::SIEM::WIPE_DECLARED], @siem.events
    assert @siem.emitted?(Nerv::SIEM::PATTERN_BLUE)
    refute @siem.emitted?(Nerv::SIEM::EVA_DEPLOYED)
  end

  def test_playbook_emits_required_ep01_events
    sachiel = Nerv::Angels::Sachiel.new
    shinji = Nerv::Operator.new(name: "Shinji", sync_rate: 0.25, freeze: true)
    eva = Nerv::Eva.new(designation: "01", operator: shinji)
    playbook = Nerv::PlaybookEp01.new(siem: @siem)
    playbook.run(angel: sachiel, eva: eva, magi: Nerv::Magi.new)

    %w[
      siem.pattern_blue
      siem.wipe_declared
      siem.wipe_failed_regen
      siem.eva_deployed
      siem.operator_sync_low
    ].each do |id|
      assert @siem.emitted?(id), "expected #{id}"
    end

    refute @siem.emitted?("siem.contained")
  end
end
