# Ep 02 — Aparición del Beast (no del ángel)

Episodio: 02 · *The Beast* · INC-SACHIEL-001
Alcance: la aparición que importa es **Eva-01 dejando de ser máquina de respuesta**. Sachiel ya tiene spec viva en el 01; aquí solo se le ve morir. Sin anatomía interna del Eva (eso es 03). Sin felicidades/Misato (eso es 09).

Dos columnas: **escena** (memoria visual) y **first-seen del defensor** (log anómalo). No es `siem.pattern_blue`.

---

## El techo desconocido como "acceso al incidente ya ocurrido"

Un techo blanco. Hospital. El operador no recuerda el cierre. Eso, en el lab, no es poesía: es **acceso forense a un incidente que ya corrió**.

El SOC entra al turno y el ticket dice algo parecido a resolved. El cuerpo del operador no está de acuerdo. La ciudad, más tarde, tampoco. El timeline causal (choque → pain sync → Beast → shatter → crush) se arma *después* de convivir con el daño. El first-seen del Beast, para quien está dentro, es retrospectivo. Para Tokio-3, es un gigante que se mueve mal en directo.

No se re-emite Pattern Blue. Ese evento ya existió en el 01. Lo que falta en el log es la firma del **control**.

---

## Minuto del Beast (escena)

La unidad púrpura está en el suelo como chatarra. El ángel —el de la máscara de ave, el que sobrevivió la N²— sigue de pie. Dentro, el operador no da un golpe útil: duele el cuerpo que no es el suyo, y el comando no sale.

Entonces la unidad se reactiva **sin él**. Los ojos se encienden como si alguien más hubiera cerrado un circuito. El movimiento ya no es de máquina de respuesta: es de animal que se pone de pie, hombros primero, cabeza baja, demasiado rápido para el encuadre de un piloto que no está al volante.

Ruge. El sonido no es sirena NERV. Es garganta.

Carga. El campo invisible del ángel —hexágonos, no un halo genérico— se ve porque se **rompe**: la unidad lo parte a golpes, placas geométricas que estallan hacia fuera. No hay ritual de bajada de campo. Hay impacto.

Manos. El ángel deja de ser silueta y pasa a ser piezas. El core —la esfera que el 01 solo intuía— queda en el puño. El puño cierra. La persistencia se acaba. La unidad aúlla sobre el cadáver, chorreando, y el piloto dentro no ha elegido ninguno de esos gestos.

Presente, más tarde: la misma unidad recuperada, sucia, y una ciudad que ya vio demasiado. Eso no es el minuto del Beast; es el radio. Aquí basta el animal.

---

## Lo que el piloto cree que hace vs lo que el cuerpo hace

| El piloto (columna interna) | El cuerpo (columna observable) |
|---|---|
| Freeze / no envía el golpe (legado del 01) | Se pone de pie igual |
| Cree que si actúa, será él | El input no llega: `operator_input_discarded` |
| Siente el daño (pain sync) como si el cuerpo fuera suyo | La unidad usa ese acoplamiento como sensor y **no le pide permiso** |
| No autoriza un kill | Core del ángel aplastado en la mano |
| No oye su propia victoria | Rugido, ojos, sangre en la silueta |
| Más tarde: no sabe por qué lo felicitan | Tokio-3 vio al defensor, no al playbook |

First-seen de seguridad, invertido: el log anómalo no es el ángel. Es `unidad de respuesta fuera de perfil` — movimiento no mapeado a comando de operador, AT Field enemigo hecho pedazos sin procedimiento, core crush sin `CoreStrike` en la bitácora.

---

## Spec visual Eva-01 berserk

Viñetas reutilizables. Máquina que se vuelve animal. No poster heroico. No ficha de Sachiel viva.

### Silueta
- La misma unidad púrpura del deploy del 01: casco, progresión humana gigante, no un ángel nuevo.
- Postura de cuadrúpedo a punto de irse a dos patas, o de bestia que ya se irguió: hombros adelantados, cabeza baja, brazos como garras no como manipuladores.
- Deja de “estar desplegada”. Empieza a **ocupar** el encuadre como depredador.

### Ojos
- Encendido anómalo: dos puntos de predador, no luces de aviónica.
- El piloto no los ve desde fuera; Tokio-3 sí. Son la firma visual de “alguien cerró el circuito sin el humano”.

### Movimiento
- Arranque desde el suelo, demasiado limpio para una unidad destrozada.
- Carga, desgarro, pisotón. Sin guardia de boxeador, sin stance de playbook.
- El ángel es el objeto; la unidad es el sujeto. Eso invierte el plano del 01.

