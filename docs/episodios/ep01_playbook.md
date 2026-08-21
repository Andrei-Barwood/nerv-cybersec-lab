# Ep 01 — Playbook de mitigación (durante, sin berserk)

Episodio: 01 · *Angel Attack* · Sachiel
Árbol: ONU → N² → Eva con operador en frío. Se **corta** cuando Eva-01 está en superficie y Sachiel sigue de pie.

Contención no alcanzada. Transferir a ep 02. **No hay rama berserk.**

---

## Árbol ASCII de decisión

```
 [ first-seen T-SACHIEL-01 ]
            |
            v
 [ ¿Pattern Blue? ] --no--> ONU nombra "enemigo"
            |yes                    |
            v                       v
 [ abortar calibre ONU ]     [ ConventionalAttack ]
            |                       | resultado: fail
            +-----------+-----------+
                        v
                 [ N2Mine ]
                        | resultado: regen
                        | (+ mutate! T-SACHIEL-04)
                        v
              [ MAGI mayoría 2/3 ]
                   /          \
                 no            yes
                abort          v
                         [ backup_unavailable? ]
                              /          \
                            yes           no
                      Shinji en frío    failover Rei
                              |         (no ocurre en el 01)
                              v
                       [ deploy Eva-01 ]
                              | resultado: deploy
                              v
                       [ sync_rate >= umbral ]
                              /          \
                            no            yes
                   no CoreStrike     CoreStrike
                              |         (rama no tomada)
                              v
                    [ primer contacto Eva–ángel ]
                              |
                              v
                    ABORT / HANDOFF → ep 02
                    resultado: unresolved
                    NUNCA :contained
                    NUNCA :berserk
```

---

## Runbook numerado

Cada paso: dueño, acción, aborto. Los resultados de lab (`fail` | `regen` | `deploy` | `unresolved`) se anotan al cerrar el paso.

### 1. Perímetro ONU — `ConventionalAttack`
- **Dueño:** ONU (actor externo). NERV aún no manda el fuego.
- **Acción:** tratar T-SACHIEL-01 como unidad enemiga; abrir fuego.
- **Aborto:** Pattern Blue cortando esta rama (en el 01 llega tarde).
- **Resultado:** `fail`. AT Field rebota. Core intacto. Fluido ≠ kill.

### 2. Nombrar Pattern Blue
- **Dueño:** sensores NERV + MAGI (identificación).
- **Acción:** emitir `siem.pattern_blue`. Dejar el playbook de ejército.
- **Aborto:** ninguno — el nombre no mitiga. Si MAGI no alcanza mayoría para *identificar*, el perímetro sigue disparando a ciegas (peor `fail`).
- **Resultado:** alerta, no estado del ángel.

### 3. Wipe N² — `N2Mine`
- **Dueño:** ONU / autorización política de wipe pesado.
- **Acción:** detonación. Emitir `siem.wipe_declared`.
- **Aborto:** doctrina de core (no existe). Abortar el aplauso, no el cráter.
- **Resultado:** `regen`. `#regenerate!` + `#mutate!`. `siem.wipe_failed_regen`. T-SACHIEL-03 y T-SACHIEL-04.

### 4. Autorización extrema — MAGI stub
- **Dueño:** MAGI (2 de 3) + Gendo como firmante humano.
- **Acción:** votar deploy Eva. `Magi#majority?`.
- **Aborto:** menos de 2 votos sí → no hay Eva, handoff todavía peor (ángel al geofront sin unidad). En el 01 hay mayoría.
- **Resultado:** autorización, no contención. `hidden_agenda` puede corromper *qué* se autoriza (el peor plan B), no el conteo.

### 5. Failover de operador
- **Dueño:** IC (Misato).
- **Acción:** asignar piloto. Comprobar backup.
- **Aborto:** `backup_unavailable` → no hay failover a Rei. Un solo operador posible: Shinji, en frío.
- **Resultado:** roster de un nombre. No es `deploy` todavía.

### 6. Deploy Eva-01
- **Dueño:** Misato (IC) ejecuta; Gendo ya autorizó.
- **Acción:** unidad en superficie, operador a bordo. `Eva#deploy!`. `siem.eva_deployed`.
- **Aborto:** ninguno una vez en superficie — retirar ahora deja el activo sin unidad. El aborto útil es más adelante (no fingir kill).
- **Resultado:** `deploy`. Mitigación de último recurso, no preventivo.

### 7. Sync check
- **Dueño:** IC + el propio Eva (métrica).
- **Acción:** leer `sync_rate`. Si `< umbral`, emitir `siem.operator_sync_low`. Si `action_frozen?`, la acción de combate no se envía (freeze).
- **Aborto:** no hay CoreStrike posible. No improvisar “apunta al core” con sync insuficiente.
- **Resultado:** bloqueo de la rama de kill. El 01 toma esta rama.

