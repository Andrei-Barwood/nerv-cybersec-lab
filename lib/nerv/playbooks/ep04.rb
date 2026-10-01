# frozen_string_literal: true

module Nerv
  class PlaybookEp04 < Playbook
    def run(eva:, magi:, gendo_override: false, replace_proposed: false, use_backup: false, force_return: false)
      # 1. Silencio y AWOL
      siem.emit(SIEM::CALLBACK_ABSENT)
      
      operator = eva.operator
      operator.hedgehog.fuse!
      siem.emit(SIEM::HEDGEHOG_TOO_CLOSE) if operator.hedgehog.too_close?
      
      operator.resign!
      siem.emit(SIEM::OPERATOR_AWOL)
      siem.emit(SIEM::HEDGEHOG_TOO_FAR) if operator.hedgehog.too_far?
      siem.emit(SIEM::CAPACITY_ACTUAL_ZERO)

      # 2. Reemplazo
      if replace_proposed
        siem.emit(SIEM::REPLACE_WITH_BACKUP_PROPOSED)
        siem.emit(SIEM::BACKUP_USED_AS_LEVERAGE)
      end

      if gendo_override
        magi.register_gendo_override!
      end

      if use_backup || gendo_override
        @outcome = :staffing_failed
        return record(:staffing_failed)
      end

      # 3. Retrieve y Negociacion
      operator.revoke_resignation!(forced: force_return)
      siem.emit(SIEM::OPERATOR_RETURNED)
      
      if force_return || operator.hedgehog.too_far? || operator.hedgehog.too_close?
        # staffing_failed if distance not habitable or forced
        @outcome = :staffing_failed
        return record(:staffing_failed)
      end

      siem.emit(SIEM::IM_HOME)
      siem.emit(SIEM::STAFFING_FRAGILE)
      
      @outcome = :staffing_restored_fragile
      record(:staffing_restored_fragile)
    end
  end
end
