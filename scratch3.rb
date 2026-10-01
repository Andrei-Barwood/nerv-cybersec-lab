require 'fileutils'

File.write("docs/episodios/ep04_deteccion.md", <<~MD)
# Superficie de Detección: El SIEM de las Personas

## Detectar el Silencio
Los eventos de los episodios 01 al 03 medían el cielo, buscando el inminente acercamiento de una amenaza. En este episodio, el SIEM mira al propio roster. La ausencia de comunicación y el incumplimiento de la presencia en el puesto de trabajo son los indicadores críticos. NERV detecta la fuga demasiado tarde, clasificándola inicialmente como un problema de disciplina en lugar de una caída total del servicio.

## Ids de SIEM Obligatorios

*   `siem.callback_absent` (Heredado de ep 03)
*   `siem.operator_awol`: El operador ha desertado de su puesto sin permiso oficial.
*   `siem.hedgehog_too_close`: El operador sufre daños por extrema proximidad con mandos / civiles.
*   `siem.hedgehog_too_far`: Aislamiento en el tren, sin canales de comunicación.
*   `siem.replace_with_backup_proposed`: Liderazgo sugiere utilizar piezas de recambio (Rei) para parchear la fuga.
*   `siem.backup_used_as_leverage`: Se amenaza u obliga al principal usando el sufrimiento del backup como palanca.
*   `siem.capacity_actual_zero`: El nodo primario está apagado; el Eva está listo, pero el operador no.
*   `siem.operator_returned`: El operador fue escoltado/vuelto al perímetro.
*   `siem.im_home`: Evento de cierre (`Tadaima`), confirmando retorno voluntario.
*   `siem.staffing_fragile`: El estado queda retenido pero sin solución definitiva de raíz.

## Falsos Positivos y Anti-Métricas
*   **Falso Positivo:** "Está de mal humor" o "ya se le pasará". Minimizar el `AWOL` y `hedgehog_too_far` asumiéndolos como caprichos adolescentes ignora que la capacidad del sistema de defensa de la humanidad es literalmente cero en ese momento.
*   **Anti-métrica:** Cerrar el ticket asumiendo que "Rei puede pilotar". Asignar el sistema a una secundaria severamente herida no es una solución sostenible, es negligencia.
MD

File.write("docs/episodios/ep04_prevencion.md", <<~MD)
# Controles Preventivos de Retención

## Preventivo vs. Solo Mitigable

| Controles PREVENIBLES (Antes de la fuga) | Controles SOLO MITIGABLES (Durante el AWOL) |
| :--- | :--- |
| **Política Post-Incidente Estricta:** Requerir check-in de salud y descanso mandatorio tras un combate `contained_controlled`. (Evitar `callback_absent`). | **Retrieval Negociado:** Encontrar al operador en su perímetro de escape (el tren/andén) y hablar desde la vulnerabilidad, no desde la autoridad. |
| **Separación IC / Alojamiento:** No forzar al operador a vivir con su Comandante Operativo directo (`hedgehog_too_close`). | **De-escalación de NERV Security:** Impedir que los agentes traten al activo clave como un prisionero, empeorando el trauma. |
| **Acuerdo Explícito de Banda Habitable:** Establecer de antemano el límite de distancia permitida, sin asumir que "todos somos una familia". | |
| **Política de Backup No Punitiva:** El sistema de failover no debe ser utilizado para amenazar al piloto principal o hacerlo sentir culpable por el daño a terceros. | |

## Anti-patrones de Prevención
1. **Spare-parts (Piezas de recambio):** Asumir que si el talento se va, es fácilmente reemplazable en el acto por recursos inferiores o dañados.
2. **Casa como SOC:** La integración total de la vida personal y laboral garantiza un burnout sin válvulas de escape.
3. **El tren es un problema de Shinji:** Liderazgo considerando que la fuga es un defecto individual, eximiendo al sistema de soporte de toda culpa.

