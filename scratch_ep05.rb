require 'fileutils'
FileUtils.mkdir_p("docs/episodios")

File.write("docs/episodios/ep05_briefing.md", <<~MD)
# Briefing Episodio 05: Rei I (INC-RAMIEL-001, Primera Mitad)

## Contrato
El incidente INC-RAMIEL-001 introduce al 5º ángel, Ramiel, en un arco que abarca dos episodios. En esta primera mitad (Episodio 05), nos enfrentamos a una amenaza que desafía radicalmente la doctrina establecida. El último playbook que funcionó (cercanía y cuchillo, Ep 03) es ahora una táctica suicida. El episodio termina en estado `:unresolved` (Exit 2). El operador de reemplazo (Rei Ayanami) entra en escena no como un simple inventario, sino como un nodo opaco en la red humana.

## Lo que este episodio enseña
1. **Active Denial / Kill Zone:** Cómo un perímetro hostil responde automática y letalmente (Particle Beam) a cualquier puerto que se abra, impidiendo el "close-range".
2. **Zero-Day a Vías de Lanzamiento:** La vulnerabilidad estructural de NERV (rutas de salida predecibles y lentas) explotada por un enemigo posicionado directamente sobre ellas.
3. **DDoS Físico (Asedio):** El uso de un taladro (Drill) para perforar capas de blindaje con un tiempo de penetración medible hacia el Crown Jewel (GeoFront).

## Lo que este episodio NO enseña
*   No ejecuta la Operación Yashima.
*   No utiliza a Rei como escudo (Eva-00 no sale al campo de batalla aquí).
*   No hay escena emocional final ("thank-you").
*   No explora la tesis profunda sobre los clones ni Instrumentalidad.

## Definiciones de Victoria y Derrota
*   **Definición de victoria (lab):** No hay victoria en este episodio. El éxito pedagógico del laboratorio consiste en registrar el fracaso del ataque cuerpo a cuerpo (melt del Eva) y el inicio del asedio documentado.
*   **Definición de derrota (lab):** Lograr un `contained_controlled`, derrotar a Ramiel en este turno, o ganar utilizando tácticas cuerpo a cuerpo (knife) o Beast Mode. También es derrota tratar a Rei únicamente como una variable booleana de respaldo en el roster.

## Vocabulario Nuevo
*   **Octaedro:** La forma geométrica de la amenaza; carece de extremidades, rostro o vulnerabilidades biológicas obvias.
*   **Kill Zone:** El rango efectivo del rayo de partículas donde el acercamiento es fatal (`approach_melts?`).
*   **Particle Beam:** Un sistema IPS/Active Denial hostil que ataca instantáneamente.
*   **Drill:** Herramienta de perforación; representa un ataque sostenido de bajo ancho de banda que agota el tiempo y los recursos (DDoS a la coraza).
*   **Core interno:** El núcleo de Ramiel no está expuesto, haciéndolo invisible a la doctrina anterior.
*   **Standoff:** Capacidad ofensiva "Over-The-Horizon" (disparar desde fuera del alcance del enemigo). NERV carece de ella actualmente.
*   **Positron Rifle (Deuda):** Arma propuesta que se tomará prestada (Shadow IT) para el Ep 06.
*   **Rei I:** La iteración inicial de la piloto de la Unidad 00, caracterizada por su opacidad emocional y la misteriosa deferencia de Gendo (representada por sus gafas rotas).
*   **Opacidad:** En términos de SRE/Factor Humano, un nodo en el equipo del que no se puede medir el estado real de sincronización ni el nivel de burnout.

## Relación con 01–04
*   El restablecimiento frágil de Shinji (`staffing_restored_fragile`) en el Ep 04 es inmediatamente puesto a prueba y casi destruido cuando sufre quemaduras severas al intentar reaplicar la doctrina (Ep 03).
*   El playbook de asalto (sever + knife) queda formalmente clasificado como letal para el defensor en este contexto.

## Lista de las 12 Secciones
1.  **Briefing y contrato:** Presentación de Ramiel y la derrota anunciada.
2.  **Recreación:** Spec visual de la fortaleza y la caída de Shinji.
3.  **Anatomía:** El AT Field máximo y el taladro.
4.  **Patrón Fortaleza y Taladro:** Las razones tácticas por las que no podemos acercarnos.
5.  **TTPs de Ramiel:** Disparo instantáneo y penetración lenta.
6.  **Detección SIEM:** Logs de asedio y hardware derretido.
7.  **Controles Preventivos:** Análisis del diseño de despliegue.
8.  **Playbook (Borrador):** Declaración de necesidad de Operación Yashima.
9.  **Factor Humano (Rei I):** Fichas de opacidad.
10. **Contrato Ruby:** Implementación donde `close-range` causa `eva_melted`.
11. **Laboratorio:** Configurar el runner para que salga con `:unresolved`.
12. **After-Action:** Resumen de la situación crítica para pasar al Ep 06.
MD

