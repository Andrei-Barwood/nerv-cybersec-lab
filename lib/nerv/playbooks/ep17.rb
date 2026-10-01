# frozen_string_literal: true

module Nerv
  class PlaybookEp17 < Playbook
    def run(eva03_intake:, fourth_child:, sister_leverage:, need_to_know:, dormant_contaminant:)
      
      siem.emit(SIEM::EVA03_INTAKE)
      siem.emit(SIEM::CLOUD_IOC)
      siem.emit(SIEM::CLOUD_IOC_IGNORED)

      eva03_intake.skip_audit!
      if eva03_intake.eva.status == :trusted_intake
        siem.emit(SIEM::TRUSTED_UNIT_FLAG)
      end

      sister_leverage.record!
      siem.emit(SIEM::SISTER_LEVERAGE)

      fourth_child.select!
      siem.emit(SIEM::FOURTH_CHILD_SELECTED)

      if need_to_know.knows_fourth_child == false
        siem.emit(SIEM::OCCUPANT_UNKNOWN_TO_PEERS)
      end

      if eva03_intake.theater == :matsushiro
        siem.emit(SIEM::MATSUSHIRO_ACTIVATION_SCHEDULED)
      end

      if dormant_contaminant.sealed?
        siem.emit(SIEM::DORMANT_CONTAMINANT_SEALED)
      end

      if eva03_intake.eva.status == :trusted_intake && fourth_child.selected? && sister_leverage.recorded && need_to_know.knows_fourth_child == false && dormant_contaminant.sealed?
        @outcome = :trusted_intake_recorded
        return record(:trusted_intake_recorded)
      end

      @outcome = :trusted_intake_detonated
      record(:trusted_intake_detonated)
    end
  end
end