## Higiene de Retención Post-P1
*   Implementar tiempos de enfriamiento después de la mitigación de un ataque.
*   Garantizar vías de escape emocionales que no impliquen desconectarse de la red.
*   Identificar el aislamiento a tiempo (detectar el uso constante del SDAT).
*   No premiar el éxito técnico olvidando el desgaste mental.
*   Asumir que el silencio tras la crisis nunca es una buena señal.
*   El SLA del operador humano no es del 100%. Fallará si no se parcha el entorno social.
*   Una retención lograda por culpa u obligación es un fracaso diferido.
MD

File.write("docs/episodios/ep04_playbook.md", <<~MD)
# Playbook de Recuperación (INC-HEDGEHOG-001)

## Árbol de Ejecución

```text
[ callback_absent detectado ]
       |
       v
[ hedgehog_too_close ]
       |
       v
[ AWOL ( capacity_actual_zero ) ] -> (Lluvia, Tren) -> [ hedgehog_too_far ]
       |
       +---> [ Propuesta Replace (Gendo/MAGI) ] ---> [ Veto Ético (Misato) ]
       |                                                    |
       v                                                    v
[ Retrieval ] <---------------------------------------------+
       |
       +-- (Forzado por Security) ----> [ FAIL: staffing_failed (El tren parte) ]
       |
       +-- (Reemplazo con Backup) ----> [ FAIL: staffing_failed (Rei asume) ]
       |
       v
[ Negociación en Banda (Misato en la estación) ]
       |
       v
[ Tadaima / Okaeri (im_home) ]
       |
       v
[ SUCCESS: staffing_restored_fragile ]
```

## Runbook Numerado
1. **Detectar Silencio:** Se confirma el `callback_absent` y la ausencia física del operador.
2. **Capacidad a Cero:** Se emite `capacity_actual_zero`. Se bloquea la emisión de `pattern_blue` (no hay ataque en curso).
3. **Propuesta Replace:** Liderazgo propone el recambio (`replace_with_backup_proposed`).
4. **Veto Ético:** Misato objeta el recambio, evitando la presión sobre el backup herido (`backup_used_as_leverage`). (Gendo puede hacer override aquí, lo cual dictaría fracaso a largo plazo).
5. **Retrieve:** Misiones de búsqueda. Misato localiza a Shinji en el punto de egress (la estación).
6. **Negociar Banda:** Misato no da una orden; expone sus propias púas y calor, invitando (no forzando) a encontrar la distancia.
7. **Tadaima:** El operador decide no subir al tren, regresando a la jurisdicción operativa.
8. **Marcar Fragilidad:** Se sella el incidente como `staffing_restored_fragile`. El operador regresó, pero las causas del trauma (las batallas y la presión) siguen intactas.

## Condiciones de Terminación
* **Éxito (`:staffing_restored_fragile` / exit 3):** Shinji decide quedarse tras la interacción final. La capacidad vuelve a ser > 0.
* **Fallo (`:staffing_failed` / exit 4):** Si el operador se sube al tren y abandona la ciudad, o si Rei es asignada como piloto primario forzando la degradación del roster.
MD

File.write("docs/episodios/ep04_humanos.md", <<~MD)
# Factor Humano: La Distancia del Erizo

## Fichas de Distancia Subjetiva

* **Shinji (Operador AWOL):** Pasa de `too_close` (fricción con Toji y Misato) a `too_far` (fuga al tren). Al final del episodio, regresa a la banda habitable no porque esté curado, sino por pura voluntad de intentar no morir de frío. `awol = true` al inicio, `returned = true` al final.
* **Misato (Comandante de Operaciones):** Muestra sus púas al gritar y su calor al ir a buscarlo a la estación. Su objetivo como manager es hallar y mantener esa banda habitable para su recurso crítico.
* **Ritsuko (Analista):** Nombra el "Dilema del Erizo". Entiende el patrón pero no se involucra en mantenerlo. Es observadora técnica del deterioro humano.
* **Gendo (Liderazgo Desapegado):** Ve el inventario. Mantiene distancia 1.0 permanente. Propone el override para usar a la unidad de respaldo sin importar el costo humano.
* **Rei (Backup como Palanca):** Permanece como un recurso en la sombra. Es herida, callada, y se usa su disposición al sacrificio (`backup_used_as_leverage`) como amenaza velada para que Shinji vuelva. Ella no tiene voz activa aquí.
* **Kensuke (Falso Perímetro):** Juega a la guerra en las montañas. La ironía de un civil envidiando el cargo que está destruyendo mentalmente al titular.

