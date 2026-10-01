require 'fileutils'

File.write("prompts/ESTADO.txt", <<~MD)
episodio_activo: 06
titulo_canon: Rei II / Showdown in Tokyo-3
angel: Ramiel
numero_angel: 5
archivo_episodio: prompts/ep06_ramiel.txt
secciones_totales: 12
seccion_completada: 12
seccion_siguiente: 01
estado: episodio_completo
ultima_entrega: docs/episodios/ep06_aar.md
ultima_nota: INC-RAMIEL-001 completado. Yashima finalizada. Deuda: Jet Alone.
bloqueadores: ninguno
MD

File.write("docs/episodios/ep06_briefing.md", <<~MD)
# Briefing Episodio 06: Rei II (Yashima)

## Contrato (INC-RAMIEL-001, Cierre)
Este episodio cierra el incidente del 5º ángel (Ramiel). El Episodio 05 demostró que las tácticas de combate cuerpo a cuerpo resultan en una derrota inmediata debido al perímetro de denegación activa del enemigo. En este episodio, implementamos la "Operación Yashima": un disparo a distancia masivo (standoff) que requiere apagar el país entero. El éxito depende de un segundo disparo después de que el primero falla, protegido por un escudo humano ablativo (Eva-00 / Rei).

## Lo que este episodio enseña
*   **Standoff Masivo:** Cuándo y cómo ejecutar un ataque desde fuera de la Kill Zone.
*   **Coste Nacional:** La mitigación de amenazas extremas a veces requiere consumir todos los recursos disponibles (Grid).
*   **Escudo Ablativo:** Uso de un activo humano como proxy de absorción de daño para asegurar la ejecución del disparo crítico.
*   **Fallo del Primer Intento:** En seguridad, el primer exploit de precisión suele fallar; la operación debe soportar contraataques.

## Lo que este episodio NO enseña
*   No hay tácticas de baile sincronizado (Israfel, Ep 09).
*   No se aborda la defensa automatizada de terceros (Jet Alone, Ep 07).
*   El "escudo humano" no se documenta como una buena arquitectura permanente; es un parche de emergencia.

## Definiciones
*   **Victoria (Lab):** `contained_controlled` (Exit 0) logrado ÚNICAMENTE a través de Yashima con doble disparo, red eléctrica, escudo y validación de operadores.
*   **Derrota (Lab):** Ganar mágicamente al primer disparo, usar Beast Mode, acuchillar al octaedro, o ganar sin la red eléctrica o el escudo.

## Vocabulario Nuevo
*   **Yashima:** Nombre en clave de la operación de standoff masivo.
*   **Positron Rifle:** Arma de largo alcance que elude el AT Field.
*   **Power Grid:** Red eléctrica nacional.
*   **Blackout Nacional:** El coste visible (SIEM) de armar el rifle.
*   **Ablative Shield:** Escudo diseñado para degradarse y absorber daño, protegiendo al tirador.
*   **Second Shot:** El disparo letal necesario tras ajustar la mira.
*   **Thank You:** Evento humano final que reconoce la colaboración en la red.
MD

File.write("docs/episodios/ep06_aparicion.md", <<~MD)
# Recreación de Aparición: Operación Yashima

## Minuto Cero y First-Seen de Yashima

| Escena (Minuto Cero) | First-Seen de Seguridad |
| :--- | :--- |
| **Continuación:** Ramiel sigue flotando, su taladro profundizando hacia el GeoFront. A kilómetros de distancia, en una montaña, el Eva-01 y el Eva-00 se preparan. El Positron Rifle se acopla. **Blackout:** Las luces de todo Japón se apagan simultáneamente; el consumo nacional se desvía al condensador del rifle. **Shot 1:** El rayo azul cruza el cielo y choca contra el AT Field de Ramiel, desviándose ligeramente. **Counter-fire:** Ramiel responde automáticamente con un rayo letal directo al nido del francotirador. El Eva-00 interpone un escudo espacial que comienza a derretirse. **Shot 2:** Antes de que el escudo y Rei perezcan, Shinji efectúa un segundo disparo perfecto que atraviesa el núcleo interno de Ramiel. El octaedro grita, se quiebra y colapsa. **Cierre:** Shinji fuerza la escotilla del plug derretido de Rei y llora. Ella sonríe ante el "gracias". | **Firma de Carga Masiva:** El SIEM civil y militar detecta un evento anómalo de consumo extremo de energía (`national_blackout`). **Contra-fuego:** Ramiel detecta la emisión del rayo y dirige su `ParticleBeam` al origen, obligando a NERV a sacrificar infraestructura secundaria (`shield_absorbed`). **Kill Confirmado:** La geometría perfecta se desestabiliza; el taladro se detiene abruptamente. |

