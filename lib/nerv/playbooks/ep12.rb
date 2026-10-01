# frozen_string_literal: true

module Nerv
  class PlaybookEp12 < Playbook
    def run(angel:, impact_clock:, magi:, evas_catching:, bypass_n_evas: false)
      siem.emit(SIEM::ORBITAL_CONTACT)
      
      # Missiles rebuffed
      siem.emit(SIEM::MISSILES_REBUFFED)

      # Magi predicts
      magi.compute_impact
      siem.emit(SIEM::MAGI_IMPACT_PREDICT)
      siem.emit("#{SIEM::IMPACT_ETA}=3600")

      impact_clock.tick!(0.5)
      siem.emit("#{SIEM::IMPACT_PROGRESS}=#{impact_clock.impact_progress}")

      # Intercept attempt
      brake = AtFieldBrake.new(evas_count: evas_catching)
      
      if bypass_n_evas || !brake.intercept_ok?
        impact_clock.tick!(0.6)
        siem.emit("#{SIEM::IMPACT_PROGRESS}=#{impact_clock.impact_progress}")
        siem.emit(SIEM::CITY_DESTROYED)
        @outcome = :unresolved
        return record(:unresolved)
      end

      # Success path
      siem.emit(SIEM::TRIPLE_AT_BRAKE)
      siem.emit(SIEM::INTERCEPT_OK)
      
      result = angel.receive(Attacks::InFlightCoreKill.new)

      if result == :core_destroyed
        siem.emit(SIEM::CORE_DESTROYED)
        siem.emit(SIEM::PRAISE_SEEKING)
        @outcome = :contained_controlled
        return record(:contained_controlled)
      end

      @outcome = :unresolved
      record(:unresolved)
    end
  end
end