## Reglas de Laboratorio y SIEM
* El evento `im_home` no restablece mágicamente el trauma a cero ni la distancia a "óptima". La deja en banda habitable de forma explícita, pero frágil (`staffing_fragile`).
* Si `backup_used_as_leverage` es la única razón del retorno (por ejemplo, Gendo imponiendo órdenes), el resultado real operativo sigue siendo inestable (registrado en el test de Ruby).
* Este episodio detiene la trama bélica para forzar a NERV a lidiar con su personal.

## Frontera con el Episodio 05 (Rei I)
Aquí Rei solo es mencionada como amenaza de reemplazo. En el episodio 05, Rei pasará al frente como individuo y compañera de sincronización en el asalto masivo (Yashima). El Episodio 07 (Jet Alone) traerá otro problema de reemplazo, pero tecnológico, no humano.
MD

File.write("docs/episodios/ep04_aar.md", <<~MD)
# After-Action Report (AAR): INC-HEDGEHOG-001

## Resumen del Incidente
El incidente INC-HEDGEHOG-001 concluyó con una retención de emergencia. La falta de soporte post-incidente tras la batalla contra Shamshel detonó el abandono de puesto (AWOL) del piloto titular. NERV experimentó una caída completa de su capacidad defensiva primaria (Capacity Actual Zero). Aunque el alto mando (Gendo) sugirió sustituir al nodo primario con un backup inestable (Rei), el mando operativo (Misato) logró una intercepción presencial en el andén de escape. Mediante negociación basada en confianza vulnerable, el operador optó por abortar su salida. El incidente cierra como `:staffing_restored_fragile` (Exit 3).

## Estado del Roster vs. Estado de la Doctrina
* **El Operador:** Está físicamente de regreso y disponible. Sin embargo, su estado mental es frágil. La distancia del erizo (Hedgehog Distance) está actualmente en banda, pero sin haber sido probada en combate real.
* **La Doctrina:** Fracasó el intento de instalar un "callback" obligatorio post-misión o controles de descanso preventivo. Todo sigue dependiendo de la improvisación emocional del mando directo.

## TTPs que siguen ABIERTAS
* `T-SOC-01` (Convivencia IC/Operador) sigue activa; la separación de funciones no se aplicó.
* `T-SOC-02` (Uso de backup herido como amenaza de recambio) sigue en el aire, dictado por el mando supremo.
* `T-OP01-07` (Retorno a la base) sella el incidente pero no cura la causa raíz.

## Por qué "Tadaima" no es un parche
Las palabras "he vuelto" y la respuesta "bienvenido a casa" establecieron el enlace de red, pero no parchearon la vulnerabilidad. El operador puede volver a sufrir un ataque de denegación de servicio por exceso de trauma. Es una contención temporal de recursos humanos.

## Deuda Hacia Episodio 05-06 (Ramiel y Yashima)
* **Ramiel:** El siguiente adversario no peleará cuerpo a cuerpo, sino con geometría, alcance máximo (francotirador) y un AT Field impenetrable. Un operador recién recuperado y con confianza precaria deberá coordinar el tiro más difícil posible.
* **Rei I:** La piloto de reemplazo, usada aquí como amenaza administrativa, tendrá que convertirse en escudera activa. 
* **Yashima:** Todo el país cederá su energía para un ataque coordinado, exigiendo máxima colaboración de nodos que acaban de demostrar estar aislados.

## Lección Seele para un SOC
1. El abandono de funciones tras un P1 masivo rara vez es capricho; suele ser burnout no gestionado.
2. Usar a personal herido/de baja como presión para que el titular no renuncie destruye la moral de todo el roster.
3. El hardware (Eva/Servidor) puede tener 100% de uptime, pero si el admin huye, la capacidad real de respuesta es nula.
4. Las recuperaciones corporativas forzadas no funcionan en operaciones de extrema sensibilidad. La confianza en banda habitable es crítica.
5. El silencio tras el fin de una crisis suele ser la preparación del siguiente desastre interno.
MD

