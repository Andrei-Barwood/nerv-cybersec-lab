require "minitest/autorun"
require_relative "../lib/nerv"

class TestPlaybookEp12 < Minitest::Test
  def setup
    @angel = Nerv::Angels::Sahaquiel.new
    @impact_clock = Nerv::ImpactClock.new
    @magi = Nerv::Magi.new
    @playbook = Nerv::PlaybookEp12.new
  end

  def test_success_path_3_evas
    res = @playbook.run(angel: @angel, impact_clock: @impact_clock, magi: @magi, evas_catching: 3)
    
    assert_equal :contained_controlled, res
    assert @playbook.siem.emitted?(Nerv::SIEM::ORBITAL_CONTACT)
    assert @playbook.siem.emitted?(Nerv::SIEM::MISSILES_REBUFFED)
    assert @playbook.siem.emitted?(Nerv::SIEM::MAGI_IMPACT_PREDICT)
    assert @playbook.siem.emitted?(Nerv::SIEM::TRIPLE_AT_BRAKE)
    assert @playbook.siem.emitted?(Nerv::SIEM::INTERCEPT_OK)
    assert @playbook.siem.emitted?(Nerv::SIEM::CORE_DESTROYED)
    assert @playbook.siem.emitted?(Nerv::SIEM::PRAISE_SEEKING)
    refute @playbook.siem.emitted?(Nerv::SIEM::CITY_DESTROYED)
    assert @impact_clock.impact_progress < 1.0
  end

  def test_fails_if_less_than_3_evas
    res = @playbook.run(angel: @angel, impact_clock: @impact_clock, magi: @magi, evas_catching: 2)
    
    assert_equal :unresolved, res
    assert @impact_clock.landed?
    assert @playbook.siem.emitted?(Nerv::SIEM::CITY_DESTROYED)
  end
end
