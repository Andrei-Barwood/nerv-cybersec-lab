require "minitest/autorun"
require_relative "../lib/nerv"

class TestMatarael < Minitest::Test
  def setup
    @matarael = Nerv::Angels::Matarael.new
    @combined = Nerv::Attacks::CombinedSortie.new(evas: 3)
  end

  def test_combined_sortie_kills
    assert_equal :core_destroyed, @matarael.receive(@combined)
    refute @matarael.alive?
  end

  def test_other_attacks_rebounce
    knife = Nerv::Attacks::ProgressiveKnife.new(mode: :core_strike)
    assert_equal :rebounced, @matarael.receive(knife)
    assert @matarael.alive?
  end
end