# Now code...
File.write("lib/nerv/hedgehog.rb", <<~RUBY)
# frozen_string_literal: true

module Nerv
  class Hedgehog
    attr_accessor :distance
    
    # 0.0 = too_close (fusión)
    # 0.3 - 0.7 = habitable
    # 1.0 = too_far (aislamiento)

    def initialize(initial_distance: 0.5)
      @distance = initial_distance
    end

    def too_close?
      @distance < 0.3
    end

    def too_far?
      @distance > 0.7
    end

    def habitable_band?
      !too_close? && !too_far?
    end

    def isolate!
      @distance = 1.0
    end

    def fuse!
      @distance = 0.0
    end

    def set_habitable!
      @distance = 0.5
    end
  end
end
RUBY

File.write("lib/nerv/operator.rb", <<~RUBY)
# frozen_string_literal: true
require_relative "hedgehog"

module Nerv
  class Operator
    attr_reader :name
    attr_accessor :sync_rate, :backup_unavailable, :hidden_agenda, :role, :awol

    def initialize(name:, sync_rate: 0.0, freeze: false,
                   backup_unavailable: false, hidden_agenda: false, role: :operator)
      @name = name
      @sync_rate = sync_rate
      @action_frozen = freeze
      @backup_unavailable = backup_unavailable
      @hidden_agenda = hidden_agenda
      @role = role
      @trauma_load = 0.0
      @hidden_agenda_progress = 0.0
      @awol = false
      @hedgehog = Hedgehog.new
    end

    attr_accessor :trauma_load, :hidden_agenda_progress, :hedgehog

    def action_frozen?
      @action_frozen
    end

    def freeze_action!
      @action_frozen = true
      self
    end
    
    def resign!
      @awol = true
      @hedgehog.isolate!
      @sync_rate = 0.0
    end
    
    def revoke_resignation!(forced: false)
      @awol = false
      if forced
        @hedgehog.isolate! # Or stay too_far essentially
        @sync_rate = 0.0
      else
        @hedgehog.set_habitable!
        @sync_rate = 0.5 # basic sync returns
      end
    end
  end
end
RUBY

# We need to remove Operator from eva.rb to avoid conflict
eva_rb = File.read("lib/nerv/eva.rb")
eva_rb.sub!(/class Operator.*?end\s+class Eva/m, "class Eva")
File.write("lib/nerv/eva.rb", eva_rb)

siem_rb = File.read("lib/nerv/siem.rb")
siem_rb.sub!(/attr_reader :events/, <<~RUBY)
    OPERATOR_AWOL = "siem.operator_awol"
    HEDGEHOG_TOO_CLOSE = "siem.hedgehog_too_close"
    HEDGEHOG_TOO_FAR = "siem.hedgehog_too_far"
    REPLACE_WITH_BACKUP_PROPOSED = "siem.replace_with_backup_proposed"
    BACKUP_USED_AS_LEVERAGE = "siem.backup_used_as_leverage"
    CAPACITY_ACTUAL_ZERO = "siem.capacity_actual_zero"
    OPERATOR_RETURNED = "siem.operator_returned"
    IM_HOME = "siem.im_home"
    STAFFING_FRAGILE = "siem.staffing_fragile"

    attr_reader :events
RUBY
File.write("lib/nerv/siem.rb", siem_rb)

magi_rb = File.read("lib/nerv/magi.rb")
unless magi_rb.include?("attr_reader :gendo_override_registered")
  magi_rb.sub!(/attr_reader :votes/, "attr_reader :votes, :gendo_override_registered")
  magi_rb.sub!(/def initialize\n      @votes = {}\n    end/, <<~RUBY)
  def initialize
      @votes = {}
      @gendo_override_registered = false
    end
    
    def register_gendo_override!
      @gendo_override_registered = true
    end
RUBY
  File.write("lib/nerv/magi.rb", magi_rb)
end