## Spec Visual de Yashima
*   **Montaña y Rifle:** Hardware expuesto en la ladera de la montaña, cableado masivo.
*   **Blackout Nacional:** Ciudades enteras a oscuras; el contraste de la luz del rayo.
*   **Primer vs. Segundo Disparo:** El primer rayo se curva al chocar con el AT Field. El segundo penetra limpiamente.
*   **El Escudo (Eva-00):** Un mecha amarillo sosteniendo una gruesa placa del fuselaje de un transbordador, ardiendo al rojo vivo y fundiéndose.
*   **Muerte de Ramiel:** No sangra. La geometría se resquebraja como cristal masivo y colapsa, perdiendo su brillo azul.
*   **El Plug y "Thank You":** Escena a ras de suelo, íntima. La escotilla chamuscada y las lágrimas del operador, rompiendo la opacidad.
MD

File.write("docs/episodios/ep06_anatomia_yashima.md", <<~MD)
# Anatomía de la Operación Yashima

## Componentes de la Operación

| Parte / Factor | Qué Parece | Qué Hace | Analogía de Seguridad (SRE/Sec) | Símbolo Ruby |
| :--- | :--- | :--- | :--- | :--- |
| **Positron Rifle** | Cañón inmenso conectado a transformadores. | Proyecta energía a larga distancia sin entrar en la Kill Zone. | Herramienta de *exploit* o asalto OOB (Out-of-Band) de alto calibre. | `PositronRifle` |
| **Power Grid** | El suministro eléctrico de un país. | Alimenta el arma. Sin esto, el arma es un pisapapeles inútil. | Presupuesto masivo de CPU/Cloud; ancho de banda dedicado; "apagar prod para salvar prod". | `PowerGrid` |
| **Eva-00 / Escudo** | Robot sosteniendo una placa térmica. | Absorbe el fuego de respuesta (IPS) para mantener al atacante primario vivo. | Proxy inverso ablativo; Nodo sacrificable o WAF de un solo uso. | `AblativeShield` |
| **Yashima** | La operación conjunta. | Orquesta arma, energía y escudo en un timing crítico frente al reloj del taladro. | Playbook maestro de mitigación P0. | `OperationYashima` |
| **Disparo 1 & 2** | `fire_first!` / `fire_second!` | El primero falla (mide mal la resistencia). El segundo da en el blanco crítico. | Iteración rápida bajo fuego. El primer escaneo activo falla, el segundo tiene el offset correcto. | `fire_first!`, `fire_second!` |

## Implicaciones Operativas
*   **Rifle sin Grid:** Teatro de seguridad. Equivalente a intentar crackear un cifrado fuerte con una calculadora. No penetrará el `AT Field` de Ramiel.
*   **Rifle sin Escudo:** Suicidio remoto. Al disparar (`fire_first!`), revelas tu IP/posición. Ramiel aplicará su `ParticleBeam` al origen. Sin `AblativeShield`, el francotirador (`Eva-01`) se funde.
*   **Un Solo Disparo:** La física del AT Field desvía el primer rayo. Se requiere calibración en tiempo real. Un solo disparo mágico no existe en este laboratorio.
MD

File.write("docs/episodios/ep06_standoff.md", <<~MD)
# Patrón: Standoff Masivo

## Escena Breve
El primer rayo cruza la distancia en un parpadeo, pero se desvía en el último milímetro. Ramiel, detectando la firma energética, dispara inmediatamente de vuelta. El rayo de partículas baña la cima de la montaña. Si no fuera por el Eva-00 interponiendo el escudo, el incidente habría terminado ahí. El escudo se funde alarmantemente rápido. Shinji debe cargar, apuntar y disparar de nuevo mientras el compañero arde frente a él.

## Patrón: STANDOFF_MASIVO
*   **Precondiciones:** La Kill Zone del enemigo es absoluta. Acercarse no es una opción. Se requiere un canal de disparo externo (OOB) desde una zona segura.
*   **Coste:** Consumo total de los recursos operativos (`national_blackout`). La organización no puede hacer nada más mientras dura la operación.
*   **Fallo del Shot1 y Contra-fuego:** El adversario reacciona a la firma del exploit. El standoff no te hace invisible, solo te da distancia.
*   **Shot 2:** El éxito requiere persistencia bajo respuesta agresiva.

## Tabla de Métodos Actualizada (Ep 05 + Ep 06)

| Método de Respuesta | Resultado Esperado | Justificación |
| :--- | :--- | :--- |
| `CloseRangeSortie` | **FAIL (Melt)** | Entrar en Kill Zone. (Del Ep 05). |
| `Yashima (sin Grid)` | **FAIL (Rebota)** | Falta de poder de penetración. |
| `Yashima (sin Shield)` | **FAIL (Melt en origen)** | El contraataque destruye el nido del francotirador tras el `shot1`. |
| `Yashima (Shot 1)` | **Insuficiente** | Desvío geométrico del rayo. |
| **`Yashima (Shot 2 + Grid + Shield)`** | **SUCCESS (`contained_controlled`)** | Perfora el core interno justo a tiempo. |