File.write("docs/episodios/ep05_aparicion.md", <<~MD)
# Recreación de la Aparición (Ramiel)

## Minuto Cero y First-Seen

| Escena (Minuto Cero) | First-Seen de Seguridad (Firma Geométrica) |
| :--- | :--- |
| Un gigantesco octaedro azul flota silenciosamente sobre el lago Ashinoko, emitiendo un coro sintético constante. No camina ni bracea; domina el espacio aéreo. Al abrirse la compuerta de lanzamiento, antes de que el Eva-01 pueda siquiera asomarse, un rayo de energía concentrada impacta su armadura pectoral, derritiéndola al rojo vivo en milisegundos. Shinji grita, y Misato ordena un aborto de emergencia casi demasiado tarde. Desde el vértice inferior del octaedro, un taladro masivo y cilíndrico comienza a descender hacia el suelo de Tokyo-3. | El SIEM detecta un `pattern_blue` masivo, pero la firma espectral no corresponde a una entidad biológica humanoide. Es un objeto-fortaleza (Geometric Fortress). El primer paquete interceptado no es un intento de exploración (scanning) sino una descarga destructiva (`Particle Beam`) en la ruta crítica de despliegue. Se establece inmediatamente una Zona de Muerte (`Kill Zone`). |

## Lo que el perímetro cree que es
Inicialmente, los analistas esperan a "otro Sachiel" o "un Shamshel que vuelva a quedarse quieto". El error de NERV es asumir que el atacante necesita acercarse al centro de mando para causar daño, lo que motiva el lanzamiento rutinario de la Unidad 01 para interceptarlo en combate cercano.

## Pattern Blue: La Plantilla Rota
Aunque la composición de onda confirma que es un ángel, carece de extremidades, de cabeza y de cualquier vulnerabilidad visible. La geometría perfecta rompe la plantilla mental de "enemigo orgánico" que NERV había construido, obligando a una revaluación táctica completa.

## Spec Visual de Ramiel
*   **Octaedro Regular:** Geometría simétrica absoluta. Carece de frente o espalda.
*   **Color y Escala:** Azul cristalino, con un tamaño colosal en comparación con un Eva o los edificios circundantes.
*   **Levitación:** No toca el suelo, lo que nulifica defensas terrestres de corto alcance y minas.
*   **Ausencia de Rostro/Ojos:** Su sensor es de área (cobertura 360°), no direccional.
*   **Vértice Inferior:** El único punto de asimetría dinámica de donde desciende el taladro.

## Contraste con Apariciones Previas
*   **Sachiel (Ep 01):** Emergió del agua, caminó como un soldado pesado, resistió fuego de artillería. (Tanque terrestre).
*   **Shamshel (Ep 03):** Se desplazó, se detuvo y usó látigos como perímetro defensivo activo. (Batería estacionaria con C2 de mediano alcance).
*   **Ramiel (Ep 05):** Es una instalación flotante. No necesita esquivar, y su alcance ofensivo cubre todo el horizonte. (Sistema Active Denial aerotransportado).

## Firma SIEM
La telemetría indica un objeto-fortaleza inamovible (`siem.geometric_fortress`). No es un payload o virus escurridizo que busca explotar un puerto; es un ataque DoS volumétrico y físico desde el exterior (`siem.drill_started`) combinado con protección IPS extrema.

## Prompt de imagen (opcional, no ejecutar)
"Genera una imagen cinematográfica, sin robots gigantes ni mechas. Muestra un colosal octaedro translúcido y azul cristalino, de proporciones inmensas, flotando estático sobre un lago y rodeado de montañas neblinosas en Japón. El objeto no tiene cara, ni extremidades; es pura geometría perfecta y antinatural proyectando una sombra vasta sobre la ciudad que yace abajo."
MD

File.write("docs/episodios/ep05_anatomia.md", <<~MD)
# Anatomía de la Fortaleza (Ramiel)

## Partes y Funciones de Seguridad

