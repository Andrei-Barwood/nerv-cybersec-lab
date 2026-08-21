# Ep 02 — Forense: el techo desconocido es el SIEM

Episodio: 02 · *The Beast* · INC-SACHIEL-001
El capítulo empieza **después**. Un SOC entra al turno y el ticket ya dice resolved, con la ciudad rota. Pattern Blue **no** se re-emite. Lo nuevo: firmas del Eva.

Frase-ley: **resolved en el ticket no es resolved en el cuerpo.**

---

## Timeline forense (orden VIVIDO vs orden CAUSAL)

| Orden VIVIDO (cómo lo pasa el operador / el espectador del cap.) | Orden CAUSAL (cómo lo arma el lab) |
|---|---|
| 1. Techo desconocido (hospital) | 0. Empalme: eventos del 01 ya en el SIEM (`pattern_blue` … `operator_sync_low`) |
| 2. Vida civil: departamento, tienda, calle | 1. Primer choque continúa: unidad destrozada |
| 3. Civiles felicitan | 2. `siem.operator_pain_sync` (T-EVA01-01) |
| 4. El operador no sabe por qué | 3. Freeze / no `CoreStrike` (legado) |
| 5. Flashback: el Eva cae, duele | 4. Trigger: `eva.critical` + (freeze ∨ pain_sync alto) + ángel vivo |
| 6. Flashback: ojos, Beast, hex-shatter | 5. `siem.eva_berserk` + `siem.operator_non_consent` + `siem.magi_berserk_unauthorized` |
| 7. Flashback: core en el puño, aullido | 6. `siem.at_field_shattered` → `siem.core_destroyed` |
| 8. Presente: ciudad herida, Eva chorreando | 7. `siem.collateral_recorded` |
| 9. “Felicidades” otra vez | 8. `siem.public_disclosure` → `siem.congratulations_issued` |
| | 9. Outcome `:contained_uncontrolled` |

El techo es el **acceso** al SIEM, no el first-seen. Quien solo mire el orden vivido firmará el ticket. Quien arme el causal verá el Beast.

Demora: mientras `pain_sync` es alto, el operador **no puede reportar**. El IC y el público llenan el vacío con la métrica incorrecta.

---

## Señales nuevas

| Evento | Disparador | Confianza |
|---|---|---|
| `siem.eva_berserk` | `Eva#berserk!` / movimiento sin comando | Alta de modo Beast. Nula de que MAGI lo quisiera. |
| `siem.at_field_shattered` | `BerserkChannel` penetra el campo del ángel | Alta de ruptura bruta. Nula de procedimiento. |
| `siem.core_destroyed` | `angel.core.destroy!` vía crush | Alta de ángel-muerto. **Nula de contención dirigida.** |
| `siem.operator_pain_sync` | `pain_sync` sobre umbral / unidad dañada con operador acoplado | Alta de acoplamiento. Explica la demora de reporte. |
| `siem.operator_non_consent` | kill channel ≠ input del piloto | Alta de no-consent. Compatible con freeze del 01. |
| `siem.collateral_recorded` | `collateral.city > 0` (u otras categorías) | Alta de blast radius físico. |
| `siem.public_disclosure` | civiles ven la unidad / el combate | Alta de visibilidad. No es Pattern Blue. |
| `siem.congratulations_issued` | relato de victoria publicado (IC o calle) | Alta de KPI falso. **No sube contención.** |
| `siem.magi_berserk_unauthorized` | `magi.authorized?(:berserk) == false` | Alta de moción **ausente**. El hallazgo es el voto que no hubo. |

---

## Ids obligatorios

Usar exactamente estos strings. No duplicar ids del 01.

```
siem.eva_berserk
siem.at_field_shattered
siem.core_destroyed
siem.operator_pain_sync
siem.operator_non_consent
siem.collateral_recorded
siem.public_disclosure
siem.congratulations_issued
siem.magi_berserk_unauthorized
```

Traza mínima del 02 (encima de la del 01):

```
siem.operator_pain_sync
siem.eva_berserk
siem.operator_non_consent
siem.magi_berserk_unauthorized
siem.at_field_shattered
siem.core_destroyed
siem.collateral_recorded
siem.public_disclosure
siem.congratulations_issued
```

No emitir `siem.contained` ni nada que implique `:contained_controlled`.

---

## Falsos positivos

| Candidato | Por qué parece Beast | Cómo se descarta |
|---|---|---|
| “Eva agresiva” de entrenamiento / sync alto | Movimiento violento, daño al blanco | Hay comando de operador en la ventana; `operator_input_discarded == false`; MAGI no está en silencio de moción |
| CoreStrike entrenado con campo bajado | El ángel muere | Bitácora de `attempt_core_strike` + `sync_rate ≥ umbral` + procedimiento de campo. En el 02 eso **no** está |
| Unidad dañada que se reincorpora bajo piloto | Se levanta después de caer | Input presente; pain_sync puede ser alto **sin** bypass |
| Residual de N² / cráter | Sensor raro, ciudad rota | El crush es cinético y local al core, no un segundo wipe |

Regla: **daño espectacular ≠ berserk.** Berserk es input descartado + agencia opaca + canal de kill no votado.

---

## Hallazgo MAGI: no hay mayoría para berserk (porque no hubo moción)

MAGI votó el **deploy** (2 de 3, ep 01). Esos votos **no** se reciclan.

- `magi.majority?` puede seguir true (votos de deploy aún en los registros de unidad).
- `magi.authorized?(:berserk)` es **false**: no existió moción `:berserk`.
- Implementar `authorized?(:berserk)` como `majority?` es autorizar **por omisión**. Un test del 10 tiene que fallar si se hace eso.
- Se emite `siem.magi_berserk_unauthorized` precisamente porque el quórum de deploy no es un sí al Beast.

Nadie autorizó el berserk. Gendo observó. Eso no es un voto MAGI.

---

## Anti-métrica: congratulations_issued + operator_non_consent = olor

Los dos juntos. Uno solo miente.

| Combinación | Lectura falsa | Lectura de lab |
|---|---|---|
| `congratulations_issued` solo | “ganamos, cierra el ticket” | KPI publicado. Cero peso en `ContainmentResult` |
| `operator_non_consent` solo | “el piloto se congeló” | El canal no fue él; puede haber kill igual |
| **ambos** | — | Olor forense. Resolved en el ticket, no en el cuerpo. `:contained_uncontrolled` |

`congratulations_issued` **no** convierte el outcome, **no** sube `sync_rate`, **no** autoriza MAGI.

---

## Relación con eventos del ep 01

Se **heredan**. No se duplican ids. El escenario del 02 puede reconstituir el 01 internamente; la traza debe mostrar el empalme.

| id del 01 | En el 02 |
|---|---|
| `siem.pattern_blue` | Ya emitido. No es first-seen otra vez. |
| `siem.wipe_declared` / `siem.wipe_failed_regen` | Se deben **leer** en la traza: el wipe falló; el crush es otro canal. |
| `siem.eva_deployed` | Precondición del Beast. Deploy ≠ berserk. |
| `siem.operator_sync_low` | Sigue verdadero. No se “cura” con felicidades. |

Pattern Blue no se redefine. Sigue siendo clase ángel, no clase Beast.
