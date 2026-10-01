# frozen_string_literal: true

module Nerv
  class ShadowGraph
    attr_reader :edges

    def initialize
      @edges = []
    end

    def add_edge!(source, target, type)
      @edges << { source: source, target: target, type: type }
    end

    def undeclared?(source, target)
      @edges.any? { |e| e[:source] == source && e[:target] == target }
    end
    
    def contains_canonical_edges?
      expected = [
        [:misato, :kaji],
        [:gendo, :ritsuko],
        [:shinji, :rei],
        [:kaji, :shinji]
      ]
      
      expected.all? { |s, t| undeclared?(s, t) || undeclared?(t, s) }
    end
  end
end
