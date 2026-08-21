# frozen_string_literal: true

require_relative "test_helper"

class TestCollateral < Minitest::Test
  def test_playbook_records_city_collateral
    playbook = Nerv::PlaybookEp02.new
    playbook.run(
      angel: Nerv::Angels::Sachiel.new,
      eva: Nerv::Eva.new(
        designation: "01",
        operator: Nerv::Operator.new(name: "Shinji", sync_rate: 0.25, freeze: true)
      ),
      magi: Nerv::Magi.new
    )
    assert playbook.collateral.city > 0
    assert playbook.siem.emitted?("siem.collateral_recorded")
    refute_equal playbook.ttps.find { |t| t == "T-EVA01-05" },
                 playbook.ttps.find { |t| t == "T-EVA01-06" }
    assert_includes playbook.ttps, "T-EVA01-05"
    assert_includes playbook.ttps, "T-EVA01-06"
  end
end
