# Ep 01 — Briefing y contrato

Episodio: 01 · *Angel Attack* · Sachiel (3º ángel, primer combate de la TV)
Clase de amenaza: first-contact / persistencia / regeneración post-wipe
Canon: TV 1995/96. Este corte termina con Eva-01 en superficie y Sachiel en pie.

---

## Contrato

Este episodio es el tutorial de persistencia del laboratorio NERV. No es una victoria. En la TV, Tokio-3 ve un ángel por primera vez en quince años y Shinji ve un Eva por primera vez en su vida. En el lab, eso se traduce a cuatro hechos operativos:

1. No hay playbook maduro para un Pattern Blue.
2. El perímetro convencional (ONU, artillería, lo que un SOC llamaría “respuesta de libro”) no muerde.
3. El wipe pesado (mina N²) no mata: el cuerpo se recompone y vuelve con más TTPs.
4. Se despliega un operador en frío, con sync bajo, porque el backup está herido.

**Alcance de este repo en el ep 01:** detectar, modelar, fallar en contener, y dejar el incidente *unresolved* para el 02.

**Éxito de NERV en pantalla ≠ éxito del lab.** NERV quiere que el ángel deje de caminar. El lab quiere que un extraño pueda reproducir por qué no dejó de caminar.

**Prevención ≠ tener un Eva.** El Eva es mitigación de último recurso: unidad de respuesta con piloto humano. Tratarlo como control preventivo es el anti-patrón de este episodio.

**Lo que se le debe al episodio 02:** el combate no se cierra aquí. No hay berserk, no hay Dummy Plug emocional, no hay hotel/Misato, no hay “The Beast”. El handoff es: Eva desplegada, operador no entrenado, Sachiel de pie, contención no alcanzada.

---

## Lo que este episodio enseña

- **Primer contacto sin firma.** Un blob en el perímetro que no encaja en “ejército enemigo”. Nombrarlo mal (ONU) retrasa la doctrina correcta (NERV: Pattern Blue).
- **El wipe que no toca el core es teatro.** Regenerar no es lo mismo que estar contenido. Mutar después del wipe es el atacante aprendiendo de tu mejor golpe.
- **Detección ≠ contención.** Pattern Blue puede dispararse y el episodio sigue siendo un fallo de preparación.
- **Staffing como control.** Operador convocado el mismo día, backup no disponible, autorización con agenda oculta. El factor humano no es “el piloto lloró”: es freeze, sync bajo y failover inexistente.
- **Doctrina de core como hipótesis, no como playbook cerrado.** En el 01 se intuye que golpear el cuerpo no basta. Aún no es una regla de puntería madura.
- **Sachiel es el tutorial de persistencia** en el mapa TV → amenaza: el resto de ángeles asume que ya entendiste que “explotó” no significa “muerto”.

---

## Lo que este episodio NO enseña (ep 02+)

Prohibido adelantar, implementar o “resolver de paso”:

- El berserk de Eva-01, el cuerpo del Eva como arma fuera de control, y la resaca pública (*The Beast*). Eso es el 02.
- Anatomía interna detallada más allá de lo observable + hipótesis de core (sección 03 del 01). La doctrina “apunta al core” no nace cerrada aquí.
- MAGI al nivel de compromiso de Ireul. Aquí hay un stub de tres votos y mayoría. Nada más.
- Cualquier ángel posterior. No hay látigos (Shamshel), no hay fortaleza geométrica (Ramiel), no hay software en los MAGI, no hay insider, no hay Instrumentality.
- Contención exitosa. Si el lab “gana” en el 01, el contrato está roto.

El campo SIGUIENTE de la cabecera es el único adelanto lícito: ep 02, mismo ángel, otro problema.

---

## Definición de victoria (del lab, no de NERV)

El episodio 01 está *bien construido* cuando:

- Un extraño lee este briefing y sabe qué se va a construir y qué está prohibido.
- La aparición, la anatomía, la persistencia post-N², las TTPs, la detección y el playbook son specs implementables.
- El código (cuando exista, sección 10) deja a Sachiel en pie tras `ConventionalAttack` y `N2Mine`.
- `CoreStrike` es posible en el modelo, pero **no ocurre** con el Eva del 01 (`sync_rate` bajo).
- El playbook del 01 termina `:unresolved`. Nunca `:contained`. Nunca `:berserk`.
- El runner del laboratorio (sección 11) sale con código 2: incidente no cerrado.
- El AAR transfiere deuda concreta al 02 sin escribir el 02.

