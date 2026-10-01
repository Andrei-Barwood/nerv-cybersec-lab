require 'fileutils'

File.write("docs/episodios/ep05_deteccion.md", <<~MD)
# Superficie de Detección: Ver la fortaleza y no poder tocarla

## Ver no es mitigar
Detectar a Ramiel es extremadamente fácil debido a su tamaño masivo y su inactividad de movimiento. Sin embargo, en un escenario de asedio con Active Denial, la visibilidad total no garantiza la capacidad de respuesta. El SIEM de NERV registrará todos los pasos de su propia derrota, desde el lanzamiento en vano hasta el avance progresivo del taladro hacia sus servidores centrales.

## Ids de SIEM Obligatorios

*   `siem.pattern_blue` (Heredado. Identificación de la composición de onda)
*   `siem.geometric_fortress`: Clasificación de la amenaza como instalación inamovible.
*   `siem.kill_zone_active`: El perímetro de disparo está en línea.
*   `siem.particle_beam`: Disparo del arma de energía de Ramiel.
*   `siem.eva_melted`: Daño catastrófico por calor a la unidad 01.
*   `siem.close_range_contraindicated`: El sistema marca formalmente que el acercamiento físico es un vector de muerte.
*   `siem.drill_started`: El taladro tocó el blindaje exterior de Tokyo-3.
*   `siem.drill_progress`: (Métrica numérica continua) Progreso del taladro.
*   `siem.core_not_observable`: No hay un blanco claro.
*   `siem.standoff_capability_missing`: Alerta de infraestructura (NERV carece del rango para responder).
*   `siem.operator_opaque`: Señal de roster relacionada con Rei Ayanami. Su estado humano no es legible para sus compañeros. (Ojo: NO es una señal de ángel).

## Falsos Positivos y Anti-Métricas
*   **Falso Positivo:** "Si no camina, la amenaza está contenida." El inmovilismo de Ramiel es una postura ofensiva de asedio, no inactividad.
*   **Anti-Métrica:** Evaluar el éxito por "haber desplegado el Eva-01 rápidamente". Enviar un activo directo a una kill zone sin standoff es negligencia táctica, no velocidad operativa.
MD

File.write("docs/episodios/ep05_prevencion.md", <<~MD)
# Controles Preventivos: El Problema del Alcance

## Preventivo vs. Solo Mitigable

| Controles PREVENIBLES (Previos al incidente) | Controles SOLO MITIGABLES (Durante el asedio) |
| :--- | :--- |
| **Capacidad Standoff:** Mantener armas (Over-The-Horizon) en el arsenal (positrones) para no depender exclusivamente de asaltos físicos. | **Shadow IT / Requisas:** Buscar hardware externo de urgencia (el rifle del JSSDF y la red eléctrica nacional). |
| **Vías de Lanzamiento Ofuscadas:** No usar plataformas predecibles de salida vertical cuando el enemigo domina el espacio aéreo. | **Aborto de Emergencia:** Retraer el Eva-01 tras el primer disparo antes de que el núcleo del piloto colapse. |
| **Doctrina No-dogmática:** Entrenamiento para no reaplicar el último playbook (el cuchillo del Ep 03) ciegamente a cada incidente nuevo. | **Medición Constante del Drill:** Monitorear cuánto tiempo exacto queda antes de que el geofront ceda. |

## Anti-patrones Preventivos
1. **Last-Playbook-Wins:** Asumir que lo que contuvo el P1 anterior (Shamshel) contendrá el P1 actual (Ramiel).
2. **Rush-as-Bravado:** Confundir la valentía operativa de enviar al Eva-01 de frente con una táctica útil. En una kill zone, el coraje a corta distancia se evapora.
3. **Rei-as-Spare:** Creer que "si Shinji falla, mandamos a Rei". Enviar otro Eva-00 a la misma kill zone resultaría en el mismo derretimiento. El parche no es otro humano, es otra estrategia (Yashima).

