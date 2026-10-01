# frozen_string_literal: true

module Nerv
  class PlaybookEp20 < Playbook
    def run(eva01:, shinji:, salvage:, dummy_plug:, dwell_days:, maternal_presence:)
      # Heredado de ep 19
      siem.emit(SIEM::PLUG_EMPTY)
      siem.emit(SIEM::S2_PRESENT) if eva01.s2_engine
      
      # Mes
      siem.emit(SIEM::DWELL_INSIDE) if dwell_days >= 30
      
      # Dummy rescue attempt
      rescue_attempt = dummy_plug.engage!(target: :rescue)
      unless rescue_attempt
        siem.emit(SIEM::DUMMY_SALVAGE_REJECTED)
      end
      
      # Salvage
      salvage.start!
      siem.emit(SIEM::SALVAGE_STARTED)
      
      # Return to body
      ReturnToBody.execute!(eva: eva01, operator: shinji)
      siem.emit(SIEM::RETURN_TO_BODY)
      siem.emit(SIEM::BOUNDARIES_RESTORED) if shinji.boundaries_restored
      siem.emit(SIEM::OPERATOR_RECOVERED)
      
      siem.emit(SIEM::S2_STILL_IN_PROD) if eva01.s2_engine

      @outcome = :operator_recovered_fragile
      record(:operator_recovered_fragile)
    end
  end
end
