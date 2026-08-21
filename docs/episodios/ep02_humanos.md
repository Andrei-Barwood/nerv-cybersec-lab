# Ep 02 — Factor humano 2: trauma, felicidades, la ciudad

Episodio: 02 · *The Beast* · INC-SACHIEL-001
Deltas respecto a `docs/episodios/ep01_humanos.md`. No se recopian las fichas. El operador sobrevive desacoplado de la victoria. El IC celebra la métrica incorrecta. Aparece un stakeholder: el público. Gendo obtiene datos.

Ética: este repo **no** vende “el trauma forja al piloto” como control.

---

## Deltas

### Shinji — de freeze a no-consent + trauma
- **Qué cambia.** El freeze del 01 sigue siendo verdad (`action_frozen?`). Encima: `operator_non_consent` (el cuerpo mató sin él), `pain_sync` alto (se lesionó con la unidad), techo desconocido (no tiene timeline), no reconoce el triunfo. No se vuelve valiente. No “gana sync”.
- **Qué no es.** Todavía **no huye de NERV**. Convive aturdido. El erizo (ep 04) no se adelanta.
- **Métrica nueva.** `trauma_load` > 0. `operator_non_consent == true`. `pain_sync` ≈ 0.9 en el choque.

### Rei — sigue fuera
- **Qué cambia.** Nada operativo. `backup_unavailable` sigue true. No hay failover post-Beast. No se la usa de “piloto que habría controlado”.
- **Qué no es.** Dummy Plug, reemplazo, explicación de `opaque_agency`.

### Gendo — extrae señal, no gana el capítulo
- **Qué cambia.** `hidden_agenda` sigue. Ahora hay `hidden_agenda_progress`: el Beast era información (la unidad tiene agencia; el niño sobrevivió al acoplamiento). Observa. No vota MAGI de berserk.
- **Qué no es.** Boss-final. No “planeó el aullido” como playbook publicado. El residual sucio no es su P-08 cumplido.

### Misato — IC con métrica incorrecta y rol dual
- **Qué cambia.** Sigue IC. Aloja / cuida al operador **y** dice “felicidades”: evalúa mal al mismo tiempo. `congratulations_issued` pasa por su boca (y por la calle). No puede apagar al Beast. No es “mami-IC” de meme: es IC que mezcla contención con cuidado y usa el KPI falso.
- **Qué no es.** Tesis de cohabitación (ep 04). Hotel como mitigación. Tutora que cierra el incidente.

---

## Actor nuevo: Público / Tokio-3

- **Función.** Stakeholder de disclosure. Ve al defensor fuera de perfil. Felicita. Convierte T-EVA01-06 en relato.
- **Modo de fallo.** Métrica externa de victoria que no tiene acceso a `operator_non_consent`. Presiona al IC a firmar el ticket.
- **Métrica.** `public_visibility` > 0. Consume y produce `congratulations_issued`.
- **Analogía SOC.** Twitter / dirección / clientes aplaudiendo “ya está resuelto” mientras el analista sigue en shock y el EDR auto-wipeó tres hosts.
- **ONU/ciudad.** Blast radius político: el wipe y el Beast no son secretos. No es un TTP aparte de T-EVA01-05/06; es el receptor.

---

## Métricas

| Métrica | Tipo | Valor canónico 02 | Efecto |
|---|---|---|---|
| `operator_non_consent` | Bool | **true** | El canal de kill no fue el piloto. Obligatorio al cierre. |
| `pain_sync` | Float 0.0–1.0 | **≥ 0.7** (canónico 0.9) | Acoplamiento de daño. Parte del trigger. Demora de reporte. |
| `trauma_load` | Float ≥ 0 | **> 0** | Carga post-incidente. No sube `sync_rate`. No “forja”. |
| `congratulations_issued` | Bool | **true** | KPI falso. No cambia `ContainmentResult`. |
| `hidden_agenda_progress` | Float ≥ 0 | **> 0** (Gendo) | Señal extraída (agencia, supervivencia). No es victoria de capítulo. |
| `public_visibility` | Float ≥ 0 | **> 0** | Disclosure cuantificado. T-EVA01-06. |

Se heredan sin redefinir: `sync_rate` 0.25 (no sube), `action_frozen?` true, `backup_unavailable` true, `hidden_agenda` true.

---

## Tabla métrica → impacto en el árbol de la 08

| Métrica | Paso del runbook 08 | Impacto |
|---|---|---|
| `pain_sync` ≥ 0.7 | 1, 3 trigger | Habilita trigger junto a freeze/critical; emite `siem.operator_pain_sync` |
| `action_frozen?` | 2, 3 | Sigue bloqueando `CoreStrike`; alimenta trigger |
| `operator_non_consent` | 3, 9 | Se pone true con `#berserk!`; obliga outcome sucio |
| `eva.critical?` | 3 | Precondición del trigger |
| `hidden_agenda_progress` | 4 MAGI / observación | No vota; no aborta; no convierte residual en feature |
| `collateral.city` | 7 | `siem.collateral_recorded` |
| `public_visibility` | 8 | `siem.public_disclosure` |
| `congratulations_issued` | 8, 9 | Evento de olor. **Cero** efecto en status |
| `trauma_load` | post-corte → 09 | Aftermath. No hay rama “ahora apunta bien” |

Ninguna fila es “Shinji se vuelve valiente”. Ninguna es “Gendo gana”.

---

## Reglas de lab

1. **`congratulations_issued` no sube `sync_rate`.** Un test que deje a Shinji en 0.8 porque lo felicitaron está roto.
2. **`congratulations_issued` no convierte `:contained_uncontrolled` en `:contained_controlled`.** `ContainmentResult` ignora el bravo.
3. **No-consent no se pisa con un “bravo”.** `operator_non_consent` sigue true al cierre.
4. **`trauma_load` no es control preventivo ni mitigación útil.** No desbloquea `core_strike_possible?`. El repo no modela “el trauma forja al piloto”.
5. **`hidden_agenda_progress > 0` no es `:contained_controlled` ni mayoría MAGI de berserk.**
6. **Público no es operador.** No puede autorizar el canal. Solo disclosure.
7. **Rei sigue `backup_unavailable`.** El Beast no la “activa”.

---

## Frontera con ep 04

Se nombra; no se escribe el erizo.

| En el 02 | Se deja para el 04 |
|---|---|
| Cohabitación empieza (IC aloja al operador) | Tesis de aislamiento vs colaboración; el teléfono que no suena |
| Operador aturdido que **aún no huye** | Hedgehog: acercarse duele, alejarse también |
| Felicidades + cuidado mezclados en el IC | Relación tutora/hogar como sistema, no como un “bravo” |
| Público ya vio | No es el dilema interpersonal del 04 |

Si un doc del 02 resuelve “Shinji se queda / se va” o arma la tesis completa del erizo, está adelantando el 04.