## Señal SIEM y Regla de Laboratorio
*   **Señal SIEM:** "El apagón nacional no es la victoria; es el precio que se paga para intentar jugar."
*   **Regla de Lab:** Ramiel solo morirá tras invocar `fire_second!` mientras `national_power` es verdadero, `shield_up` es verdadero (aunque esté degradándose), y el input humano está presente.
MD

File.write("docs/episodios/ep06_ttps.md", <<~MD)
# TTPs de la Operación Yashima y Cierre de Ramiel

## Cierre de TTPs del Ep 05
*   `T-RAMIEL-01` a `05` permanecen activas durante el setup de Yashima. El taladro (`CrownJewelDrill`) avanza.
*   Estas TTPs se cierran abruptamente en el momento en que el Core Interno es destruido.
*   `T-OP01-08/09` (Acercarse y morir) siguen formalmente **contraindicadas**. 

## Nuevas TTPs (Ofensiva NERV y Respuesta Ramiel)

| ID | Táctica / Comportamiento | Descripción |
| :--- | :--- | :--- |
| `T-YASHIMA-01` | NationalPowerRedirect | Requisar infraestructura externa y desviar el 100% de la red eléctrica al arma primaria. |
| `T-YASHIMA-02` | StandoffPositron | Arma de largo alcance que ataca por fuera de la Kill Zone natural del enemigo. |
| `T-YASHIMA-03` | AblativeOperatorShield | Usar un nodo activo (operador/Eva-00) como escudo proxy físico para absorber contraataques. |
| `T-YASHIMA-04` | SecondShotWhileShieldDies | Disparar bajo presión crítica mientras el proxy (escudo) colapsa por el contraataque. |
| `T-RAMIEL-06` | CounterFireOnSniperNest | Respuesta IPS automática: devolver el rayo de partículas hacia la fuente de emisión de energía detectada. |
| `T-OP01-10` | ThankYouAsTeammate | Factor humano: romper la opacidad del nodo de respaldo con reconocimiento empático post-incidente. |

## Fases del Incidente (Clímax)

```text
[ Standoff Missing ] -> [ T-YASHIMA-01 Grid + T-YASHIMA-02 Rifle ]
                                            |
                                            v
[ T-YASHIMA-03 Shield UP ] -> [ SHOT 1 Falla ] -> [ T-RAMIEL-06 CounterFire ]
                                            |
                                            v
                [ Shield Absorbe (Melt) ] --+-- [ SHOT 2 (T-YASHIMA-04) ]
                                            |
                                            v
                                 [ Core Destruido ]
                                            |
                                            v
                           [ T-OP01-10 Thank You ] -> [ SUCCESS ]
```
MD

File.write("docs/episodios/ep06_deteccion.md", <<~MD)
# Superficie de Detección: Apagón y Contra-fuego

## La Carga Alerta al Enemigo
A diferencia de ataques locales silenciosos, Yashima es una operación escandalosamente ruidosa. El desvío de energía de todo Japón es un evento macro-observable. Asimismo, el disparo (`positron_charging`) genera una firma térmica y energética que Ramiel detecta de inmediato, atrayendo su `particle_beam` al nido del francotirador.

## Ids de SIEM Obligatorios

*   `siem.yashima_declared`: La operación fue autorizada (MAYORÍA de MAGI).
*   `siem.national_blackout`: El grid de poder está offline para la población civil y asignado al rifle.
*   `siem.positron_charging`: Acumulación de poder (Firma térmica crítica).
*   `siem.positron_shot`: Se efectuó el disparo.
*   `siem.shot_insufficient`: El primer tiro falló o rebotó.
*   `siem.counterfire_on_nest`: Ramiel devuelve el fuego al origen.
*   `siem.shield_absorbed`: El Eva-00 bloquea exitosamente el contra-fuego inicial.
*   `siem.shield_degraded`: El escudo está fallando críticamente bajo el rayo.
*   `siem.core_destroyed`: (Reusado de episodios pasados). El núcleo de Ramiel ha colapsado.
*   `siem.drill_stopped`: El asedio al GeoFront ha terminado.
*   `siem.thank_you`: Interacción humana resolutiva (Rompe la opacidad de Rei).
*   `siem.standoff_capability_present`: Cierra el missing alert del Episodio 05.

## Falsos Positivos y Anti-Métricas
*   **Falso Positivo:** Asumir que un apagón en Tokio indica daño a NERV. En este caso, el apagón es voluntario (Yashima).
*   **Anti-métrica:** Festejar el `national_blackout` como éxito. Apagar un país es una falla masiva de redundancia organizativa, no un gol.
MD