nerv_rb = File.read("lib/nerv.rb")
unless nerv_rb.include?("require_relative \"nerv/operator\"")
  nerv_rb.sub!("require_relative \"nerv/eva\"", <<~RUBY)
require_relative "nerv/operator"
require_relative "nerv/eva"
RUBY
end
unless nerv_rb.include?("require_relative \"nerv/playbooks/ep04\"")
  nerv_rb.sub!("require_relative \"nerv/playbooks/ep03\"", <<~RUBY)
require_relative "nerv/playbooks/ep03"
require_relative "nerv/playbooks/ep04"
RUBY
end
unless nerv_rb.include?("require_relative \"nerv/hedgehog\"")
  nerv_rb.sub!("require_relative \"nerv/operator\"", <<~RUBY)
require_relative "nerv/hedgehog"
require_relative "nerv/operator"
RUBY
end
nerv_rb.sub!("VERSION = \"0.3.0.ep03\"", "VERSION = \"0.4.0.ep04\"")
File.write("lib/nerv.rb", nerv_rb)


File.write("lib/nerv/playbooks/ep04.rb", <<~RUBY)
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
RUBY

File.write("test/test_operator.rb", <<~RUBY)
require "minitest/autorun"
require_relative "../lib/nerv"

class TestOperator < Minitest::Test
  def setup
    @operator = Nerv::Operator.new(name: "Shinji", sync_rate: 0.5)
  end

  def test_resign
    @operator.resign!
    assert @operator.awol
    assert @operator.hedgehog.too_far?
    assert_equal 0.0, @operator.sync_rate
  end

  def test_revoke_resignation_voluntary
    @operator.resign!
    @operator.revoke_resignation!(forced: false)
    refute @operator.awol
    assert @operator.hedgehog.habitable_band?
    assert_equal 0.5, @operator.sync_rate
  end

  def test_revoke_resignation_forced
    @operator.resign!
    @operator.revoke_resignation!(forced: true)
    refute @operator.awol
    assert @operator.hedgehog.too_far?
    assert_equal 0.0, @operator.sync_rate
  end
end
RUBY

File.write("test/test_hedgehog.rb", <<~RUBY)
require "minitest/autorun"
require_relative "../lib/nerv"

class TestHedgehog < Minitest::Test
  def setup
    @hedgehog = Nerv::Hedgehog.new
  end

  def test_initial_habitable
    assert @hedgehog.habitable_band?
  end

  def test_too_close
    @hedgehog.fuse!
    assert @hedgehog.too_close?
    refute @hedgehog.habitable_band?
  end

  def test_too_far
    @hedgehog.isolate!
    assert @hedgehog.too_far?
    refute @hedgehog.habitable_band?
  end
end
RUBY

File.write("test/test_playbook_ep04.rb", <<~RUBY)
require "minitest/autorun"
require_relative "../lib/nerv"

class TestPlaybookEp04 < Minitest::Test
  def setup
    @operator = Nerv::Operator.new(name: "Shinji", sync_rate: 0.6)
    @eva = Nerv::Eva.new(designation: "01", operator: @operator)
    @magi = Nerv::Magi.new
    @playbook = Nerv::PlaybookEp04.new
  end

  def test_success_path_voluntary_return
    res = @playbook.run(eva: @eva, magi: @magi, replace_proposed: true)
    assert_equal :staffing_restored_fragile, res
    
    assert @playbook.siem.emitted?(Nerv::SIEM::OPERATOR_AWOL)
    assert @playbook.siem.emitted?(Nerv::SIEM::CAPACITY_ACTUAL_ZERO)
    assert @playbook.siem.emitted?(Nerv::SIEM::IM_HOME)
    assert @playbook.siem.emitted?(Nerv::SIEM::STAFFING_FRAGILE)
    refute @playbook.siem.emitted?(Nerv::SIEM::PATTERN_BLUE)
    
    assert @operator.hedgehog.habitable_band?
  end

  def test_force_return_fails
    res = @playbook.run(eva: @eva, magi: @magi, force_return: true)
    assert_equal :staffing_failed, res
  end

  def test_replace_with_backup_fails
    res = @playbook.run(eva: @eva, magi: @magi, replace_proposed: true, use_backup: true)
    assert_equal :staffing_failed, res
    assert @playbook.siem.emitted?(Nerv::SIEM::BACKUP_USED_AS_LEVERAGE)
  end

  def test_gendo_override_fails
    res = @playbook.run(eva: @eva, magi: @magi, gendo_override: true)
    assert_equal :staffing_failed, res
    assert @magi.gendo_override_registered
  end
