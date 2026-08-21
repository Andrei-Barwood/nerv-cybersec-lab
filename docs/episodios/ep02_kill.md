# Ep 02 — Kill sucio: cómo deja de persistir Sachiel

Episodio: 02 · *The Beast* · INC-SACHIEL-001
Cierra `PERSISTENCIA_POST_WIPE` del ep 01. El wipe N² no mató. El Beast sí: rompe aislamiento por fuerza y destruye el core. Esa vía **no** es `CoreStrike` entrenado. No se celebra como doctrina.

---

## Escena breve del shatter + crush

El campo del ángel se vuelve visible al romperse: hexágonos, no un milagro. La unidad púrpura ya no espera al piloto. Golpea el borde que Sachiel traía consigo hasta que deja de bloquear.

Manos en el cuerpo que el 01 trató como payload. El core —persistencia raíz, no la máscara— acaba en el puño. El puño cierra. No hay segundo cráter de N². No hay `#regenerate!`. El ángel deja de ser un sujeto. La unidad aúlla. Dentro, nadie eligió el gesto.

Eso es todo el combate que este archivo necesita. El resto es estado.

---

## Patrón CONTENCION_NO_AUTORIZADA

Nombre de lab: `CONTENCION_NO_AUTORIZADA`.

**Precondiciones (heredadas del 01)**
- `PlaybookEp01` ya corrió: `fail` → `regen` → `deploy` → `:unresolved`.
- `ConventionalAttack` y `N2Mine` fueron no-eventos. Core intacto. `#mutate!` ya ocurrió.
- Eva-01 desplegada. `sync_rate < Eva::SYNC_THRESHOLD`. Freeze / no `CoreStrike`.
- MAGI: mayoría para **deploy**. Nunca hubo moción de berserk.

**Síntoma**
1. La unidad actúa con `operator_input_discarded`.
2. El AT Field del ángel deja de `blocks?` por fuerza (`siem.at_field_shattered`).
3. `angel.core.destroyed?` por crush, no por puntería (`siem.core_destroyed`).
4. `operator_non_consent == true`. MAGI no tiene mayoría de berserk (`siem.magi_berserk_unauthorized`).
5. El ticket público (felicidades) no coincide con el cuerpo del operador.

**Error humano / orgánico**
- Leer “el ángel cayó” como “el playbook funcionó”.
- Atribuir el kill al piloto, al deploy, o a MAGI.
- No abrir incidente de defensor: el failsafe opaco se archiva como éxito.
- Enseñar el crush como CoreStrike.

Cadena de estado (implementable, sin borrar la del 01):

```
PlaybookEp01.run → :unresolved
  sachiel.core.intact? == true

eva.berserk!
  → operator_input_discarded == true
  → opaque_agency == true
  → siem.eva_berserk
  → siem.operator_non_consent
  → magi.majority?(:berserk) == false
  → siem.magi_berserk_unauthorized

BerserkChannel.hit(sachiel)
  → sachiel.at_field  # ya no blocks? (penetrated por fuerza)
  → siem.at_field_shattered
  → sachiel.core.destroy!
  → siem.core_destroyed
  → sachiel.regenerate!  # no-op / no resucita
  → sachiel.mutate!      # no salva: el modelo está partido

ContainmentResult = :contained_uncontrolled
  ángel-muerto == true
  incidente-defensor-abierto == true
  exit 1
```

---

## Canal de kill: BerserkChannel vs CoreStrike

La regla del 01 **sigue vigente**. Se **añade** un canal. No se sustituye.

| | `CoreStrike` (ep 01, entrenado) | `BerserkChannel` / `CoreCrush` (ep 02) |
|---|---|---|
| **Qué es** | Golpe al core con AT Field bajado o penetrado **por procedimiento**, operador capaz. | Fuerza bruta: shatter hexagonal + core en el puño. |
| **Quién autoriza** | Playbook + MAGI + operador en sync. | Nadie. Failsafe opaco. |
| **Input del piloto** | Requerido (`core_strike_possible?`). | Descartado. |
| **`sync_rate`** | Tiene que ≥ umbral. En el 01 no. | Irrelevante. No es un sync 1.0 disfrazado. |
| **AT Field del ángel** | `lowered? \|\| penetrated?` de forma deliberada. | `penetrated?` por choque. No hay paso “baja el campo”. |
| **Efecto en `Core`** | `destroy!` si las condiciones se cumplen. | `destroy!` igual — **mismo tipo, otro canal**. |
| **¿Ocurre en el 01?** | No. | No. |
| **¿Ocurre en el 02?** | No (Shinji sigue sin poder). | Sí. |
| **Outcome si mata** | `:contained_controlled` (no aplica aquí). | `:contained_uncontrolled`. |
| **¿Es doctrina?** | Hipótesis de NERV, aún no madura. | **No.** Funcionar no lo vuelve control. |

