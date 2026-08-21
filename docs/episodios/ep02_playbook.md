# Ep 02 — Playbook de mitigación (handoff → Beast → corte)

Episodio: 02 · *The Beast* · INC-SACHIEL-001
Empieza donde el 01 aborta. La rama berserk **no se elige: se dispara**. No hay abort. MAGI no vota esa rama. No existe `:contained_controlled`.

---

## Punto de empalme con ep01_playbook.md

`PlaybookEp01` paso 8: primer contacto → **ABORT / HANDOFF**. Outcome `:unresolved`. Eva-01 `deployed?`, Shinji freeze + `sync_rate` 0.25, Sachiel `core.intact?`, eventos del 01 ya emitidos.

Este runbook **no es paralelo**. Es el mismo INC-SACHIEL-001. `PlaybookEp02` encadena `PlaybookEp01` (o recibe el estado ya corrido). Misato sigue siendo IC: no puede apagar al Beast. Gendo observa (`hidden_agenda`: el incidente es también un test). No se resuelve la psique del operador aquí (09 / AAR).

---

## Árbol ASCII

```
 [ PlaybookEp01 :unresolved ]
              |
              v
 [ unidad dañada / eva.critical ]
              |
              v
 [ freeze  OR  pain_sync alto ]     + ángel.alive
              |
              v
 [ ¿trigger berserk? ]
        | sí (canónico)
        v
 [ MAGI moción :berserk ? ]
        | no  → magi_berserk_unauthorized
        v
 [ Eva#berserk! ]     ← se DISPARA, no se elige
        |             no hay abort
        v
 [ BerserkChannel: shatter ]
        v
 [ CoreCrush ]
        v
 [ collateral ] → [ disclosure ] → [ congratulations ]
        v
 [ :contained_uncontrolled ]
        |
        +-- NO :contained_controlled
        +-- NO "Misato apaga el Eva"
        +-- NO "Shinji toma el control y apunta"
```

---

## Runbook numerado

### 0. Empalme
- **Dueño:** lab / IC.
- **Acción:** heredar estado del 01. No re-firmar Pattern Blue.
- **Resultado:** `unresolved_handoff`.

### 1. Pain sync
- **Dueño:** la unidad (acoplamiento); el operador lo padece.
- **Acción:** `pain_sync` alto. `siem.operator_pain_sync`. Reporting humano degradado.
- **Aborto:** no hay. El IC no puede “bajar el sync de dolor” en esta ventana.

### 2. Freeze (legado)
- **Dueño:** operador.
- **Acción:** `attempt_core_strike` sigue `:freeze` / `:blocked`. Core del ángel intacto.
- **Aborto del 01 ya ocurrió.** Aquí es precondición, no decisión.

### 3. Trigger berserk
- **Dueño:** nadie autorizado. Failsafe opaco.
- **Acción:** si se cumplen las condiciones, `Eva#berserk!`. `siem.eva_berserk`. `siem.operator_non_consent`.
- **Aborto:** **no existe.** Misato no tiene interruptor. Shinji no retoma el volante.

### 4. MAGI
- **Dueño:** MAGI (ausente).
- **Acción:** comprobar `authorized?(:berserk)`. Falso. `siem.magi_berserk_unauthorized`.
- **No votar.** No reciclar mayoría de deploy.

### 5. Shatter
- **Dueño:** el cuerpo en Beast.
- **Acción:** `angel.receive(BerserkChannel)`. `siem.at_field_shattered`. T-EVA01-03.

### 6. Crush
- **Dueño:** el mismo cuerpo.
- **Acción:** `core.destroy!`. `siem.core_destroyed`. T-EVA01-04. T-SACHIEL-03 termina; T-SACHIEL-05 se corta.

### 7. Collateral
- **Dueño:** blast radius (no hay dueño útil).
- **Acción:** `collateral.city > 0`. `siem.collateral_recorded`. T-EVA01-05.

### 8. Disclosure + congratulations
- **Dueño:** público + IC (métrica incorrecta).
- **Acción:** `siem.public_disclosure`. `siem.congratulations_issued`. T-EVA01-06.
- **Aborto:** congratulations **no** cambia el estado.