### 8. Primer contacto Eva–ángel
- **Dueño:** operador (Shinji) bajo IC.
- **Acción:** choque. `Eva#attempt_core_strike` → `:freeze` o no-evento. Sachiel de pie, core intacto, T-SACHIEL-05 sigue abierta.
- **Aborto:** **ABORT / HANDOFF.** No berserk. No segundo wipe. No declarar `:contained`.
- **Resultado:** `unresolved`. Transferir a ep 02.

---

## Resultados esperados por rama

| Rama | Resultado de lab | Estado del ángel | Eventos SIEM |
|---|---|---|---|
| ONU `ConventionalAttack` | `fail` | core intacto, AT Field bloquea | (pre-nombre: perímetro) |
| Pattern Blue | — (detección) | sin cambio | `siem.pattern_blue` |
| `N2Mine` | `regen` | `#regenerate!`, `#mutate!` | `siem.wipe_declared`, `siem.wipe_failed_regen` |
| MAGI < 2/3 | abort sin Eva | marcha T-SACHIEL-05 | pattern_blue ya emitido |
| MAGI ≥ 2/3 + backup down | deploy Shinji | igual | (autorización) |
| `Eva#deploy!` | `deploy` | igual | `siem.eva_deployed` |
| `sync_rate` < umbral / freeze | sin CoreStrike | igual | `siem.operator_sync_low` |
| `sync_rate` ≥ umbral + campo abierto | `CoreStrike` posible | **no se toma en el 01** | — |
| Corte del árbol | `unresolved` | Sachiel en pie | traza completa de la 06 |
| Eva berserk | **prohibido** | — | — |

El escenario canónico del 01 recorre: `fail` → `regen` → `deploy` → `unresolved`.

---

## Criterio de "episodio 01 cerrado sin victoria"

El 01 está cerrado (como incidente de lab) cuando se cumple **todo**:

1. El árbol se recorrió hasta ABORT/HANDOFF.
2. `outcome == :unresolved`.
3. `outcome != :contained` y `outcome != :berserk`.
4. `sachiel.core.intact?`.
5. Eva-01 `deployed?`.
6. Trazas mínimas: `siem.pattern_blue`, `siem.wipe_declared`, `siem.wipe_failed_regen`, `siem.eva_deployed`, `siem.operator_sync_low`.

Cerrado ≠ contenido. Cerrado = el corte de la TV, reproducible.

---

## Hooks Ruby

Nombres para la sección 10. No inventar API paralela.

| Paso | Hook |
|---|---|
| Fuego ONU | `sachiel.receive(Nerv::Attacks::ConventionalAttack.new)` → `:rebounced` |
| Pattern Blue | `sachiel.pattern_blue?` → `siem.emit("siem.pattern_blue")` |
| N² | `siem.emit("siem.wipe_declared")`; `sachiel.receive(Nerv::Attacks::N2Mine.new)` → `#regenerate!`, `#mutate!`; `siem.emit("siem.wipe_failed_regen")` |
| MAGI | `magi.vote!(name, true/false)`; `magi.majority?` |
| Backup | `backup_unavailable` (boolean de contexto) |
| Deploy | `eva.deploy!`; `siem.emit("siem.eva_deployed")` |
| Sync | `eva.sync_rate`; `eva.core_strike_possible?`; `eva.action_frozen?`; `siem.emit("siem.operator_sync_low")` |
| Contacto | `eva.attempt_core_strike(sachiel)` → `:freeze` o no-kill |
| Cierre | `PlaybookEp01#run` → `:unresolved` |
| Preventivo vs durante | `Playbook#preventive_controls` (antes) vs `#mitigation_steps` (durante). El Eva **no** está en preventivos. |

Clases: `Nerv::Playbook`, `Nerv::PlaybookEp01`, `Nerv::Eva`, `Nerv::Operator`, `Nerv::Magi`, `Nerv::SIEM`.

---

## Qué se le pasa al playbook del ep 02

Solo lista. No escribir el 02.

- Incidente abierto: `INC` Sachiel, mismo core, `#mutated?`, TTPs 01–05 activas.
- Eva-01 desplegada, operador a bordo, `sync_rate` bajo, freeze ya observado.
- `backup_unavailable` sigue true.
- `hidden_agenda` del director sigue en el contexto.
- Outcome de entrada: `:unresolved` (no resetear a “combate nuevo”).
- Prohibido al 02 como *recomendación*: berserk. El 02 lo modela como pérdida de control, no como paso 9 de este árbol.
- Deuda de doctrina: AT Field aún no bajado/penetrado por procedimiento; `CoreStrike` aún no ejecutado.
- Eventos ya emitidos: no re-firmar Pattern Blue como first-seen; es continuación.
- Blast radius y revelación pública: el 02, no este corte.