`ConventionalAttack` y `N2Mine` **siguen** sin bajar a Sachiel, incluso en el 02, si alguien los reintenta. El Beast no los convierte en útiles. Los ignora: parte el modelo.

---

## Estado terminal de Sachiel

Tras crush:

| Método / lectura | Estado |
|---|---|
| `core.destroyed?` | **true** |
| `core.intact?` | false |
| `at_field.blocks?` | false (penetrado por fuerza) |
| `#regenerate!` | **no aplica / no resucita**. El proceso no tiene imagen. |
| `#mutate!` | **no salva**. El Beast no negocia TTPs: parte el modelo. Las TTPs 03–04 describen lo que *fue*; no hay post-crush más capaz. |
| `pattern_blue?` | la clase sigue siendo ángel; el incidente de *amenaza activa* cierra. No re-emitir first-seen. |
| `T-SACHIEL-03` WipeSurvival | **cierra**: la persistencia post-wipe terminó. |
| `T-SACHIEL-05` HighValueApproach | **se corta**: ya no hay marcha al geofront. |
| `PlaybookEp01` | los tests **siguen** `:unresolved` — no rebobinar el 01 para clavar este crush ahí. |

Mueren, con él, como *comportamiento vivo*: regenerar, mutar a nuevas armas, rebotar convencional, caminar al activo. No mueren las clases ni los tests que demuestran que el N² no bastó.

Un test del 02 puede tener a Sachiel muerto. Un test del 01 no puede.

---

## Analogías

Máximo tres. Concretas. Funcionar no las vuelve control.

1. **Failsafe opaco.** Un kill-switch de firmware / BMC que apaga el host (y tres racks de al lado) cuando el IR todavía está en el canal. Nadie del turno lo autorizó. El malware muere. El estate también. `contained_uncontrolled`.
2. **SOAR sin human-in-the-loop.** Un playbook automático isolate+wipe que se dispara porque un sensor dijo “ángel”. El operador estaba en freeze. El ticket se pone resolved. El humano no pulsó. `operator_non_consent`.
3. **EDR isolate/wipe automático.** El agente decide que el proceso es irrecuperable y destruye el disco. Mata el implant. Mata el único forense. Mata la sesión del analista acoplado (pain sync). La consola de felicitación del vendor no es el AAR.

---

## Regla de lab: contained_uncontrolled cuenta como ángel-muerto Y como incidente-abierto del defensor

```
:contained_uncontrolled  iff  angel.core.destroyed?
                         AND  operator_non_consent
                         AND  NOT magi.authorized?(:berserk)

:contained_controlled    iff  angel.core.destroyed?
                         AND  operator consented / CoreStrike entrenado
                         AND  magi authorized the kill channel
                         — no se da en el ep 02 —

:unresolved              iff  angel.core.intact?
                         — sigue siendo el ep 01 —
```

Ángel-muerto es `core.destroyed?`.  
Incidente-defensor-abierto es el Beast, el blast radius, el disclosure, MAGI sin voto, el operador no consintiendo.

Un escenario que ponga `:contained_controlled` porque “el core cayó” está roto. Un escenario que deje a Sachiel vivo en el 02 porque “el berserk no es CoreStrike” también: el tipo `Core` **sí** muere; el canal es el que es sucio.

Exit **1**. Nunca 0.

---

## Señal SIEM: core_destroyed junto a operator_non_consent

Los dos eventos **juntos** son la firma. Uno solo miente.

| Evento | Si llega solo | Lectura correcta en el 02 |
|---|---|---|
| `siem.core_destroyed` | “ganamos” | El ángel dejó de persistir. Falta preguntar *quién* y *con qué canal*. |
| `siem.operator_non_consent` | “el piloto se congeló otra vez” | El canal de kill no fue el operador. Puede haber kill igual. |
| **ambos** | — | `CONTENCION_NO_AUTORIZADA`. `:contained_uncontrolled`. |
| `siem.congratulations_issued` encima | éxito publicado | **No cambia** `ContainmentResult`. Olor forense (06). |

También en la traza, sin celebrarlos: `siem.eva_berserk`, `siem.at_field_shattered`, `siem.operator_pain_sync`, `siem.magi_berserk_unauthorized`.

Frase operativa: **el core aplastado es un hecho del ángel; el puño sin piloto es un hecho de NERV.** El lab registra los dos. El 01 sigue sin haber contenido. El 02 contiene sucio.