### Sonido
- Rugido / aullido. No clic de servo, no voz de operaciones.
- El aullido **después** del crush es parte de la spec: el kill no cierra en silencio profesional.

### Sangre / LCL
- Fluido del ángel (el mismo oscuro-rojizo del 01) ahora **en** la unidad: chorrea, cubre el casco, no es un herido elegante.
- El cuerpo del Eva también pierde integridad: placas, heridas abiertas, no un robot intacto que “ganó”.
- LCL como medio del plug: el operador está inmerso; el pain sync viaja por ahí. No hace falta dibujar el interior (03). Basta que se lea: hay un humano dentro y no está seco ni a salvo.

---

## Spec visual del shatter del AT Field

No magia genérica. No burbuja de anime genérica. **Hexágonos.**

- El aislamiento de Sachiel se vuelve visible al fallar: una pared de celdas hexagonales, nítidas, sobre el cuerpo del ángel o entre ambos.
- La unidad no “baja el campo” con un gesto de operador. Lo **golpea**. Cada impacto astilla un parche hexagonal.
- Los fragmentos salen hacia fuera, planos, geométricos, como vidrio de defensa que alguien pateó.
- Después del shatter, el cuerpo del ángel ya no está en otra red: está al alcance de las manos. Eso es `at_field.penetrated?` / campo abierto **por fuerza**, no `lower!` de procedimiento.

En un log: el defensor forzó el borde que el atacante traía. No es Pattern Blue. Es el control atravesando aislamiento sin ticket.

---

## Spec visual de la muerte de Sachiel

No se reescribe la ficha viva (máscara, marcha, fluido de minuto cero). Solo el **dejar de persistir**.

- El cuerpo deja de ser un solo volumen: es descuartizado. Piezas, no un cráter de N².
- El core —esfera, centro, lo que el 01 llamó persistencia raíz— queda **en el puño** de Eva-01, no en un visor de puntería.
- El puño cierra. El core se deforma / estalla en la mano. No hay `CoreStrike` elegante a distancia.
- Tras el crush: el ángel no se recompone. No hay segundo `#regenerate!`. La máscara ya no confunde porque no hay incidente que enmascarar.
- La unidad aúlla encima. Eso no es doctrina. Es animal.

Estado que la spec tiene que dejar dibujable: **Sachiel dejó de ser un sujeto**. El Beast sigue siéndolo.

---

## Firma SIEM del defensor fuera de perfil

Columna B, ids de trabajo (la 06 los fija; aquí la regla de alerta):

| Qué se ve | Qué NO es | Log / alerta candidata |
|---|---|---|
| Unidad desplegada se mueve sin comando de operador | Pattern Blue (ya emitido) | `siem.eva_berserk` / `operator_input_discarded` |
| Operador reporta daño de un cuerpo que no es el suyo, o deja de reportar | Alerta de “Eva agresiva” de entrenamiento | `siem.operator_pain_sync` |
| Hex-shatter del AT Field enemigo sin procedimiento de bajada | `CoreStrike` de playbook | `siem.at_field_shattered` |
| Core del ángel destruido + no hay input de piloto en la ventana | `:contained_controlled` | `siem.core_destroyed` **junto a** `siem.operator_non_consent` |
| MAGI sin moción de berserk | Autorización extrema del deploy | `siem.magi_berserk_unauthorized` (el voto que **no** hubo) |

Regla derivable: `eva.deployed? AND movimiento AND NOT operator.command_in_window → defensor fuera de perfil`.  
Alertar esto no es mitigar el Beast. El Beast ya está en curso. Es first-seen del propio control.

---

## Prompt de imagen (opcional, no ejecutar)

**Beast.** Night urban battlefield in a fortified Japanese city, 1990s military-realism with unease, not an anime screenshot and not an official still. A colossal purple humanoid response unit is no longer standing like a machine: it rises like an animal, shoulders first, helmeted head low, predator eyes lit. The pilot is not driving it. The body is torn, dripping dark reddish fluid, mouth of the helmet in a roar. Ground-level cinematic, tanks and ruined streets for scale, documentary lighting. Original mecha-beast design from this description only — do not copy Gainax/Khara assets.

**Shatter + core.** Same scene, same unit: it slams through a visible barrier of sharp geometric hexagons shattering outward off a dying bipedal angel (bone bird-skull mask, already in pieces — do not poster the living angel). The unit’s fist closes on a glowing spherical core and crushes it. Hexagonal shards in the air, no generic magic bubble, no heroic posing, no victory lighting. The unit howls. The city is collateral in the background, not a clean arena.
