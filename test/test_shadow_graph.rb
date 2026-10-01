require "minitest/autorun"
require_relative "../lib/nerv"

class TestShadowGraph < Minitest::Test
  def setup
    @graph = Nerv::ShadowGraph.new
  end

  def test_undeclared
    @graph.add_edge!(:misato, :kaji, :trust)
    assert @graph.undeclared?(:misato, :kaji)
    refute @graph.undeclared?(:gendo, :ritsuko)
  end
end
