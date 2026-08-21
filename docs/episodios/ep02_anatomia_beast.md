# Ep 02 — Anatomía del berserk: el control tiene cuerpo propio

Episodio: 02 · *The Beast* · INC-SACHIEL-001
Alcance: partes del **defensor** en modo Beast. Cada parte será clase o flag. Un control con agencia no documentada es un activo no inventariado.

No se redefinen AT Field ni Core del ep 01. El Beast los **usa**. Sin Dummy Plug. Sin blast radius (05). Sin “el Eva está poseído” como lore: hay `opaque_agency`, y se detiene ahí.

---

## Tabla

| Parte | Modo normal (deploy del 01) | Modo berserk (02) | Analogía de seguridad | Símbolo Ruby |
|---|---|---|---|---|
| **Operador / input** | Comando entra (si no hay freeze). `sync_rate` degrada la efectividad. | Input **descartado**. El cuerpo no espera el teclado. Freeze y sync bajo siguen siendo verdad del piloto; dejan de ser el actuador. | Proceso que ignora stdin / kill -9 al agente humano y sigue. SOAR que ejecuta el playbook sin human-in-the-loop. | `Eva#berserk!` → `operator_input_discarded == true`. `Eva#action_frozen?` sigue leyendo al operador; no gobierna la unidad. |
| **Sync** | `sync_rate` 0.0–1.0; umbral 0.5 para `CoreStrike`. En el 01: 0.25 → no kill. | El umbral **no se consulta**. Berserk no es `sync_rate = 1.0`. Es otro canal. | Un job que ya no mira el healthcheck del operador. Subir el sync no “explica” el Beast. | `Eva::SYNC_THRESHOLD` intacto (ep 01). `core_strike_possible?` sigue false. Kill va por `BerserkChannel`, no por `attempt_core_strike`. |
| **Pain sync (sensor)** | Acoplamiento leve: el operador es telemetría viva. | El operador **recibe el daño** de la unidad. Se lesiona con el activo. Puede no poder reportar. | El humano es el sensor de integridad: paging al cuerpo. Acoplar al on-call al host que se está muriendo. | `Eva#pain_sync` / `pain_sync_rate` (0.0–1.0). Evento `siem.operator_pain_sync`. Fallo: operador herido cuando `unidad.damaged?`. |
| **AT Field del Eva** | Aislamiento propio, uso defensivo (“escudo educado”), no modelado como arma en el 01. | Lo usa como **arma de choque**: parte el campo del ángel a golpes (hex-shatter). | El firewall del defensor en modo offensivo / bypass bruto del aislamiento ajeno. No es un `allow` rule. | No reescribir `Nerv::AtField`. `eva.at_field` (el suyo) + contra el ángel: `angel.at_field` queda `penetrated?` vía `BerserkChannel`, no vía `lower!` de procedimiento. |
| **Manos / cuerpo** | Manipulador de unidad de respuesta. En el 01 no aterriza kill. | Cinética sucia: descuartiza, **cierra el puño sobre el core**. | Wiper interno / isolate-and-nuke. El gesto no está en el runbook. | `Attacks::BerserkChannel` / `CoreCrush`. No añadir `Eva#heroic_punch`. |
| **Core del Eva** | Hay un centro de unidad. En el 01 no se toca. | Hay una voluntad que actúa. **Agencia opaca.** No se nombra la fuente. | Activo no inventariado dentro del control de contención. Un daemon que no sale en `ps` del IR. | `Eva#opaque_agency` → true tras `#berserk!`. Flag. **No clase de piloto fantasma. No Dummy Plug.** |
| **Ojos / voz** | Aviónica, canal de operaciones. | Predador: encendido anómalo, rugido. Firma observable del modo. | Beacon de que el proceso cambió de binario. Telemetría de “ya no es el agente que desplegaste”. | Señales, no tipos nuevos: `berserk? == true` basta para SIEM `siem.eva_berserk`. |
| **Consentimiento** | Deploy MAGI + IC; el operador está a bordo bajo chantaje, pero el *canal* sigue siendo el suyo si actuara. | El canal de kill no es el suyo. | Cambio ejecutado sin el human-in-the-loop que el ticket asume. | `operator_non_consent == true`. `siem.operator_non_consent`. |

**Inventario de nombres (copiar en sección 10; no Dummy Plug, no nombre de fuente):**

- Flags / lecturas: `Eva#berserk?`, `Eva#opaque_agency`, `Eva#operator_input_discarded`, `Eva#pain_sync` (métrica), `operator_non_consent`
- Mutación de modo: `Eva#berserk!` (descarta input, enciende agencia opaca; **no** autoriza MAGI)
- Canal de kill: `Nerv::Attacks::BerserkChannel` (rompe aislamiento del *ángel*, crush del core)
- Resultado: `Nerv::ContainmentResult` / `:contained_uncontrolled`
- Eventos (ids de la 06, no implementar aún): `siem.eva_berserk`, `siem.at_field_shattered`, `siem.core_destroyed`, `siem.operator_pain_sync`, `siem.operator_non_consent`, `siem.magi_berserk_unauthorized`