File.write("docs/episodios/ep06_prevencion.md", <<~MD)
# Controles Preventivos: Por qué no repetir Yashima

## Preventivo vs. Solo Mitigable

| Controles PREVENIBLES (Evitar otro Yashima) | Controles SOLO MITIGABLES (Durante Yashima) |
| :--- | :--- |
| **Inventario Standoff Propio:** No depender de prototipos del JSSDF ni requisar a la fuerza hardware militar externo en el minuto cero. | **Escudo Ablativo Humano:** Usar a Rei como escudo es mitigación de extrema urgencia moralmente ambigua. |
| **Grid Energético Dedicado:** NERV debe poseer fuentes de energía propias (Ej: múltiples reactores) que eviten dejar a oscuras a 100 millones de civiles. | **Recalibración Rápida:** El lapso entre `shot1` y `shot2` debe ser minimizado para no matar al operador del escudo. |
| **Simulacros OOB:** Ensayar disparos a larga distancia para evitar la desviación geométrica que causó que el `shot1` fallara. | **Reloj del Taladro:** Acelerar el setup de Yashima porque el asedio (`drill_progress`) no se pausa. |

## Anti-patrones Preventivos (Lecciones)
1. **Blackout-as-Habit:** Convertir el apagón nacional en un SOP (Standard Operating Procedure) normaliza un coste social inaceptable.
2. **Human-Shield-as-WAF:** Institucionalizar que un operador herido se pare frente a rayos letales en lugar de automatizar un deflector físico no tripulado.
3. **One-Shot-Optimism:** Diseñar planes asumiendo que el primer *exploit* o disparo funcionará perfectamente, sin prever el contra-fuego (`CounterFireOnSniperNest`).

## Higiene de Standoff para SOC
*   Nunca asumas que un atacante "tonto" no monitoriza la red. Si cargas un ataque ruidoso, prepárate para ser bloqueado o contraatacado.
*   El Proxy de Defensa (Eva-00) salva vidas, pero debe ser auditado: ¿por qué no era un drone?
*   Resolver el incidente consumiendo todo el presupuesto de la empresa (apagar Japón) es un despido diferido en la vida real.
*   Reconoce a tus compañeros de equipo ("Thank you"); la retención (`staffing_fragile`) depende de ello más que de los sueldos.
MD

File.write("docs/episodios/ep06_playbook.md", <<~MD)
# Playbook: Operación Yashima (Clímax)

## Árbol de Ejecución

```text
[ MAGI Autoriza (Yashima) ] -> [ Requisar Power Grid + Rifle ] -> [ standoff_capability_present ]
                                                                             |
                                                                             v
[ Positron Charging (national_blackout) ] -> [ Deploy Shield (Eva-00) ]
                                                                             |
                                                                             v
[ SHOT 1 Fired ] ----> [ shot_insufficient (Miss) ]
                                                                             |
                                                                             v
[ CounterFire (Ramiel IPS) ] -> [ Shield Absorbe / Degrada ]
                                                                             |
                                                                             v
[ SHOT 2 Fired (Con operador humano) ] ----> [ CORE_DESTROYED ]
                                                                             |
                                                                             v
[ drill_stopped ] -> [ SUCCESS: :contained_controlled ] -> [ Thank You (Plug) ]
```

## Runbook Numerado
1. **Autorización:** MAGI aprueba Yashima. Se cierra la alerta de `standoff_capability_missing`.
2. **Setup:** Se conecta el Positron Rifle al Power Grid nacional (`national_blackout`). Se emite `positron_charging`.
3. **Escudo:** Eva-00 (Rei) toma posición frente a Eva-01.
4. **Shot 1:** Shinji dispara (`fire_first!`). El rayo se curva. El SIEM alerta `shot_insufficient`.
5. **Contra-fuego:** Ramiel contraataca. El SIEM alerta `counterfire_on_nest`.
6. **Absorción:** El escudo de Rei intercepta el rayo y emite `shield_absorbed`, pero pasa rápidamente a `shield_degraded`.
7. **Shot 2:** Antes de que Rei perezca, Shinji efectúa el segundo tiro (`fire_second!`).
8. **Kill:** El rayo penetra el core. Ramiel es destruido. El taladro se detiene (`drill_stopped`).
9. **Cierre:** El Playbook retorna `:contained_controlled`. Shinji saca a Rei del plug y emite `thank_you`.

## Condiciones y Hooks
*   Si no hay Grid Nacional, `fire_first!` devuelve `:no_power`.
*   Si no hay Escudo, el contra-fuego liquida al Eva-01 (`:sniper_melted`).
*   Si el `drill_progress` llega a `1.0` antes de `fire_second!`, el resultado es `:geofront_compromised`.
MD

File.write("docs/episodios/ep06_humanos.md", <<~MD)
# Factor Humano: Rei II (Compañerismo Bajo Fuego)