end
RUBY

File.write("lib/nerv/scenarios/ep04.rb", <<~RUBY)
# frozen_string_literal: true

module Nerv
  module Scenarios
    class Ep04
      attr_reader :eva, :magi, :playbook, :siem, :outcome

      def initialize
        @siem = SIEM.new
        @eva = Eva.new(
          designation: "01",
          operator: Operator.new(name: "Shinji", sync_rate: 0.6)
        )
        @magi = Magi.new
        @playbook = PlaybookEp04.new(siem: @siem)
        @outcome = nil
      end

      def run
        @outcome = @playbook.run(
          eva: @eva,
          magi: @magi,
          replace_proposed: true,
          force_return: false
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

File.write("test/test_scenario_ep04.rb", <<~RUBY)
require "minitest/autorun"
require_relative "../lib/nerv"
require_relative "../lib/nerv/scenarios/ep04"

class TestScenarioEp04 < Minitest::Test
  def setup
    @scenario = Nerv::Scenarios::Ep04.new
  end

  def test_run_yields_staffing_restored_fragile
    assert_equal :staffing_restored_fragile, @scenario.run
    
    assert @scenario.events.include?(Nerv::SIEM::OPERATOR_AWOL)
    assert @scenario.events.include?(Nerv::SIEM::IM_HOME)
    assert @scenario.events.include?(Nerv::SIEM::STAFFING_FRAGILE)
    
    refute @scenario.events.include?(Nerv::SIEM::PATTERN_BLUE)
  end
end
RUBY

File.write("docs/episodios/ep04_lab.md", <<~MD)
# Laboratorio: Correr Episodio 04 (INC-HEDGEHOG-001)

## Comando
`ruby -Ilib bin/episodio 04`

## Traza Esperada
El runner evalúa el `PlaybookEp04`. No hay ángel presente.
Se disparan las siguientes señales:
* `siem.callback_absent` (Deuda del ep03)
* `siem.hedgehog_too_close`
* `siem.operator_awol` (Deserción iniciada)
* `siem.hedgehog_too_far` (El tren, el aislamiento)
* `siem.capacity_actual_zero` (Vulnerabilidad máxima)
* `siem.replace_with_backup_proposed` (Gendo / Security)
* `siem.backup_used_as_leverage` (Rei como palanca tóxica)
* `siem.operator_returned`
* `siem.im_home` (Tadaima, regreso a banda habitable)
* `siem.staffing_fragile` (Incidente cerrado, pero el nodo es inestable)

Exit Code: `3` (`staffing_restored_fragile`)
MD

# Modifying bin/episodio
bin_content = File.read("bin/episodio")
bin_content.sub!("require_relative \"../lib/nerv/scenarios/ep03\"", <<~RUBY)
require_relative "../lib/nerv/scenarios/ep03"
require_relative "../lib/nerv/scenarios/ep04"
RUBY

bin_content.sub!("unresolved: 2", "unresolved: 2,\n      staffing_restored_fragile: 3,\n      staffing_failed: 4")

bin_content.sub!("when \"03\", \"3\"\n        run_ep03", <<~RUBY)
when "03", "3"
        run_ep03
      when "04", "4"
        run_ep04
RUBY

bin_content.sub!("def self.run_ep03", <<~RUBY)
def self.run_ep04
      scenario = Scenarios::Ep04.new
      outcome = scenario.run
      $stdout.puts "NERV lab — ep 04 Hedgehog's Dilemma"
      scenario.events.each { |id| $stdout.puts id }
      $stdout.puts "outcome=\#{outcome}"
      EXIT.fetch(outcome, 5)
    end

    def self.run_ep03
RUBY

File.write("bin/episodio", bin_content)

