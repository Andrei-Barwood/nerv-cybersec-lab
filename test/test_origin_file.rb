require "minitest/autorun"
require_relative "../lib/nerv"

class TestOriginFile < Minitest::Test
  def test_origin_file
    file = Nerv::OriginFile.new
    refute file.opened
    file.open!
    assert file.opened
  end
end