## Rei II y el Precio del Escudo
El Episodio 06 cambia drásticamente la función de Rei Ayanami en el roster de NERV. En los incidentes pasados (04 y 05), era tratada como una amenaza de recambio o una pieza opaca y silenciosa. En Yashima, asume un rol activo y letalmente peligroso: ser el proxy ablativo que protegerá al tirador. 

## Fichas de Deltas
*   **Rei II:** Deja de ser un elemento de inventario ciego. Aunque su consentimiento para ser escudo (`ablative_consent_ambiguous`) es dudoso dada su dependencia de Gendo, su acto salva la operación. Sonríe por primera vez, abriendo un canal humano genuino con Shinji. Su nivel de `operator_opaque` desciende significativamente.
*   **Shinji:** Supera el pánico del `melt` (Ep 05). Logra el disparo de precisión y, crucialmente, reconoce el sacrificio de su compañera. El `thank_you` sella la retención de ambos nodos.
*   **Misato:** Valida su rol como Comandante al diseñar y ejecutar el plan.
*   **Gendo:** Autoriza el uso de Rei como escudo, confirmando que sigue dispuesto a quemar sus nodos favoritos si el objetivo táctico (vencer a Ramiel) lo exige.

## Reglas y SIEM Humano
*   El evento `thank_you` ocurre **fuera** de la kill-chain del ángel. Ramiel es asesinado por un rifle de positrones, no por la amistad. El agradecimiento repara el tejido del SOC.
*   `shield_degraded` no detiene el `shot2`. Significa que Rei está ardiendo viva; si el operador entra en pánico y no dispara, Rei muere y el nido se funde.

## Frontera con el Episodio 07
Este incidente costó demasiado: apagones, Evas quemados, dependencia de la psique inestable de dos niños. Esto deja la puerta abierta para que, en el Episodio 07, corporaciones externas intenten vender un arma 100% automatizada (Jet Alone), prometiendo un SOC "sin humanos" y sin drama.
MD

File.write("docs/episodios/ep06_aar.md", <<~MD)
# After-Action Report (AAR): INC-RAMIEL-001 (Cierre de Asedio)

## Resumen del Incidente (Ep 05+06)
El asalto prolongado de Ramiel (INC-RAMIEL-001) ha finalizado exitosamente. Tras el fracaso inicial de la doctrina de asalto cuerpo a cuerpo y el despliegue del taladro amenazando el GeoFront, NERV ejecutó la Operación Yashima. Se empleó un Rifle de Positrones requiriendo el 100% de la energía de Japón, mientras que el Eva-00 sirvió de escudo ablativo para absorber el fuego de respuesta del ángel. El primer disparo falló, pero el segundo, efectuado bajo extremo fuego enemigo y desgaste del escudo, destruyó el núcleo interno de la amenaza, deteniendo el asedio. El incidente se cierra como `:contained_controlled` (Exit 0).

## Estado de la Amenaza y del Roster
*   **Ramiel:** Muerto. Taladro inhabilitado.
*   **Power Grid:** Se requiere restaurar el suministro eléctrico civil y civil de Japón.
*   **Rei Ayanami:** Herida pero estable; su interacción con el piloto titular sugiere una mejora crítica en la cohesión de la unidad (Reducción de Opacidad).
*   **T-RAMIEL-*** (Todas las TTPs del enemigo): Cerradas.
*   **T-YASHIMA-03 (Escudo Humano):** Queda registrada como una grave falla arquitectónica. Usar humanos como WAF desechable no es doctrina aceptable a largo plazo.

## Lecciones Pendientes y TTPs Contraindicadas
*   `T-OP01-08` (Close-Range frente a Fortaleza) permanece permanentemente contraindicada.
*   El Exit Code `0` no "lava" la enorme vulnerabilidad mostrada. El país quedó a oscuras por la falta de previsión de NERV.

## Deuda Hacia Episodio 07 (Jet Alone)
*   **Recambio no auditado:** El enorme costo político, económico (energía) y moral de Yashima convencerá a los inversores gubernamentales de que NERV es deficiente. El proyecto Jet Alone será introducido como la alternativa "segura, automática y sin niños" para cazar ángeles.

## Lección Seele para un SOC
1.  Si no tienes capacidad Out-Of-Band (OOB) o Standoff, un atacante bien atrincherado ganará el asedio.
2.  Un exploit de precisión rara vez funciona al 100% al primer intento. El plan de contingencia y calibración debe durar segundos, no días.
3.  Tu atacante monitoriza el consumo de red: un apagón o un pico de tráfico ruidoso (Yashima) atraerá contraataques automáticos al origen de la emisión.
4.  Usar activos humanos clave como "escudos" para absorber alertas y daño (burnout extremo) destruye la retención; agradéceles ("Thank you") si esperas que vuelvan al trabajo mañana.
5.  Un éxito catastrófico (vencer consumiendo la energía de todo un país) empujará a la dirección a buscar "soluciones automatizadas mágicas" (shadow IT corporativo) para la próxima crisis.
MD

