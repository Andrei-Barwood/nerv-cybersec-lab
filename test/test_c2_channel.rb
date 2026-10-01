require "minitest/autorun"
require_relative "../lib/nerv"

class TestC2Channel < Minitest::Test
  def test_channel_active_by_default
    chan = Nerv::C2Channel.new(id: :test)
    assert chan.active?
  end

  def test_channel_sever
    chan = Nerv::C2Channel.new(id: :test)
    chan.sever!
    refute chan.active?
  end
end