### 9. Estado final
- **Dueño:** lab.
- **Acción:** `ContainmentResult` = `:contained_uncontrolled`. Exit 1.
- **Transferir:** aftermath humano → 09; Shamshel → lista al 03, no prosa.

---

## Condiciones del trigger (implementables)

Se dispara `Eva#berserk!` **si y solo si** se cumple todo:

```
eva.deployed? == true
AND eva.critical? == true
AND (eva.action_frozen? || eva.pain_sync >= 0.7)
AND angel.core.intact? == true
AND magi.authorized?(:berserk) == false   # no es un sí; es el hecho
```

Canónico del 02: unidad destrozada (`critical!`), freeze del 01, `pain_sync` alto, Sachiel vivo. El playbook **fuerza** esas lecturas como continuación del choque (el 01 no las modelaba todas) y entonces el trigger dispara.

No hay rama `if ic.wants_berserk`. No hay rama `if shinji.aims`.

---

## Resultados por rama

| Rama | Resultado | ¿Existe en el 02 canónico? |
|---|---|---|
| Condiciones no cumplidas (ángel ya muerto, Eva no critical…) | no Beast; no es este episodio | No |
| Trigger sí + MAGI sin moción | `contained_uncontrolled` | **Sí** |
| Trigger sí + MAGI autoriza berserk | **prohibido** — sería `:contained_controlled` o peor, Beast-as-feature | No |
| Misato apaga el Eva | **no existe** | — |
| Shinji toma el control y `CoreStrike` | **no existe** | — |
| `:contained_controlled` | **no existe** | — |
| `:berserk` como outcome-victoria | **prohibido** | — |

Canónico: `unresolved_handoff` → trigger → crush → `:contained_uncontrolled`.

---

## MAGI: moción ausente

Registrar `siem.magi_berserk_unauthorized`.  
`magi.majority?` (deploy) no implica `magi.authorized?(:berserk)`.  
El playbook **no** abre moción `:berserk` “para cuadrar”. Gendo observando no es un voto.

---

## Hooks Ruby

| Paso | Hook |
|---|---|
| Empalme | `PlaybookEp01#run` → `:unresolved`; o `PlaybookEp02#run(..., skip_ep01: true)` con estado ya corrido |
| Pain sync | `eva.pain_sync =`; `siem.emit("siem.operator_pain_sync")` |
| Critical | `eva.critical!` / `eva.critical?` |
| Trigger | `PlaybookEp02.berserk_trigger?(eva, angel)` |
| Beast | `eva.berserk!` → `operator_input_discarded`, `opaque_agency` |
| MAGI | `magi.authorized?(:berserk)`; `siem.emit("siem.magi_berserk_unauthorized")` |
| Kill | `angel.receive(Nerv::Attacks::BerserkChannel.new)` |
| Collateral | `Nerv::Collateral#record!(city:)` |
| Disclosure | `Nerv::Disclosure#reveal!` / `#issue_congratulations!` |
| Cierre | `Nerv::ContainmentResult` status `:contained_uncontrolled`; `PlaybookEp02#run` → ese símbolo, **nunca** `:berserk` |

Clases nuevas (sección 10): `Nerv::Attacks::BerserkChannel`, `Nerv::Collateral`, `Nerv::Disclosure`, `Nerv::ContainmentResult`, `Nerv::PlaybookEp02`.

---

## Handoff a ep 03 (lista, no prosa de Shamshel)

- INC-SACHIEL-001 **cerrado** `:contained_uncontrolled`. No reabrir el core de Sachiel.
- Eva-01 existe, tiene `opaque_agency` inventariada *a posteriori*, operador no consintió, `sync_rate` no “curado”.
- **No** usar `BerserkChannel` como vía de victoria del siguiente ángel.
- Deuda: amenaza de C2 / látigos; el piloto tiene que **operar** de verdad; testigos humanos del combate (colegas, no solo civiles del 02).
- Disclosure ya ocurrió: el mundo vio un Eva. El 03 no es first-seen de unidad.
- MAGI sigue sin haber votado Beast; no infectar MAGI.
- Erizo / cohabitación: no aquí (ep 04).
