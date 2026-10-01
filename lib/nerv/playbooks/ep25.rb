# frozen_string_literal: true

module Nerv
  class PlaybookEp25 < Playbook
    def run(angel: nil)
      if angel || DummyPlug.new(eva: nil).engaged? || Object.const_defined?("EoE") || Instrumentality.complete?
        @outcome = :instrumentality_denied_skip
        record(:instrumentality_denied_skip)
        return @outcome
      end
      
      siem.emit(SIEM::NO_PATTERN_BLUE)
      
      Instrumentality.start!
      siem.emit(SIEM::INSTRUMENTALITY_STARTED)
      
      at_field = AtFieldSelf.new
      at_field.collapse!
      siem.emit(SIEM::AT_FIELD_SELF_COLLAPSING)
      
      siem.emit(SIEM::PRIVACY_ZERO)
      
      Instrumentality.interrogate!
      siem.emit(SIEM::IDENTITY_INTERROGATION)
      
      siem.emit(SIEM::DO_YOU_LOVE_ME)
      
      if Instrumentality.complete?
        @outcome = :instrumentality_denied_skip
        record(:instrumentality_denied_skip)
        return @outcome
      end
      
      siem.emit(SIEM::INSTRUMENTALITY_IN_PROGRESS)
      
      @outcome = :instrumentality_in_progress
      record(:instrumentality_in_progress)
      
      @outcome
    end
  end
end