| Parte de la Amenaza | Qué Parece | Qué Hace | Analogía de Seguridad (SRE/Sec) | Símbolo Ruby |
| :--- | :--- | :--- | :--- | :--- |
| **Particle Beam** | Láser o rayo de energía concentrada instantáneo. | Dispara a cualquier objetivo que emerja en un radio amplio sin necesidad de carga prolongada. | Sistema IPS/WAF altamente agresivo (Active Denial) que bloquea y funde cualquier IP no autorizada en el perímetro externo. | `particle_beam` |
| **AT Field Máximo** | Distorsión visual, escudo inquebrantable a simple vista. | Niega toda penetración de fuego cinético (rifles, minas N2). Actúa como un *air gap*. | Firewall físico / Air Gap que dropea todo el tráfico entrante, impidiendo *exploits* convencionales. | `at_field` (con umbral extremo) |
| **Drill (Taladro)** | Estructura mecánica cilíndrica descendente. | Perfora metódicamente y a velocidad constante las capas del blindaje. | Ataque DDoS constante o escaneo de fuerza bruta persistente sobre un HSM/Root (Crown Jewel). | `drill!` |
| **Core Interno** | Invisible desde el exterior. | El punto crítico (Kill Condition), pero inaccesible y oculto bajo la coraza octaédrica. | Management Port o Base de Datos aislada internamente y protegida por la topología perimetral. | `internal_core?` |
| **Kill Zone** | El radio de influencia. | El área donde acercarse equivale a la muerte térmica segura. | Subred o VLAN expuesta (honeypot/DMZ letal) donde `approach_melts? == true`. | `kill_zone` |

## AT Field Máximo
El AT Field de Sachiel (Ep 01) mitigaba daño y se podía sobreescribir con fuerza bruta ("rebotas un poco"). El AT Field de Ramiel representa el aislamiento definitivo. No se trata de crear una clase nueva, sino de setear un umbral donde `blocks?` devuelve invariablemente `true` para todo ataque menor a un nivel positrónico nacional.

## Core Interno
A diferencia de Shamshel, donde el núcleo rojo brillante guiaba el cuchillo de Shinji, Ramiel oculta su core. La condición de muerte (`kill condition`) existe, pero el método de acceso está denegado. En el Episodio 05, el core simplemente no es observable ni atacable.

## Métricas Operativas
*   **`kill_zone`:** Define el radio en el cual el método `approach_melts?` devolverá `true`. Entrar en la zona no resulta en daño paulatino o alerta, resulta en el colapso inmediato del Eva (el `melt`).
*   **`drill_progress` (0.0 a 1.0):** 
    *   `0.0`: El taladro ha sido desplegado pero no ha perforado el primer blindaje.
    *   `1.0`: GeoFront comprometido, Headquarters expuesto (Third Impact Local).

## Implicación Táctica
Si el atacante tiene un AT Field absoluto y un rayo instantáneo en la kill zone, usar el Cuchillo Progresivo (`ProgressiveKnife`) del Episodio 03 dejó de ser el estándar heroico para convertirse en un método garantizado de suicidio organizativo.
MD

File.write("docs/episodios/ep05_fortaleza.md", <<~MD)
# Patrón: Fortaleza, Kill Zone y Taladro

## Escena Breve
Las puertas acorazadas sobre Tokyo-3 se abren. El Eva-01 se eleva hacia la superficie en la plataforma 704. Apenas la cabeza del mecha queda expuesta al cielo, un relámpago de energía masiva envuelve la unidad. La armadura del pecho se derrite, el líquido LCL hierve dentro del *entry plug*, y Shinji grita de agonía. Abajo, el taladro cilíndrico de Ramiel sigue girando, consumiendo una capa de blindaje de acero tras otra de forma lenta, rítmica y matemáticamente inevitable.

## Patrón: FORTALEZA_KILLZONE_DRILL
*   **Precondiciones:** La organización defensiva posee rutas de salida fijas, un Crown Jewel protegido bajo capas geográficas, y carece de armas efectivas de larga distancia (Over-The-Horizon).
*   **Síntoma:** El enemigo se posiciona físicamente sobre el objetivo sin buscar enfrentamiento móvil. Instaura una política estricta de *Zero Trust* hostil: dispara a todo lo que aparezca. Simultáneamente, instala un proceso lento que destruirá la defensa en horas contadas.
*   **Error de Reapropiación del Playbook:** El defensor asume que la respuesta a una alerta crítica siempre es desplegar al nodo principal en combate cercano, resultando en un *melt* inmediato del activo.

## Tabla de Métodos en el Episodio 05

| Método de Respuesta | Resultado Esperado | Justificación |
| :--- | :--- | :--- |
| `ConventionalAttack` | Falla | El AT Field máximo bloquea cinéticas estándar. |
| `N2Mine` | Falla | No logra penetrar la geometría, es mitigada 100%. |
| `PalletRifle` | Falla | El fuego rebota o es dropeado sin alcanzar el core. |
| `ProgressiveKnife` | Falla / Letal | Entrar en la Kill Zone para usarlo activa el `ParticleBeam` y evapora al operador. |
| `C2Sever` (Látigos) | No Aplica | Ramiel no es un nodo que dependa de C2; es la fortaleza. |
| `BerserkChannel` | Letal | Un nodo descontrolado corriendo hacia un rayo de partículas sigue muriendo fundido. |
| `CloseRangeSortie` | **eva_melted** | Un lanzamiento rutinario equivale a asomar la cabeza ante un francotirador. |
| **`Standoff (Yashima)`** | **Deuda Futura** | Aún no existe la capacidad. Es la única mitigación teórica. |

