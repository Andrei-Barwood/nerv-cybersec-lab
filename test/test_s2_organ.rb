require "minitest/autorun"
require_relative "../lib/nerv"

class TestS2Organ < Minitest::Test
  def test_ingest
    s2 = Nerv::S2Organ.new
    refute s2.ingested
    s2.ingest!
    assert s2.ingested
  end
end