`attempt_core_strike` **sigue existiendo** y **sigue fallando** con el Shinji del 01. El 02 no lo parchea para que “gane”.

---

## pain_sync

Definición operativa: **el operador es el sensor de integridad de la unidad.** El daño de Eva-01 llega al cuerpo humano. No es metáfora y no es berserk: puede haber pain sync **antes** de que el input se descarte (el 01 ya destrozaba la unidad; el piloto ya sentía).

- **Métrica.** `pain_sync` ∈ 0.0–1.0 (fracción de daño de unidad que se copia al operador). En el 02, durante el choque, es alta: el piloto se lesiona con el activo.
- **Fallo.** Ventana de reporting rota: quien debería narrar el incidente está ocupado en no morir. Demora forense (06). No es freeze de miedo recitado; es acoplamiento peligroso.
- **Analogía.** El on-call enchufado al host que se está reimaging: cada sector malo le llega al nervio. O un EDR que usa al analista como canary humano.
- **Relación con berserk.** Pain sync no dispara el Beast por sí solo (no hay umbral mágico documentado como doctrina). El Beast *usa* un cuerpo que ya está acoplado. No mezclar las dos banderas.

Lab: un test futuro puede herir a Eva-01 y exigir que el operador quede marked injured si `pain_sync > 0`. Un test no debe tratar pain sync como `sync_rate` alto.

---

## opaque_agency

Definición operativa: **existe una voluntad en la unidad que no está en el inventario de NERV.** Tras `#berserk!`, `opaque_agency == true`. El input del operador no es esa voluntad.

Qué es:
- Un flag de que el control tiene agencia no documentada.
- Motivo de `siem.magi_berserk_unauthorized`: nadie votó a esa voluntad.

Qué no es:
- Un personaje.
- Un Dummy Plug.
- “Está poseído” como frase de campamento.
- Un subida de `sync_rate`.
- Autorización implícita (“si MAGI desplegó el Eva, desplegó el Beast”).

La fuente no se explica en este repo en el ep 02. Si un doc o un identificador la nombran, el contrato de FUERA_DE_ALCANCE está roto.

---

## Relación con Nerv::ATField y Nerv::Core del ep 01

La clase en código es `Nerv::AtField` (no se duplica como `ATField`). `Nerv::Core` es el mismo tipo. El 02 no abre `at_field.rb` ni `core.rb` para redefinirlos.

| Tipo del 01 | Cómo lo USA el Beast | Cómo no usarlo |
|---|---|---|
| `angel.at_field` | Canal sucio: lo parte por fuerza (`penetrated?` / ya no `blocks?`) vía `BerserkChannel`. Hex-shatter. | No llamar a esto `lower!` de procedimiento ni `CoreStrike` con campo “bajado bien”. |
| `eva.at_field` | Aislamiento propio, en berserk empleado como arma de choque (el cuerpo *choca* el borde ajeno). | No inventar un segundo modelo de campo. Mismo tipo, otro uso. |
| `angel.core` | Kill condition intacta: `destroy!` / `destroyed?`. El crush cumple la condición. | No cambiar qué es un core. Cambiar **quién** la cumple y **con qué canal**. |
| `eva` (core de unidad) | Soporte de `opaque_agency`. No es el core de Sachiel. | No aplastar el core del Eva en este episodio. No mezclar kill conditions. |

`#regenerate!` y `#mutate!` siguen siendo métodos de Sachiel. Cuando `angel.core.destroyed?`, regenerar **no** resucita. Eso se fija en la 04; la anatomía solo declara: el Beast apunta al tipo `Core` ya definido, no a la máscara ni al cráter.

---

## Implicación: golpear al ángel con un Beast no prueba que NERV sepa pelear

Si el lab trata el crush como evidencia de doctrina, el lab pierde de la misma manera que quien felicita al piloto. NERV sabía desplegar. NERV no sabía (ni autorizó) el canal que mató. MAGI no votó berserk. El operador no envió el puño.

Regla implementable, en una línea:

`PlaybookEp01` + `sync_rate` bajo → sin `CoreStrike` → `:unresolved` (sigue siendo verdad).  
`Eva#berserk!` → `operator_input_discarded` + `opaque_agency` → `BerserkChannel` → `angel.core.destroyed?` → `:contained_uncontrolled`.  
Eso **no** actualiza `core_strike_possible?` a true. Eso **no** es un preventivo. Eso **no** es un plan.

Un activo de contención con cuerpo y agencia no inventariada es, hasta que se documente y se gobierne, un threat actor interno sin ficha. El 02 empieza ese inventario. No lo celebra.