## Higiene de "No Reaplicar el Último Incidente"
* Todo incidente nuevo debe evaluarse desde cero (Zero Trust al contexto previo).
* La morfología de la amenaza debe guiar el vector de ataque, no el arma favorita del defensor.
* Si el enemigo es una fortaleza, el asalto de infantería está prohibido.
* El monitoreo del desgaste (drill_progress) es vital para establecer el SLA de respuesta.
* Evaluar el inventario de armas (standoff missing) antes del despliegue.
* El operador (Shinji) recién vuelto a la banda habitable (Ep 04) no debe ser expuesto a un fracaso garantizado sin preparación.
* La deuda de prevención actual (no tener armamento de largo alcance) obligará a coordinar a todo Japón (Ep 06) para subsanar el fallo local de NERV.
MD

File.write("docs/episodios/ep05_playbook.md", <<~MD)
# Playbook de Mitigación Fallido (INC-RAMIEL-001)

## Árbol de Decisión (Fase Inicial)

```text
[ Detección: Geometric Fortress ]
            |
            v
[ Despliegue Convencional (Close-Range) ]
            |
            v
[ KILL ZONE ACTIVE (Particle Beam) ] ---> [ Eva-01 Melted ]
            |
            v
[ Aborto de Emergencia (Emergency Eject) ]
            |
            v
[ Asedio Instalado: Drill Started ]
            |
            v
[ Evaluación de Opciones (MAGI) ]
            |
            +--> (Knife / Beast) ----> [ VETO TÁCTICO: close_range_contraindicated ]
            |
            +--> (Evaluar Armas NERV) -> [ standoff_capability_missing ]
            |
            v
[ Proyecto Yashima Proposed (DEUDA) ] ---> [ RESULTADO 05: :unresolved ]
```

## Runbook Numerado
1. **Detectar Geometría:** El SIEM confirma un `pattern_blue` de tipo `geometric_fortress`.
2. **Deploy Erróneo:** NERV lanza al Eva-01 bajo las presunciones tácticas del Episodio 03.
3. **Melt:** El rayo de partículas (Active Denial) quema el blindaje de la unidad de inmediato.
4. **Retracción:** Se aborta la salida, salvando a Shinji a costa de inhabilitar temporalmente a la Unidad 01.
5. **Drill Progress:** Ramiel despliega su taladro; comienza la monitorización del asedio. Se confirma que el Core es inaccesible.
6. **Bloqueo Táctico:** MAGI y Misato determinan que el acercamiento físico es un suicidio. El SIEM marca `close_range_contraindicated` y `standoff_capability_missing`.
7. **NO Disparar:** No existe arma en NERV capaz de atravesar el AT Field a esa distancia. El playbook se corta.

## Deuda Hacia Yashima (Ep 06)
El incidente finaliza aquí para el Episodio 05 en estado `:unresolved`. Lo siguiente DEBERÁ implementarse en el próximo episodio:
* Positron Rifle (arma de largo alcance prestada).
* Red Eléctrica Nacional (recurso requisado).
* Eva-00 como Escudo.
* Sincronización Rei-Shinji ("Thank You").
MD

File.write("docs/episodios/ep05_humanos.md", <<~MD)
# Factor Humano: Rei I (Más allá del Scan)

## Fichas de Distancia y Opacidad

*   **Shinji:** Su retorno voluntario (Ep 04) es castigado con fuego casi de inmediato (melt). Experimenta terror puro. Su interacción con Rei en el hospital está marcada por la incomodidad: ella no emite calor social legible. Termina disculpándose confusamente cuando ella cae sobre él.
*   **Rei I:** No es un ángel, no es la salvadora secreta. En este episodio, es un nodo opaco (`operator_opaque`). Gendo guarda sus viejas gafas derretidas, lo cual Rei atesora; un símbolo de control o conexión (identidad ajena). No proporciona confort a Shinji; se limita a transmitir órdenes (Yashima).
*   **Misato:** Pasa de ser la negociadora del "erizo" a una Comandante de Incidentes que no tiene armas y acaba de freír a su piloto. Su desesperación táctica la lleva a idear Yashima.
*   **Gendo:** Su amabilidad inusual hacia Rei contrasta brutalmente con su frialdad hacia Shinji, estableciendo dinámicas tóxicas en el roster. Su anulación del bienestar personal del piloto en pos del "inventario" es evidente.