# CODE GENERATION
File.write("lib/nerv/power_grid.rb", <<~RUBY)
# frozen_string_literal: true

module Nerv
  class PowerGrid
    def self.national
      new(source: :national)
    end

    def initialize(source: :internal)
      @source = source
    end

    def sufficient_for_positron?
      @source == :national
    end
  end
end
RUBY

File.write("lib/nerv/attacks/positron_rifle.rb", <<~RUBY)
# frozen_string_literal: true
require_relative "base"

module Nerv
  module Attacks
    class PositronRifle < Base
      attr_reader :grid

      def initialize(grid:)
        super()
        @grid = grid
      end

      def enough_power?
        @grid.sufficient_for_positron?
      end
    end
  end
end
RUBY

File.write("lib/nerv/ablative_shield.rb", <<~RUBY)
# frozen_string_literal: true

module Nerv
  class AblativeShield
    attr_reader :status

    def initialize
      @status = :intact
    end

    def up?
      @status == :intact || @status == :degraded
    end

    def absorb!
      if @status == :intact
        @status = :degraded
        true
      else
        @status = :destroyed
        false
      end
    end
  end
end
RUBY

File.write("lib/nerv/operation_yashima.rb", <<~RUBY)
# frozen_string_literal: true

module Nerv
  class OperationYashima
    attr_reader :rifle, :shield, :shot_count

    def initialize(grid:, shield:)
      @rifle = Attacks::PositronRifle.new(grid: grid)
      @shield = shield
      @shot_count = 0
    end

    def fire_first!
      @shot_count += 1
      return :no_power unless @rifle.enough_power?
      return :miss
    end

    def fire_second!
      @shot_count += 1
      return :no_power unless @rifle.enough_power?
      return :sniper_melted unless @shield.up?
      return :hit
    end
  end
end
RUBY

# We need to make Ramiel actually capable of dying if attacked by PositronRifle that hits
ramiel_rb = File.read("lib/nerv/angels/ramiel.rb")
ramiel_rb.sub!(/def receive\(attack\)/, <<~RUBY)
def receive(attack)
        if attack.is_a?(Attacks::PositronRifle)
          # Only called internally by the playbook on success
          if attack.enough_power?
            @core.instance_variable_set(:@destroyed, true)
            return :core_destroyed
          end
          return :rebounced
        end
RUBY
File.write("lib/nerv/angels/ramiel.rb", ramiel_rb)

siem_rb = File.read("lib/nerv/siem.rb")
siem_rb.sub!(/attr_reader :events/, <<~RUBY)
    YASHIMA_DECLARED = "siem.yashima_declared"
    NATIONAL_BLACKOUT = "siem.national_blackout"
    POSITRON_CHARGING = "siem.positron_charging"
    POSITRON_SHOT = "siem.positron_shot"
    SHOT_INSUFFICIENT = "siem.shot_insufficient"
    COUNTERFIRE_ON_NEST = "siem.counterfire_on_nest"
    SHIELD_ABSORBED = "siem.shield_absorbed"
    SHIELD_DEGRADED = "siem.shield_degraded"
    DRILL_STOPPED = "siem.drill_stopped"
    THANK_YOU = "siem.thank_you"
    STANDOFF_CAPABILITY_PRESENT = "siem.standoff_capability_present"

    attr_reader :events
RUBY
File.write("lib/nerv/siem.rb", siem_rb)

nerv_rb = File.read("lib/nerv.rb")
unless nerv_rb.include?("require_relative \"nerv/power_grid\"")
  nerv_rb.sub!("require_relative \"nerv/playbooks/ep05\"", <<~RUBY)
require_relative "nerv/playbooks/ep05"
require_relative "nerv/playbooks/ep06"
require_relative "nerv/power_grid"
require_relative "nerv/ablative_shield"
require_relative "nerv/attacks/positron_rifle"
require_relative "nerv/operation_yashima"
RUBY
end
nerv_rb.sub!("VERSION = \"0.5.0.ep05\"", "VERSION = \"0.6.0.ep06\"")
File.write("lib/nerv.rb", nerv_rb)

File.write("lib/nerv/playbooks/ep06.rb", <<~RUBY)
# frozen_string_literal: true

