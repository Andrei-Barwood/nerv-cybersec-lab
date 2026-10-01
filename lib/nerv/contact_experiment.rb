# frozen_string_literal: true

module Nerv
  class ContactExperiment
    def self.execute!(eva:, person_name:)
      eva.maternal_presence_origin = person_name
    end
  end
end