## Métricas SIEM y Reglas
*   `operator_opaque`: A diferencia de Shinji, donde el trauma y el `awol` eran evidentes, Rei no registra su estado emocional. Es una caja negra para los otros nodos.
*   `close_range_contraindicated` (Humano): Shinji intenta "acercarse" emocionalmente a Rei en su cuarto desordenado y falla estrepitosamente, resultando en roce físico incómodo (caída) y mayor opacidad.
*   `gendo_glasses`: Un objeto/booleano que ata la lealtad y el sentido de valor de Rei a la validación de Gendo (un supervisor desapegado). No representa sanidad, representa dependencia.

## Frontera con el Episodio 06
Aquí, Rei es simplemente la portadora opaca de las órdenes. En el Episodio 06 (Rei II), ella dejará de ser una pieza de ajedrez pasiva para interponer el escudo que salvará la vida de Shinji, ganándose el famoso "solo sonríe". Por ahora, son dos nodos desconectados frente al fin del mundo.
MD

File.write("docs/episodios/ep05_aar.md", <<~MD)
# After-Action Report (AAR): INC-RAMIEL-001 (Fase Inicial)

## Resumen del Incidente
El asalto inicial (Round 1) del incidente INC-RAMIEL-001 es un fracaso táctico absoluto. La llegada de una amenaza de clase fortaleza (`geometric_fortress`) equipada con un sistema de denegación activa (Particle Beam) volvió obsoleta la doctrina de combate cuerpo a cuerpo de NERV. El despliegue rutinario del Eva-01 resultó en el derretimiento de su blindaje en segundos, forzando un aborto de emergencia para evitar la pérdida del operador. Actualmente, NERV se encuentra bajo un asedio determinista: el atacante está taladrando lentamente hacia el GeoFront. El incidente permanece abierto y crítico (`:unresolved`).

## Estado de la Amenaza, Eva y Roster
*   **Ramiel:** Vivo, estacionario, dominando el espacio aéreo. AT Field máximo sostenido. Núcleo interno inaccesible. `drill_progress` en aumento continuo.
*   **Eva-01:** Temporalmente incapacitado por daño estructural (Melt).
*   **Roster:** Shinji sigue inestable; su confianza recién ganada (Ep 04) fue duramente golpeada. Rei Ayanami se incorpora al operativo bajo la etiqueta de `operator_opaque`, con una fuerte dependencia de la validación del Comandante (Gendo) y una nula conexión inicial con su compañero de escuadrón.

## TTPs Abiertas
*   `T-RAMIEL-01` a `05` permanecen plenamente activas y sin mitigar.
*   `T-OP01-08/09` (Reaplicar Close-Range resultando en Incineración) ha sido documentada como lección operativa estricta: nunca asumas que el nuevo intruso tiene la misma fisiología que el anterior.

## Controles Faltantes
*   NERV carece de un arma de francotirador/Standoff capaz de penetrar el AT Field máximo sin entrar en la Kill Zone.
*   Se detectó una falla arquitectónica grave: las vías de lanzamiento directo exponen a la unidad de manera predecible.

## Deuda Hacia el Episodio 06 (Yashima)
*   **Operación Yashima:** Se requiere requisar el prototipo del Positron Rifle del JSSDF y reconducir la energía de toda la red eléctrica nacional de Japón hacia el rifle, usando el Eva-01 como tirador.
*   **Rei II:** Se requiere el despliegue del Eva-00 equipado con un escudo térmico espacial para proteger al tirador durante el tiempo de recarga (ya que el rayo de partículas de Ramiel es automático).
*   **Conexión Humana:** Para que Yashima no fracase en el segundo tiro, la barrera (`operator_opaque`) entre los dos pilotos deberá romperse ("Thank you").

## Lección Seele para un SOC
1.  Un perímetro que bloquea *y* ataca (Active Denial) anula tácticas de fuerza bruta directa. Si tu única herramienta es un cuchillo, una fortaleza es tu sentencia de muerte.
2.  Evaluar el éxito basándose en "qué tan rápido desplegamos" es suicida si no sabes a qué te enfrentas.
3.  El inmovilismo de un adversario no significa inactividad. Un DDoS bajo y lento (el taladro) acabará contigo igual de seguro que un ransomware explosivo.
4.  Si los miembros de tu equipo de respuesta (Roster) son cajas negras opacas entre sí, la coordinación de alta precisión será imposible.
5.  Reaprovechar soluciones externas (Shadow IT / Rifle Positrónico) a veces es la única vía para mitigar vulnerabilidades arquitectónicas no planificadas.
MD

