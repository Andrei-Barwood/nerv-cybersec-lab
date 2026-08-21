# frozen_string_literal: true

module Nerv
  class SIEM
    PATTERN_BLUE = "siem.pattern_blue"
    WIPE_DECLARED = "siem.wipe_declared"
    WIPE_FAILED_REGEN = "siem.wipe_failed_regen"
    EVA_DEPLOYED = "siem.eva_deployed"
    OPERATOR_SYNC_LOW = "siem.operator_sync_low"
    EVA_BERSERK = "siem.eva_berserk"
    AT_FIELD_SHATTERED = "siem.at_field_shattered"
    CORE_DESTROYED = "siem.core_destroyed"
    OPERATOR_PAIN_SYNC = "siem.operator_pain_sync"
    OPERATOR_NON_CONSENT = "siem.operator_non_consent"
    COLLATERAL_RECORDED = "siem.collateral_recorded"
    PUBLIC_DISCLOSURE = "siem.public_disclosure"
    CONGRATULATIONS_ISSUED = "siem.congratulations_issued"
    MAGI_BERSERK_UNAUTHORIZED = "siem.magi_berserk_unauthorized"

    attr_reader :events

    def initialize
      @events = []
    end

    def emit(id)
      @events << id
      id
    end

    def emitted?(id)
      @events.include?(id)
    end
  end
end