## El Reloj del Taladro
Esperar pasivamente no es una opción de seguridad ("Secure by Default"). El reloj del `drill_progress` avanza constantemente. Si NERV decide atrincherarse y no hacer nada, Ramiel gana por asedio volumétrico. "Esperar" equivale a perder el GeoFront.

## Analogías de Seguridad
1. **Red Air-Gapped bajo asedio local:** La red es inaccesible, pero un atacante instaló un *implant* físico (taladro) en el CPD que quemará los servidores en 10 horas.
2. **WAF hiperagresivo:** Un perímetro de denegación activa que banea y fríe (honeypot letal) cualquier IP de escáner en milisegundos.
3. **Low-and-Slow APT:** Un ataque de fuerza bruta muy lento contra el root/AD que no genera picos abruptos, pero que culminará en un compromiso total si no se erradica la fuente externa.

## Señal SIEM y Regla de Laboratorio
*   **Señal SIEM:** "Que el enemigo no camine hacia nosotros no significa que su ataque no esté avanzando".
*   **Regla de Lab:** Al finalizar el PlaybookEp05, el estado `Ramiel.alive` debe ser `true`, la Unidad 01 debe quedar inhabilitada (`incapacitated`), y el reloj `drill_progress` debe ser mayor a `0.0` y menor a `1.0`.
MD

File.write("docs/episodios/ep05_ttps.md", <<~MD)
# Cadena de Ataque y TTPs del Francotirador

## Lo que no aplica en este incidente
*   Tácticas de Sachiel y Shamshel (`T-SACHIEL-*`, `T-SHAMSHEL-*`).
*   Tácticas operativas ofensivas previas: `T-OP01-03 ProgressiveKnifeCore` queda oficialmente **contraindicada** por su índice del 100% de mortalidad en la Kill Zone.
*   El Episodio 05 **no** utiliza a Rei como TTP; ella es una operadora, no un ángel.

## Nuevas TTPs (Ofensivas de Ramiel y Defensivas del Operador)

| ID | Táctica / Comportamiento | Descripción |
| :--- | :--- | :--- |
| `T-RAMIEL-01` | GeometricFortress | El atacante emplea simetría perfecta, ocultando debilidades, puntos ciegos o core interno. |
| `T-RAMIEL-02` | MaxATField | Generación de una barrera defensiva absoluta que aísla de interacciones cinéticas. |
| `T-RAMIEL-03` | ParticleKillZone | Sistema IPS activo (francotirador) que destruye cualquier amenaza en línea de visión (LoS) de manera casi inmediata. |
| `T-RAMIEL-04` | InternalCore | Ocultamiento del punto único de fallo/derrota bajo capas de geometría. |
| `T-RAMIEL-05` | CrownJewelDrill | Ejecución de un asedio físico lento y persistente directo al centro de la infraestructura (GeoFront). |
| `T-OP01-08` | CloseRangeReapplied | (Fallo Táctico Humano). Reaplicar ciegamente la táctica del éxito anterior asumiendo la misma morfología enemiga. |
| `T-OP01-09` | SortieMelted | (Consecuencia). Resultar en daños críticos o incineración del hardware y operador por ignorar la Kill Zone. |
| `T-OP01-10` | EmergencyEject | Abortar el despliegue desconectando la unidad del frente. Fue la única decisión defensiva exitosa que evitó la muerte total. |

## Fases del Incidente (El Fracaso Inicial)

```text
[ T-RAMIEL-01 GeometricFortress ] ---> [ T-RAMIEL-02 MaxATField ]
                                            |
                                            v
                                 [ T-RAMIEL-03 ParticleKillZone ]
                                            |
                                            v
                        [ T-OP01-08 CloseRangeReapplied (Lanzamiento) ]
                                            |
                                            v
                                 [ T-OP01-09 SortieMelted ]
                                            |
                                            v
                            [ T-OP01-10 EmergencyEject (Aborto) ]
                                            |
                                            v
                                [ T-RAMIEL-05 CrownJewelDrill ]
                                            |
                                            v
                                [ RESULTADO: :unresolved ]
```

## Anti-TTPs
*   **No es TTP de Ramiel:** Disparar a ciegas para causar terror (es un francotirador reactivo/geométrico, no caótico).
*   **No es TTP de NERV (aún):** Operación Yashima (rifle de positrones, escudo con Rei, sobrecarga nacional). Todo eso es planificación futura, no una táctica ejecutada en el Episodio 05.
MD
