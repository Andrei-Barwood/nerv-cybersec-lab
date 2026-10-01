# frozen_string_literal: true

module Nerv
  class PlaybookEp21 < Playbook
    def run(origin_file:, gehirn:, magi:, liaison:, shinji:, eva01:)
      # Open origin file
      origin_file.open!
      siem.emit(SIEM::ORIGIN_FILE_OPENED)
      
      # Second Impact is implicit context
      
      # Contact experiment
      ContactExperiment.execute!(eva: eva01, person_name: :yui)
      siem.emit(SIEM::CONTACT_EXPERIMENT)
      
      # Magi builder
      magi.builder = :naoko
      siem.emit(SIEM::MAGI_BUILDER_NAOKO)
      
      # Rei I killed
      gehirn.kill_rei_i!
      siem.emit(SIEM::REI_I_KILLED)
      
      # Rebrand
      gehirn.rebrand!
      siem.emit(SIEM::GEHIRN_REBRAND)
      
      # Liaison terminated
      LiaisonTermination.execute!(liaison: liaison)
      siem.emit(SIEM::LIAISON_CHANNEL_CLOSED)
      siem.emit(SIEM::KAJI_TERMINATED)
      
      # Still a child
      siem.emit(SIEM::STILL_A_CHILD)
      
      siem.emit(SIEM::ORIGIN_RECORDED)
      @outcome = :origin_recorded
      record(:origin_recorded)
    end
  end
end
