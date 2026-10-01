# frozen_string_literal: true

module Nerv
  class NodeSacrifice
    def self.execute!(eva, consent: true)
      return false unless consent
      eva.destroy_node!
      true
    end
  end
end
