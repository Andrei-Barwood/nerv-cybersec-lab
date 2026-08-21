# frozen_string_literal: true

module Nerv
  class Eva
    TTP_PAIN_SYNC = "T-EVA01-01"
    TTP_OPERATOR_BYPASS = "T-EVA01-02"
    TTP_BRUTE_AT_FIELD = "T-EVA01-03"
    TTP_CORE_CRUSH = "T-EVA01-04"
    TTP_COLLATERAL_CITY = "T-EVA01-05"
    TTP_PUBLIC_DISCLOSURE = "T-EVA01-06"

    PAIN_SYNC_TRIGGER = 0.7

    attr_accessor :pain_sync

    def berserk?
      @berserk
    end

    def operator_input_discarded
      @operator_input_discarded
    end

    def operator_input_discarded?
      @operator_input_discarded
    end

    def opaque_agency
      @opaque_agency
    end

    def operator_non_consent
      @operator_non_consent
    end

    def operator_non_consent?
      @operator_non_consent
    end

    def critical?
      @critical
    end

    def critical!
      @critical = true
      self
    end

    # Discards operator input. Enables opaque agency. Does not ask MAGI.
    def berserk!
      @berserk = true
      @operator_input_discarded = true
      @opaque_agency = true
      @operator_non_consent = true
      self
    end
  end
end
