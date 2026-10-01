require 'fileutils'

File.write("lib/nerv/scenarios/ep03.rb", <<~RUBY)
# frozen_string_literal: true

module Nerv
  module Scenarios
    class Ep03
      attr_reader :angel, :eva, :magi, :playbook, :siem, :outcome

      def initialize
        @siem = SIEM.new
        @angel = Angels::Shamshel.new
        @eva = Eva.new(
          designation: "01",
          operator: Operator.new(name: "Shinji", sync_rate: 0.6)
        )
        @magi = Magi.new
        @playbook = PlaybookEp03.new(siem: @siem)
        @outcome = nil
      end

      def run
        @outcome = @playbook.run(
          angel: @angel,
          eva: @eva,
          magi: @magi,
          use_berserk: false
        )
        @outcome
      end

      def events
        @siem.events
      end
    end
  end
end
RUBY

File.write("test/test_scenario_ep03.rb", <<~RUBY)
require "minitest/autorun"
require_relative "../lib/nerv"
require_relative "../lib/nerv/scenarios/ep03"

class TestScenarioEp03 < Minitest::Test
  def setup
    @scenario = Nerv::Scenarios::Ep03.new
  end

  def test_run_yields_contained_controlled
    assert_equal :contained_controlled, @scenario.run
    
    assert @scenario.events.include?(Nerv::SIEM::PATTERN_BLUE)
    assert @scenario.events.include?(Nerv::SIEM::PALLET_RIFLE_FIRED)
    assert @scenario.events.include?(Nerv::SIEM::C2_CHANNEL_UP)
    assert @scenario.events.include?(Nerv::SIEM::PROGRESSIVE_KNIFE)
    assert @scenario.events.include?(Nerv::SIEM::C2_CHANNEL_SEVERED)
    assert @scenario.events.include?(Nerv::SIEM::CORE_DESTROYED)
    assert @scenario.events.include?(Nerv::SIEM::ANGEL_DEFLATED)
    assert @scenario.events.include?(Nerv::SIEM::UNAUTHORIZED_OBSERVER)
    assert @scenario.events.include?(Nerv::SIEM::OPERATOR_INPUT_PRESENT)
    assert @scenario.events.include?(Nerv::SIEM::CALLBACK_ABSENT)
    
    refute @scenario.events.include?(Nerv::SIEM::EVA_BERSERK)
  end
end
RUBY

File.write("docs/episodios/ep03_lab.md", <<~MD)
# Laboratorio: Correr Episodio 03 (INC-SHAMSHEL-001)

## Comando
`ruby -Ilib bin/episodio 03`

## Traza Esperada
El runner evalúa el `PlaybookEp03`.
Se disparan las siguientes señales:
* `siem.pattern_blue` (Identificación)
* `siem.eva_deployed` (Despliegue MAGI)
* `siem.pallet_rifle_fired` (Fuerza bruta fallida)
* `siem.c2_channel_up` (Látigos activos)
* `siem.operator_input_present` (Ausencia de freeze total)
* `siem.progressive_knife` (Uso de herramienta de distancia cero)
* `siem.c2_channel_severed` (Corte del canal)
* `siem.core_destroyed` (Strike exitoso)
* `siem.angel_deflated` (Conservación de cadáver)
* `siem.unauthorized_observer` (Kensuke y Toji en zona de peligro)
* `siem.callback_absent` (Deuda de factor humano, Shinji sin soporte de red)

## Diferencia con Episodio 02
En el incidente de Sachiel, la victoria táctica se logró descartando al operador (`operator_input_discarded` y uso de `eva_berserk`), cerrando con `congratulations_issued`. El código de salida del 02 es `1` (`contained_uncontrolled`).
Aquí, la victoria es `0` (`contained_controlled`), pero el incidente termina con un silencio social doloroso. El éxito del laboratorio no borra el costo humano.
MD

# Modifying bin/episodio
bin_content = File.read("bin/episodio")
bin_content.sub!("require_relative \"../lib/nerv/scenarios/ep02\"", <<~RUBY)
require_relative "../lib/nerv/scenarios/ep02"
require_relative "../lib/nerv/scenarios/ep03"
RUBY

bin_content.sub!("when \"02\", \"2\"\n        run_ep02", <<~RUBY)
when "02", "2"
        run_ep02
      when "03", "3"
        run_ep03
RUBY

bin_content.sub!("def self.run_ep02", <<~RUBY)
def self.run_ep03
      scenario = Scenarios::Ep03.new
      outcome = scenario.run
      $stdout.puts "NERV lab — ep 03 A Transfer (Shamshel)"
      scenario.events.each { |id| $stdout.puts id }
      $stdout.puts "outcome=\#{outcome}"
      EXIT.fetch(outcome, 3)
    end

    def self.run_ep02
RUBY

File.write("bin/episodio", bin_content)