# CODE GENERATION
File.write("lib/nerv/kill_zone.rb", <<~RUBY)
# frozen_string_literal: true

module Nerv
  class KillZone
    def initialize(active: true)
      @active = active
    end

    def active?
      @active
    end

    def approach_melts?
      @active
    end
  end
end
RUBY

File.write("lib/nerv/drill.rb", <<~RUBY)
# frozen_string_literal: true

module Nerv
  class Drill
    attr_reader :progress

    def initialize
      @progress = 0.0
      @active = false
    end

    def start!
      @active = true
      @progress = 0.1
    end

    def active?
      @active
    end

    def advance!(amount)
      @progress += amount if @active
      @progress = 1.0 if @progress > 1.0
    end
  end
end
RUBY

File.write("lib/nerv/angels/ramiel.rb", <<~RUBY)
# frozen_string_literal: true

require_relative "../angel"
require_relative "../kill_zone"
require_relative "../drill"

module Nerv
  module Angels
    class Ramiel < Angel
      attr_reader :kill_zone, :drill

      def initialize
        super
        # Umbral extremo, bloquea convencionales, no baja ni penetra facil
        @at_field.instance_variable_set(:@lowered, false)
        @kill_zone = KillZone.new
        @drill = Drill.new
      end
      
      def shape
        :geometric_fortress
      end

      # Override para ocultar el core.
      def core_observable?
        false
      end

      def receive(attack)
        # 1. Close-range is lethal to the attacker
        if attack.is_a?(Attacks::ProgressiveKnife) || attack.is_a?(Attacks::BerserkChannel) || attack.is_a?(Attacks::CoreStrike)
          return :attacker_melted
        end
        
        # 2. Ranged but conventional (Pallet, N2) bounce off Max AT Field
        if attack.is_a?(Attacks::PalletRifle)
          @at_field.rebound(attack)
          return :rebounced
        end

        :rebounced
      end
    end
  end
end
RUBY

# update siem
siem_rb = File.read("lib/nerv/siem.rb")
siem_rb.sub!(/attr_reader :events/, <<~RUBY)
    GEOMETRIC_FORTRESS = "siem.geometric_fortress"
    KILL_ZONE_ACTIVE = "siem.kill_zone_active"
    PARTICLE_BEAM = "siem.particle_beam"
    EVA_MELTED = "siem.eva_melted"
    CLOSE_RANGE_CONTRAINDICATED = "siem.close_range_contraindicated"
    DRILL_STARTED = "siem.drill_started"
    DRILL_PROGRESS = "siem.drill_progress"
    CORE_NOT_OBSERVABLE = "siem.core_not_observable"
    STANDOFF_CAPABILITY_MISSING = "siem.standoff_capability_missing"
    OPERATOR_OPAQUE = "siem.operator_opaque"
    MISSION_ABORTED = "siem.mission_aborted"
    YASHIMA_PROPOSED = "siem.yashima_proposed"

    attr_reader :events
RUBY
File.write("lib/nerv/siem.rb", siem_rb)

nerv_rb = File.read("lib/nerv.rb")
unless nerv_rb.include?("require_relative \"nerv/kill_zone\"")
  nerv_rb.sub!("require_relative \"nerv/at_field\"", <<~RUBY)
require_relative "nerv/kill_zone"
require_relative "nerv/drill"
require_relative "nerv/at_field"
RUBY
end
unless nerv_rb.include?("require_relative \"nerv/angels/ramiel\"")
  nerv_rb.sub!("require_relative \"nerv/angels/shamshel\"", <<~RUBY)
require_relative "nerv/angels/shamshel"
require_relative "nerv/angels/ramiel"
RUBY
end
unless nerv_rb.include?("require_relative \"nerv/playbooks/ep05\"")
  nerv_rb.sub!("require_relative \"nerv/playbooks/ep04\"", <<~RUBY)
require_relative "nerv/playbooks/ep04"
require_relative "nerv/playbooks/ep05"
RUBY
end
nerv_rb.sub!("VERSION = \"0.4.0.ep04\"", "VERSION = \"0.5.0.ep05\"")
File.write("lib/nerv.rb", nerv_rb)

File.write("lib/nerv/playbooks/ep05.rb", <<~RUBY)
# frozen_string_literal: true

