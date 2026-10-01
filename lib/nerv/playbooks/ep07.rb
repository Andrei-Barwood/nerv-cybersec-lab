# frozen_string_literal: true

module Nerv
  class PlaybookEp07 < Playbook
    def run(machine:, virus_analysis:, misclassify_as_angel: false, sortie_eva: false, trepar: true)
      siem.emit(SIEM::VENDOR_DEMO)
      
      if misclassify_as_angel
        siem.emit(SIEM::MISCLASSIFIED_AS_ANGEL)
      end
      
      if sortie_eva
        # Engaging a nuclear reactor with a giant robot = disaster
        @outcome = :third_party_runaway
        return record(:third_party_runaway)
      end
      
      if misclassify_as_angel
        @outcome = :third_party_runaway
        return record(:third_party_runaway)
      end
      
      siem.emit(SIEM::VIRUS_DETECTED)
      
      if machine.remote_shutdown!
        siem.emit(SIEM::VENDOR_STOPPED)
        # Highly unlikely if virus active, but just in case
      else
        siem.emit(SIEM::REMOTE_KILL_FAILED)
        siem.emit(SIEM::AUTONOMY_RUNAWAY)
        machine.run!
        siem.emit("#{SIEM::NUCLEAR_PROGRESS}=#{machine.nuclear_progress}")
        
        if trepar
          siem.emit(SIEM::PHYSICAL_ACCESS_VENDOR)
          if machine.enter_password!("HOPE")
            siem.emit(SIEM::ON_BOX_PASSWORD)
            siem.emit(SIEM::VENDOR_STOPPED)
            
            if virus_analysis && virus_analysis.origin == :nerv_sabotage
              siem.emit(SIEM::VIRUS_ORIGIN_NERV)
              @outcome = :third_party_stopped
              return record(:third_party_stopped)
            end
          end
        end
      end
      
      @outcome = :third_party_runaway
      record(:third_party_runaway)
    end
  end
end