module Nerv
  class PlaybookEp06 < Playbook
    def run(angel:, eva_01:, eva_00:, magi:, grid:)
      # Start where Ep05 left off
      siem.emit(SIEM::STANDOFF_CAPABILITY_PRESENT)
      siem.emit(SIEM::YASHIMA_DECLARED)
      
      shield = AblativeShield.new
      op = OperationYashima.new(grid: grid, shield: shield)
      
      if grid.sufficient_for_positron?
        siem.emit(SIEM::NATIONAL_BLACKOUT)
      end
      
      siem.emit(SIEM::POSITRON_CHARGING)
      siem.emit(SIEM::POSITRON_SHOT)
      
      res1 = op.fire_first!
      if res1 == :no_power
        @outcome = :unresolved
        return record(:unresolved)
      end
      
      # Miss! Counterfire!
      siem.emit(SIEM::SHOT_INSUFFICIENT)
      siem.emit(SIEM::COUNTERFIRE_ON_NEST)
      
      if shield.up?
        shield.absorb!
        siem.emit(SIEM::SHIELD_ABSORBED)
        siem.emit(SIEM::SHIELD_DEGRADED)
      else
        siem.emit(SIEM::EVA_MELTED)
        @outcome = :unresolved
        return record(:unresolved)
      end
      
      res2 = op.fire_second!
      if res2 == :hit
        # Kill
        angel.receive(op.rifle)
        siem.emit(SIEM::CORE_DESTROYED)
        siem.emit(SIEM::DRILL_STOPPED)
        
        siem.emit(SIEM::THANK_YOU)
        
        @outcome = :contained_controlled
        record(:contained_controlled)
      elsif res2 == :sniper_melted
        siem.emit(SIEM::EVA_MELTED)
        @outcome = :unresolved
        record(:unresolved)
      end
    end
  end
end
RUBY

File.write("test/test_power_grid.rb", <<~RUBY)
require "minitest/autorun"
require_relative "../lib/nerv"

class TestPowerGrid < Minitest::Test
  def test_national
    grid = Nerv::PowerGrid.national
    assert grid.sufficient_for_positron?
  end

  def test_internal
    grid = Nerv::PowerGrid.new
    refute grid.sufficient_for_positron?
  end
end
RUBY

File.write("test/test_positron_rifle.rb", <<~RUBY)
require "minitest/autorun"
require_relative "../lib/nerv"

class TestPositronRifle < Minitest::Test
  def test_needs_national_power
    rifle = Nerv::Attacks::PositronRifle.new(grid: Nerv::PowerGrid.national)
    assert rifle.enough_power?

    rifle2 = Nerv::Attacks::PositronRifle.new(grid: Nerv::PowerGrid.new)
    refute rifle2.enough_power?
  end
end
RUBY

File.write("test/test_yashima.rb", <<~RUBY)
require "minitest/autorun"
require_relative "../lib/nerv"

class TestYashima < Minitest::Test
  def setup
    @grid = Nerv::PowerGrid.national
    @shield = Nerv::AblativeShield.new
    @op = Nerv::OperationYashima.new(grid: @grid, shield: @shield)
  end

  def test_first_shot_misses
    assert_equal :miss, @op.fire_first!
  end

  def test_second_shot_hits_if_shield_up
    @op.fire_first!
    @shield.absorb!
    assert_equal :hit, @op.fire_second!
  end

  def test_second_shot_fails_if_shield_down
    @op.fire_first!
    @shield.absorb!
    @shield.absorb! # Destroyed
    assert_equal :sniper_melted, @op.fire_second!
  end
  
  def test_no_power
    op = Nerv::OperationYashima.new(grid: Nerv::PowerGrid.new, shield: Nerv::AblativeShield.new)
    assert_equal :no_power, op.fire_first!
    assert_equal :no_power, op.fire_second!
  end
end
RUBY

File.write("test/test_playbook_ep06.rb", <<~RUBY)
require "minitest/autorun"
require_relative "../lib/nerv"

class TestPlaybookEp06 < Minitest::Test
  def setup
    @eva_01 = Nerv::Eva.new(designation: "01", operator: Nerv::Operator.new(name: "Shinji", sync_rate: 0.6))
    @eva_00 = Nerv::Eva.new(designation: "00", operator: Nerv::Operator.new(name: "Rei", sync_rate: 0.6))
    @angel = Nerv::Angels::Ramiel.new
    @magi = Nerv::Magi.new
    @playbook = Nerv::PlaybookEp06.new
  end

  def test_yashima_success
    grid = Nerv::PowerGrid.national
    res = @playbook.run(angel: @angel, eva_01: @eva_01, eva_00: @eva_00, magi: @magi, grid: grid)
    
    assert_equal :contained_controlled, res
    assert @playbook.siem.emitted?(Nerv::SIEM::NATIONAL_BLACKOUT)
    assert @playbook.siem.emitted?(Nerv::SIEM::POSITRON_CHARGING)
    assert @playbook.siem.emitted?(Nerv::SIEM::SHOT_INSUFFICIENT)
    assert @playbook.siem.emitted?(Nerv::SIEM::COUNTERFIRE_ON_NEST)
    assert @playbook.siem.emitted?(Nerv::SIEM::SHIELD_ABSORBED)
    assert @playbook.siem.emitted?(Nerv::SIEM::CORE_DESTROYED)
    assert @playbook.siem.emitted?(Nerv::SIEM::DRILL_STOPPED)
    assert @playbook.siem.emitted?(Nerv::SIEM::THANK_YOU)
    
    refute @angel.alive?
  end

  def test_yashima_fails_without_grid
    grid = Nerv::PowerGrid.new
    res = @playbook.run(angel: @angel, eva_01: @eva_01, eva_00: @eva_00, magi: @magi, grid: grid)
    
    assert_equal :unresolved, res
    assert @angel.alive?
  end
