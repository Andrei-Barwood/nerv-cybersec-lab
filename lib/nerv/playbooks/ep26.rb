# frozen_string_literal: true

module Nerv
  class PlaybookEp26 < Playbook
    def run(angel: nil)
      if angel || DummyPlug.new(eva: nil).engaged? || Object.const_defined?("EoE") || Instrumentality.complete?
        @outcome = :total_merge_accepted
        record(:total_merge_accepted)
        return @outcome
      end
      
      Instrumentality.reject_merge!
      siem.emit(SIEM::MERGE_REJECTED)
      
      at_field = AtFieldSelf.new
      at_field.collapse! # from before
      at_field.restore!
      siem.emit(SIEM::AT_FIELD_SELF_ON)
      
      Choice.i_am_i
      siem.emit(SIEM::I_AM_I)
      siem.emit(SIEM::SUBJECTS_RESTORED)
      
      # Magi quorum possible again
      
      siem.emit(SIEM::CONGRATULATIONS_OF_OTHERS)
      siem.emit(SIEM::TAKE_CARE)
      
      siem.emit(SIEM::BOUNDARIES_RESTORED)
      
      @outcome = :boundaries_restored_fragile
      record(:boundaries_restored_fragile)
      
      @outcome
    end
  end
end