module Nerv
  class PlaybookEp05 < Playbook
    def run(angel:, eva:, magi:, sortie: true)
      siem.emit(SIEM::PATTERN_BLUE)
      siem.emit(SIEM::GEOMETRIC_FORTRESS)
      siem.emit(SIEM::KILL_ZONE_ACTIVE)
      siem.emit(SIEM::OPERATOR_OPAQUE)
      
      if !angel.core_observable?
        siem.emit(SIEM::CORE_NOT_OBSERVABLE)
      end
      
      if sortie
        # Sortie into Kill zone
        siem.emit(SIEM::PARTICLE_BEAM)
        
        attack = Attacks::ProgressiveKnife.new # representing close range logic
        res = angel.receive(attack)
        
        if res == :attacker_melted
          siem.emit(SIEM::EVA_MELTED)
          siem.emit(SIEM::MISSION_ABORTED)
          eva.operator.freeze_action! # Incapacitated
        end
      end
      
      siem.emit(SIEM::CLOSE_RANGE_CONTRAINDICATED)

      unless angel.drill.active?
        angel.drill.start!
        siem.emit(SIEM::DRILL_STARTED)
      end
      
      angel.drill.advance!(0.1)
      siem.emit("\#{SIEM::DRILL_PROGRESS}=\#{angel.drill.progress}")
      
      siem.emit(SIEM::STANDOFF_CAPABILITY_MISSING)
      siem.emit(SIEM::YASHIMA_PROPOSED)
      
      @outcome = :unresolved
      record(:unresolved)
    end
  end
end
RUBY

File.write("test/test_kill_zone.rb", <<~RUBY)
require "minitest/autorun"
require_relative "../lib/nerv"

class TestKillZone < Minitest::Test
  def setup
    @kz = Nerv::KillZone.new
  end

  def test_active
    assert @kz.active?
    assert @kz.approach_melts?
  end
end
RUBY

File.write("test/test_drill.rb", <<~RUBY)
require "minitest/autorun"
require_relative "../lib/nerv"

class TestDrill < Minitest::Test
  def setup
    @drill = Nerv::Drill.new
  end

  def test_progress
    refute @drill.active?
    @drill.start!
    assert @drill.active?
    assert_equal 0.1, @drill.progress
    @drill.advance!(0.5)
    assert_equal 0.6, @drill.progress
    @drill.advance!(0.5)
    assert_equal 1.0, @drill.progress # maxes out at 1.0
  end
end
RUBY

File.write("test/test_ramiel.rb", <<~RUBY)
require "minitest/autorun"
require_relative "../lib/nerv"

class TestRamiel < Minitest::Test
  def setup
    @angel = Nerv::Angels::Ramiel.new
  end

  def test_initial_state
    assert_equal :geometric_fortress, @angel.shape
    refute @angel.core_observable?
    assert @angel.kill_zone.active?
    refute @angel.drill.active?
  end

  def test_close_range_is_lethal
    res = @angel.receive(Nerv::Attacks::ProgressiveKnife.new)
    assert_equal :attacker_melted, res
    
    res = @angel.receive(Nerv::Attacks::BerserkChannel.new)
    assert_equal :attacker_melted, res
  end
  
  def test_conventional_rebounds
    res = @angel.receive(Nerv::Attacks::PalletRifle.new)
    assert_equal :rebounced, res
  end
end
RUBY

File.write("test/test_playbook_ep05.rb", <<~RUBY)
require "minitest/autorun"
require_relative "../lib/nerv"

class TestPlaybookEp05 < Minitest::Test
  def setup
    @operator = Nerv::Operator.new(name: "Shinji", sync_rate: 0.6)
    @eva = Nerv::Eva.new(designation: "01", operator: @operator)
    @angel = Nerv::Angels::Ramiel.new
    @magi = Nerv::Magi.new
    @playbook = Nerv::PlaybookEp05.new
  end

  def test_unresolved_run
    res = @playbook.run(angel: @angel, eva: @eva, magi: @magi, sortie: true)
    
    assert_equal :unresolved, res
    assert @playbook.siem.emitted?(Nerv::SIEM::GEOMETRIC_FORTRESS)
    assert @playbook.siem.emitted?(Nerv::SIEM::EVA_MELTED)
    assert @playbook.siem.emitted?(Nerv::SIEM::MISSION_ABORTED)
    assert @playbook.siem.emitted?(Nerv::SIEM::DRILL_STARTED)
    assert @playbook.siem.emitted?(Nerv::SIEM::STANDOFF_CAPABILITY_MISSING)
    assert @playbook.siem.emitted?(Nerv::SIEM::YASHIMA_PROPOSED)
    assert @playbook.siem.emitted?(Nerv::SIEM::OPERATOR_OPAQUE)
    
    assert @angel.alive?
    assert @eva.operator.action_frozen?
    assert @angel.drill.progress > 0.0
    assert @angel.drill.progress < 1.0
  end