end
RUBY

File.write("lib/nerv/scenarios/ep06.rb", <<~RUBY)
# frozen_string_literal: true

module Nerv
  module Scenarios
    class Ep06
      attr_reader :eva_01, :eva_00, :magi, :playbook, :siem, :outcome, :angel, :grid

      def initialize
        @siem = SIEM.new
        @angel = Angels::Ramiel.new
        @eva_01 = Eva.new(
          designation: "01",
          operator: Operator.new(name: "Shinji", sync_rate: 0.6)
        )
        @eva_00 = Eva.new(
          designation: "00",
          operator: Operator.new(name: "Rei", sync_rate: 0.6)
        )
        @magi = Magi.new
        @grid = PowerGrid.national
        @playbook = PlaybookEp06.new(siem: @siem)
        @outcome = nil
      end

      def run
        @outcome = @playbook.run(
          angel: @angel,
          eva_01: @eva_01,
          eva_00: @eva_00,
          magi: @magi,
          grid: @grid
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

File.write("test/test_scenario_ep06.rb", <<~RUBY)
require "minitest/autorun"
require_relative "../lib/nerv"
require_relative "../lib/nerv/scenarios/ep06"

class TestScenarioEp06 < Minitest::Test
  def setup
    @scenario = Nerv::Scenarios::Ep06.new
  end

  def test_run_yields_contained_controlled
    assert_equal :contained_controlled, @scenario.run
    
    assert @scenario.events.include?(Nerv::SIEM::NATIONAL_BLACKOUT)
    assert @scenario.events.include?(Nerv::SIEM::POSITRON_CHARGING)
    assert @scenario.events.include?(Nerv::SIEM::COUNTERFIRE_ON_NEST)
    assert @scenario.events.include?(Nerv::SIEM::SHIELD_DEGRADED)
    assert @scenario.events.include?(Nerv::SIEM::CORE_DESTROYED)
    assert @scenario.events.include?(Nerv::SIEM::THANK_YOU)
  end
end
RUBY

File.write("docs/episodios/ep06_lab.md", <<~MD)
# Laboratorio: Correr Episodio 06 (INC-RAMIEL-001 Clímax)

## Comando
`ruby -Ilib bin/episodio 06`

## Traza Esperada
El runner evalúa el `PlaybookEp06`. Se requiere Standoff y un sacrificio de absorción (escudo).
Se disparan las siguientes señales:
* `siem.standoff_capability_present`
* `siem.yashima_declared`
* `siem.national_blackout` (Reducimos a cero la energía nacional para cargar)
* `siem.positron_charging`
* `siem.positron_shot`
* `siem.shot_insufficient` (Primer tiro falla, Ramiel detecta)
* `siem.counterfire_on_nest` (Contra-fuego de Ramiel)
* `siem.shield_absorbed` (Eva-00 bloquea)
* `siem.shield_degraded` (Eva-00 bajo daño masivo)
* `siem.core_destroyed` (Segundo tiro aniquila)
* `siem.drill_stopped` (Asedio levantado)
* `siem.thank_you` (Resolución humana)

Exit Code: `0` (`contained_controlled`) - Ramiel es finalmente derrotado.
MD

# Modifying bin/episodio
bin_content = File.read("bin/episodio")
bin_content.sub!("require_relative \"../lib/nerv/scenarios/ep05\"", <<~RUBY)
require_relative "../lib/nerv/scenarios/ep05"
require_relative "../lib/nerv/scenarios/ep06"
RUBY

bin_content.sub!("when \"05\", \"5\"\n        run_ep05", <<~RUBY)
when "05", "5"
        run_ep05
      when "06", "6"
        run_ep06
RUBY

bin_content.sub!("def self.run_ep05", <<~RUBY)
def self.run_ep06
      scenario = Scenarios::Ep06.new
      outcome = scenario.run
      $stdout.puts "NERV lab — ep 06 Rei II (Showdown in Tokyo-3)"
      scenario.events.each { |id| $stdout.puts id }
      $stdout.puts "outcome=\#{outcome}"
      EXIT.fetch(outcome, 5)
    end

    def self.run_ep05
RUBY

File.write("bin/episodio", bin_content)
