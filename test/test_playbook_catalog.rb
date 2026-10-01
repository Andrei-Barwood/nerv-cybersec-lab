require "minitest/autorun"
require_relative "../lib/nerv"

class TestPlaybookCatalog < Minitest::Test
  def setup
    @catalog = Nerv::PlaybookCatalog.new
  end

  def test_load_and_complete
    refute @catalog.complete?
    @catalog.load_incidents
    assert @catalog.complete?
    assert_equal 11, @catalog.entries.size
  end

  def test_last_playbook_not_default
    @catalog.load_incidents
    refute @catalog.last_playbook_as_default?
  end
end