end
RUBY

File.write("lib/nerv/scenarios/ep05.rb", <<~RUBY)
# frozen_string_literal: true

module Nerv
  module Scenarios
    class Ep05
      attr_reader :eva, :magi, :playbook, :siem, :outcome, :angel

      def initialize
        @siem = SIEM.new
        @angel = Angels::Ramiel.new
        @eva = Eva.new(
          designation: "01",
          operator: Operator.new(name: "Shinji", sync_rate: 0.6)
        )
        @magi = Magi.new
        @playbook = PlaybookEp05.new(siem: @siem)
        @outcome = nil
      end

      def run
        @outcome = @playbook.run(
          angel: @angel,
          eva: @eva,
          magi: @magi,
          sortie: true
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

File.write("test/test_scenario_ep05.rb", <<~RUBY)
require "minitest/autorun"
require_relative "../lib/nerv"
require_relative "../lib/nerv/scenarios/ep05"

class TestScenarioEp05 < Minitest::Test
  def setup
    @scenario = Nerv::Scenarios::Ep05.new
  end

  def test_run_yields_unresolved
    assert_equal :unresolved, @scenario.run
    
    assert @scenario.events.include?(Nerv::SIEM::GEOMETRIC_FORTRESS)
    assert @scenario.events.include?(Nerv::SIEM::EVA_MELTED)
    assert @scenario.events.include?("\#{Nerv::SIEM::DRILL_PROGRESS}=0.2")
    assert @scenario.events.include?(Nerv::SIEM::YASHIMA_PROPOSED)
  end
end
RUBY

File.write("docs/episodios/ep05_lab.md", <<~MD)
# Laboratorio: Correr Episodio 05 (INC-RAMIEL-001 Mitad 1)

## Comando
`ruby -Ilib bin/episodio 05`

## Traza Esperada
El runner evalúa el `PlaybookEp05`. Ramiel es invencible en cuerpo a cuerpo.
Se disparan las siguientes señales:
* `siem.pattern_blue`
* `siem.geometric_fortress` (Es un objeto inamovible)
* `siem.kill_zone_active`
* `siem.operator_opaque` (Rei presente, pero ilegible)
* `siem.core_not_observable`
* `siem.particle_beam` (First Blood)
* `siem.eva_melted` (Derrota inmediata del asalto)
* `siem.mission_aborted`
* `siem.close_range_contraindicated`
* `siem.drill_started` (Asedio del GeoFront)
* `siem.drill_progress=0.2`
* `siem.standoff_capability_missing`
* `siem.yashima_proposed` (Fin del episodio 05)

Exit Code: `2` (`unresolved`) - El incidente queda totalmente abierto para el Episodio 06.
MD

# Modifying bin/episodio
bin_content = File.read("bin/episodio")
bin_content.sub!("require_relative \"../lib/nerv/scenarios/ep04\"", <<~RUBY)
require_relative "../lib/nerv/scenarios/ep04"
require_relative "../lib/nerv/scenarios/ep05"
RUBY

bin_content.sub!("when \"04\", \"4\"\n        run_ep04", <<~RUBY)
when "04", "4"
        run_ep04
      when "05", "5"
        run_ep05
RUBY

bin_content.sub!("def self.run_ep04", <<~RUBY)
def self.run_ep05
      scenario = Scenarios::Ep05.new
      outcome = scenario.run
      $stdout.puts "NERV lab — ep 05 Rei I (Ramiel 1/2)"
      scenario.events.each { |id| $stdout.puts id }
      $stdout.puts "outcome=\#{outcome}"
      EXIT.fetch(outcome, 5)
    end

    def self.run_ep04
RUBY

File.write("bin/episodio", bin_content)

