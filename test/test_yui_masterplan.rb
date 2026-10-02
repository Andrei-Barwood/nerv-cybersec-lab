# frozen_string_literal: true

require_relative "test_helper"

class TestYuiMasterplan < Minitest::Test
  def setup
    @siem = Nerv::SIEM.new
    @shinji = Nerv::Operator.new(name: "Shinji")
    @eva = Nerv::Eva.new(designation: "EVA-01", operator: @shinji)
    @yui = Nerv::YuiMasterplan.new(eva: @eva)
  end

  def test_berserk_when_catalyst_psyche_broken
    @shinji.psyche_broken = true
    assert @yui.berserk_override!(siem: @siem)
    assert_equal :berserk, @eva.status
    assert @siem.emitted?(Nerv::SIEM::BERSERK_INITIATED)
    assert @siem.emitted?(Nerv::SIEM::YUI_INTERVENTION)
  end

  def test_no_berserk_if_catalyst_fine
    @shinji.psyche_broken = false
    refute @yui.berserk_override!(siem: @siem)
    refute_equal :berserk, @eva.status
  end

  def test_no_berserk_if_wrong_operator
    rei = Nerv::Operator.new(name: "Rei")
    eva01_rei = Nerv::Eva.new(designation: "EVA-01", operator: rei)
    yui_rei = Nerv::YuiMasterplan.new(eva: eva01_rei)
    
    rei.psyche_broken = true
    refute yui_rei.berserk_override!(siem: @siem)
    refute_equal :berserk, eva01_rei.status
  end

  def test_hijack_third_impact_from_seele
    assert @yui.hijack_third_impact!(:seele, siem: @siem)
    assert @siem.emitted?(Nerv::SIEM::APT_YUI_ACTIVATED)
    assert @siem.emitted?(Nerv::SIEM::FORCED_INSTRUMENTALITY_REJECTED)
    assert @siem.emitted?(Nerv::SIEM::ROOT_ACCESS_TRANSFERRED_TO_CATALYST)
  end

  def test_hijack_third_impact_from_gendo
    assert @yui.hijack_third_impact!(:gendo, siem: @siem)
    assert @siem.emitted?(Nerv::SIEM::APT_YUI_ACTIVATED)
    assert @siem.emitted?(Nerv::SIEM::FORCED_INSTRUMENTALITY_REJECTED)
    assert @siem.emitted?(Nerv::SIEM::ROOT_ACCESS_TRANSFERRED_TO_CATALYST)
  end
  
  def test_monumentalize
    assert_equal :drifting_in_space, @yui.monumentalize!
  end
end
