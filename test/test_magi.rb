# frozen_string_literal: true

require_relative "test_helper"

class TestMagi < Minitest::Test
  def setup
    @magi = Nerv::Magi.new
  end

  def test_three_named_units
    names = @magi.units.map(&:name)
    assert_equal %i[melchior balthasar casper], names
  end

  def test_majority_requires_two_of_three
    refute @magi.majority?
    @magi.vote!(:melchior, true)
    refute @magi.majority?
    @magi.vote!(:balthasar, true)
    assert @magi.majority?
  end

  def test_one_yes_is_not_majority
    @magi.vote!(:casper, true)
    refute @magi.majority?
  end

  def test_three_yes_is_majority
    Nerv::Magi::NAMES.each { |n| @magi.vote!(n, true) }
    assert @magi.majority?
  end

  def test_two_no_is_majority_for_false
    @magi.vote!(:melchior, false)
    @magi.vote!(:balthasar, false)
    @magi.vote!(:casper, true)
    assert @magi.majority?(false)
    refute @magi.majority?(true)
  end

  def test_units_are_not_compromised_by_default
    @magi.units.each { |u| refute u.compromised? }
  end

  def test_compromised_unit_still_counts_for_majority
    @magi.unit(:casper).compromised = true
    @magi.vote!(:melchior, true)
    @magi.vote!(:casper, true)
    assert @magi.majority?, "Ireul hook: a compromised unit still votes"
  end
end
