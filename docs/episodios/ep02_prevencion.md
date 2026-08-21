# Ep 02 — Controles preventivos (evitar NECESITAR al Beast)

Episodio: 02 · *The Beast* · INC-SACHIEL-001
Prevención del 02: no es “matar ángeles antes”. Es **no diseñar un sistema cuya única vía de supervivencia sea un failsafe opaco.**

Nadie debería salir de este archivo queriendo “más berserk”. El riesgo residual se nombra; no es excusa de Gendo.

Playbook del durante = sección 08. Staffing-erizo completo = ep 04.

---

## Columna PREVENIBLE

Mínimo cinco, **distintos** de P-01…P-07 del ep 01 (`docs/episodios/ep01_prevencion.md`). Se citan los del 01; no se copian. Estos son P-08…P-14.

### P-08 Human-in-the-loop real
- **Qué habría cambiado.** Un canal que descarta al operador no se puede disparar en silencio. T-EVA01-02 no existe como “feature” innombrada.
- **Analogía.** El SOAR no tiene una rama `auto_wipe` sin ticket humano; si la tiene, está en rojo en el inventario.
- **Símbolo.** `operator_input_discarded` solo con moción MAGI explícita — que en el 02 **no** hay. Guardas en `Eva#berserk!` / playbook: emitir `siem.magi_berserk_unauthorized`.

### P-09 Umbral de aborto por `sync_rate`
- **Qué habría cambiado.** El 01 no despliega (o aborta superficie) si `sync_rate < Eva::SYNC_THRESHOLD`. No se llega al freeze encima del ángel vivo. El Beast no se vuelve “lo único que queda”.
- **Analogía.** Change freeze: si el on-call no pasa el game-day, no se le da break-glass. Distinto de P-02 (tener operador listo): esto es **negar el deploy** cuando no lo está.
- **Símbolo.** `PlaybookEp01` / IC: abort si `!eva.core_strike_possible?` *antes* del choque. No es P-02.

### P-10 Inventario de agencia opaca
- **Qué habría cambiado.** `opaque_agency` aparece en el CMDB **antes** del first-seen. El 02 no descubre un daemon en pleno crush.
- **Analogía.** Un EDR con motor de “aislamiento autónomo” no documentado es un vendor-failsafe, no un control tuyo.
- **Símbolo.** `Eva#opaque_agency` legible en frío; alertar si pasa a true sin moción.

### P-11 Kill-switch documentado (no opaco)
- **Qué habría cambiado.** Si hace falta un canal extra-humano, tiene runbook, dueño, MAGI, y se ensaya. El crush no llega de un animal.
- **Analogía.** El isolate/wipe del EDR está en el playbook, con human-in-the-loop o con autorización explícita — no un surprise kernel module.
- **Símbolo.** `BerserkChannel` no es ese switch. Un futuro `AuthorizedFailsafe` sería otra clase. No confundirlas.

### P-12 Aislar pain sync
- **Qué habría cambiado.** El operador no es el sensor de integridad. Puede reportar. T-EVA01-01 no ciega al IC.
- **Analogía.** No acoplar al analista al host que se está reimaging (canary humano).
- **Símbolo.** `pain_sync` bajo por diseño; `siem.operator_pain_sync` es incidente, no telemetría normal.

### P-13 Moción MAGI por canal extra-humano
- **Qué habría cambiado.** Deploy ≠ berserk. `authorized?(:berserk)` no se recicla de `majority?` de deploy. La omisión no autoriza.
- **Analogía.** El voto de “subir a producción” no es voto de “disparar el wiper de firmware”.
- **Símbolo.** `Magi#authorized?(:berserk)` distinto de `#majority?`. Test que falla si se implementa por omisión.

### P-14 Felicidades fuera del KPI de contención
- **Qué habría cambiado.** `congratulations_issued` no cierra el ticket. El AAR sale el mismo día. T-EVA01-06 no maquilla T-EVA01-05.
- **Analogía.** El banner “malware removed” del vendor no es el estado del IR.
- **Símbolo.** `ContainmentResult` ignora congratulations. Anti-métrica de la 06.

Los P-01…P-07 del 01 **siguen haciendo falta** (doctrina de core, operador en sync, backup, drills de wipe, perímetro, autorización sin agenda, first-seen). El 02 añade la capa “no necesitar al animal”.

---

## Columna SOLO MITIGABLE / riesgo residual