Victoria del lab = el fallo es reproducible y enseñable. No = el ángel cae.

---

## Definición de derrota

El episodio (o una sección) está mal si:

- El código o la prosa “resuelven” el combate.
- Un test aserta lore en vez de comportamiento (regenerar, rebotar, no contener).
- “Prevención” se reduce a “tenemos un Eva”.
- El berserk, el hotel, o el Dummy Plug aparecen en entregables del 01.
- MAGI se implementa como sistema inmune listo para Ireul, o se ignora el stub de mayoría.
- Se lista el catálogo entero de ángeles “por contexto”.
- El factor humano se resume en un chiste sobre Shinji.

Derrota de NERV en pantalla (Sachiel sigue de pie) es el resultado *correcto* del escenario. Derrota del lab es no poder demostrar por qué.

---

## Vocabulario

| Término | En este repo |
|---|---|
| **Pattern Blue** | Firma de detección: “esto no es convencional, es un ángel”. Evento de SIEM, no un hechizo. Alertar no es mitigar. |
| **AT Field** | Aislamiento que el atacante trae consigo. Rebota `ConventionalAttack`. En Sachiel, sobrevive también `N2Mine`. No es el core. |
| **Core** | Condición de kill. Persistencia raíz. Si no lo tocas, el incidente no termina. En ep 01 es hipótesis operativa, no doctrina publicada. |
| **N²** | Wipe pesado. Espectacular. No mata a Sachiel. Analogía de lab: reimage / restore que no saca el implant. Dispara regeneración y mutación. |
| **Eva** | Unidad de respuesta con operador humano. Mitigación de último recurso. Su efectividad depende de `sync_rate`. No es un control preventivo. |
| **MAGI** | Tres votos (Melchior, Balthasar, Casper). Mayoría (2 de 3) para doctrina, identificación, autorización extrema. Stub en el 01; diseñable para infección futura, no infectado. |
| **Playbook** | Runbook con controles que debieron existir *antes* (prevención) y pasos *durante* (mitigación). El del 01 recorre ONU → N² → deploy Eva en frío y se corta `:unresolved`. |

---

## Lista de las 12 secciones y su entregable de una línea

| # | Sección | Entregable |
|---|---|---|
| 01 | Briefing y contrato | `docs/episodios/ep01_briefing.md` — este archivo: alcance, victoria/derrota, vocabulario. |
| 02 | Recreación de la aparición | `docs/episodios/ep01_aparicion.md` — minuto cero, first-seen, spec visual, prompt de imagen no ejecutado. |
| 03 | Anatomía | `docs/episodios/ep01_anatomia.md` — partes → función → control → símbolo Ruby; AT Field ≠ Core. |
| 04 | Persistencia (mina N²) | `docs/episodios/ep01_persistencia.md` — patrón `PERSISTENCIA_POST_WIPE`; Conventional/N² no bajan a Sachiel. |
| 05 | Cadena de ataque / TTPs | `docs/episodios/ep01_ttps.md` — fases + ids `T-SACHIEL-0x` citables desde tests. |
| 06 | Superficie de detección | `docs/episodios/ep01_deteccion.md` — Pattern Blue, falsos positivos, ids `siem.*`. |
| 07 | Controles preventivos | `docs/episodios/ep01_prevencion.md` — prevenible vs solo mitigable; el Eva no es talismán. |
| 08 | Playbook de mitigación | `docs/episodios/ep01_playbook.md` — árbol ONU → N² → Eva en frío; corte sin victoria; handoff al 02. |
| 09 | Factor humano | `docs/episodios/ep01_humanos.md` — sync, freeze, backup herido, hidden agenda; métricas de lab. |
| 10 | Contrato Ruby | `lib/nerv/**` + tests minitest — Sachiel ejecutable; playbook `:unresolved`; MAGI mayoría. |
| 11 | Laboratorio | `bin/episodio` + escenario ep 01 — traza de eventos, exit 2. |
| 12 | After-action | `docs/episodios/ep01_aar.md` + `prompts/ESTADO.txt` → ep 02, incidente cerrado unresolved. |