| Qué no se previene ya | Por qué | Qué sí se puede hacer |
|---|---|---|
| Que Sachiel, mutado, esté ganando el choque | El 01 ya desplegó mal. El ángel vivo es hecho. | No celebrar el 01; encadenar forense. |
| Que un failsafe opaco *exista* en la unidad y nadie lo hubiera inventariado | Si ya está en el hardware/agencia y el piloto no responde, quizá el Beast era el único camino **en esa ventana** | Aceptarlo como **riesgo residual sucio**. Registrarlo. No promocionarlo como feature. No es un plan de capacidad de Gendo. |
| Que el público ya viera | Disclosure ya ocurrió en el 02 | Corregir relato; no rebobinar ojos civiles |
| Pain sync del choque ya sentido | El acoplamiento ya lesionó | Cuidar al operador (09); no vender trauma como control |

Aceptar el residual: “en *este* minuto, sin aborto previo, el cuerpo actuó y el ángel murió”. Eso no autoriza a diseñar el próximo incidente para que vuelva a pasar. Gendo extrayendo señal (`hidden_agenda_progress`) no convierte el residual en P-08 cumplido.

---

## Anti-patrones

### A-06 Beast-as-feature
“El Eva despertó, luego funciona” como plan de capacidad. Es el anti-patrón central del 02. Analogía: “el EDR a veces formatea solo y nos ha salvado” escrito en el roadmap. T-EVA01-02 no es un producto.

### A-07 Felicidades-as-KPI
Cerrar por aplauso. `congratulations_issued` como éxito. Analogía: el dashboard verde del MSSP el mismo día del ransomware. Viola P-14.

### A-08 “El control inteligente nos cubre”
Confiar en agencia no inventariada (ML, EDR autónomo, “la unidad sabe”). Analogía: un modelo que aisla hosts sin ticket porque el vendor lo llama AI. Viola P-10 y P-11.

(Se heredan A-01…A-05 del 01: Eva-talismán, más calibre, backup de organigrama, silencio post-wipe, convocar el día D. El Beast-as-feature es A-01 recaído: ahora el talismán *se movió solo*.)

---

## Relación con T-EVA01-* y con ep01_prevencion.md

| TTP | Preventivo nuevo | Cita al 01 |
|---|---|---|
| `T-EVA01-01` PainSyncFeedback | P-12 | P-02 (operador listo) no basta si el listo es el sensor de daño |
| `T-EVA01-02` OperatorBypassBerserk | P-08, P-10, P-13 | P-06 (autorización limpia) se extiende: moción por canal, no solo deploy |
| `T-EVA01-03` BruteForceATFieldBreak | P-11, y P-01 del 01 (doctrina de campo/core) | Sin CoreStrike entrenado, el shatter es lo que queda |
| `T-EVA01-04` CoreCrush | P-09 + P-01 del 01 | Si hubiera abort por sync, no se llega al puño opaco |
| `T-EVA01-05` CollateralCity | P-09 (no pelear en esas condiciones) | P-05 (no gastar el perímetro) reduce teatro previo, no el aullido |
| `T-EVA01-06` PublicDisclosure | P-14 | — |

Lectura: los preventivos del 01 reducen la *probabilidad de necesitar* al Beast. Los del 02 reducen la *probabilidad de diseñarlo sin saberlo*. Ninguno mata a Sachiel por sí solo.

---

## Higiene de failsafe opaco

Siete viñetas. Sirven para EDR / SOAR / ML, sin robot.

1. **Inventaría todo lo que puede actuar sin teclado.** Si no está en el CMDB, no es un control: es un vecino.
2. **Un voto de deploy no es un voto de wipe.** Quórum por *canal*. La omisión no autoriza.
3. **Si el humano está en el loop, el loop no puede descartarlo en silencio.** Detecta `input_discarded` como incidente, no como éxito.
4. **Abortar por umbral es prevención.** Dejar al junior en consola “porque total el auto-isolate cubre” es A-08.
5. **El sensor no debe ser el cuerpo del analista.** Pain sync / canary humano ciega el reporting justo cuando más hace falta.
6. **“Funcionó” no entra al roadmap.** Los failsafes que salvan un estate y rompen tres se registran como residual sucio, no como feature.
7. **El banner de victoria no cierra el ticket.** Resolved en el vendor, resolved en el dashboard, resolved en la calle: mira el cuerpo, el disk, el no-consent.

Eso es higiene. El árbol de qué pasa cuando el failsafe **ya se disparó** es el playbook de la 08.
