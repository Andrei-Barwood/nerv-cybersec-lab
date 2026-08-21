# Ep 01 — Persistencia: la mina N² no mata

Episodio: 01 · *Angel Attack* · Sachiel
Lección central: un wipe espectacular que no toca el core es teatro. El ángel regenera y **además** muta.

---

## Escena breve del wipe fallido

El perímetro ya no tiene calibre que ofrecer. Alguien autoriza lo más pesado que la ONU sabe nombrar: una mina N². El flash borra el encuadre. Hay un cráter donde había un ángel. Hay silencio. Hay, en algún puesto de mando, el error más caro de este episodio: se asume baja.

El humo no es un certificado. Cuando baja, el cuerpo no está esparcido: está **reuniéndose**. Carne y caparazón vuelven a ocupar volumen. El core no se ve, y por eso nadie puede jurar que sigue; pero el proceso reaparece, así que la imagen no se tocó.

No vuelve igual. Los brazos se articulan de otra manera. Hay ráfagas donde antes solo había marcha. Hay una lanza de luz donde antes solo había masa. El wipe enseñó el mejor golpe del defensor y no alcanzó la persistencia raíz. Sachiel camina otra vez, más capaz, hacia el mismo activo.

El aplauso prematuro es el síntoma humano. El cráter es un log. El ángel de pie es el estado.

---

## Patrón PERSISTENCIA_POST_WIPE

Nombre de lab: `PERSISTENCIA_POST_WIPE`.

**Precondiciones**
- El defensor ya agotó `ConventionalAttack` (no-evento; AT Field rebota).
- Se autoriza un wipe pesado: `N2Mine`. Espectacular, de un solo uso político: “esto debería bastar”.
- El wipe **no** es `CoreStrike`. El AT Field no está `#lowered?` ni `#penetrated?`. `Core#intact?` sigue true, aunque el cuerpo desaparezca del sensor un momento.

**Síntoma**
1. Silencio sensorial (humo, cráter, umbral de detección caído).
2. Declaración de victoria o de “target down” sin prueba de core.
3. Reaparición del mismo incidente (`#pattern_blue?` otra vez).
4. El cuerpo no solo está: está **cambiado** (`#mutate!`).

**Error humano**
- Tratar “explotó” como “contenido”.
- Medir éxito por el flash, no por `core.destroyed?`.
- Gastar el wipe de mayor impacto **antes** de tener doctrina de core, con lo que se filtra al atacante el techo del arsenal convencional.
- No instrumentar la ventana post-wipe: el silencio se lee como paz en vez de como ceguera.

Cadena de estado (implementable):

```
N2Mine.hit(sachiel)
  → at_field.blocks? == true   # o, en cualquier caso, core no es el blanco
  → core.intact? == true
  → sachiel.regenerate!        # mismo incidente, mismo core
  → sachiel.mutate!            # TTPs nuevas (T-SACHIEL-04)
  → siem.wipe_failed_regen
  → contained? == false
```

---

## Regeneración vs mutación

No son sinónimos. Un test futuro tiene que poder fallar si se implementa una y se finge la otra.

| | `#regenerate!` | `#mutate!` |
|---|---|---|
| **Qué es** | El cuerpo vuelve. El proceso se relanza desde el core intacto. | El incidente **añade TTPs**. Nuevas armas, nuevo perfil de impacto. |
| **Qué no cambia** | Identidad: sigue siendo Sachiel, mismo core, mismo heading. | El core sigue intacto. Mutar no es “evolucionar a otro ángel”. |
| **Qué cambia** | Volumen, marcha, presencia visible. | Capacidades: brazos rearticulados, ráfagas, lanza de luz. |
| **Trigger en el 01** | Impacto no-core (N² incluido). | Wipe fallido: el defensor reveló su mejor golpe y no mató. |
| **Analogía corta** | El servicio respawnea. | El malware, ya visto el EDR, cambia de packer y abre C2 que no tenía. |

Orden obligatorio tras `N2Mine` en Sachiel: **primero regenerar, luego mutar**. Mutar sin regenerar sería un ángel nuevo con el cadáver todavía en el cráter. Regenerar sin mutar sería honestidad incompleta: en pantalla, Sachiel no vuelve idéntico.

`#mutate!` es de esta sección. No existía en la anatomía (03) porque **antes de la N²** Sachiel camina, aísla y persiste; no estrena arsenal.

---

## Analogías

Máximo tres. Concretas. No son el ángel: son el mismo patrón.

1. **Malware / EDR.** Se mata el proceso, se borra el binario del disco, se declara limpio. El servicio de persistencia (LaunchAgent, servicio Windows, cron) lo relanza. Peor: el binario nuevo ya evade la firma que lo cazó. `#regenerate!` + `#mutate!`.
2. **Cuenta cloud.** Se revoca la sesión, se rota un token de usuario, se cierra el ticket. Queda una access key de raíz, un rol asumible, una API key en un secret que nadie rotó. El actor vuelve, ahora por otro servicio. El “wipe” fue la sesión, no la identidad.
3. **Implant de firmware.** Se reimagea el disco, se reinstala el OS, se aplaude el cráter. El código vive en SPI / BMC / boot ROM. El host “nuevo” nace ya ocupado, y a veces con otra etapa porque vio el reimage. `N2Mine` sobre el filesystem; core en el firmware.

---

## Regla de lab

Ataques contra Sachiel en este episodio:

| Ataque | Clase Ruby (nombre) | ¿Baja a Sachiel? | Efecto de estado |
|---|---|---|---|
| Fuego de tanques, misiles, artillería | `Nerv::Attacks::ConventionalAttack` | **No.** No-evento. | `at_field.rebound(attack)`; `core.intact?`; fluido cosmética. |
| Mina N² | `Nerv::Attacks::N2Mine` | **No.** Teatro. | `core.intact?`; dispara `#regenerate!` y `#mutate!`; evento `siem.wipe_failed_regen`. |
| Golpe al core con campo bajado o penetrado | `Nerv::Attacks::CoreStrike` | **Sí**, y es el único sí. | `core.destroyed?` si `at_field.lowered? \|\| at_field.penetrated?`. **No ocurre en el ep 01.** |

Regla en una línea, para tests:

```
ConventionalAttack ↛ core
N2Mine             ↛ core ; → regenerate! ; → mutate!
CoreStrike         → core.destroyed?  iff  at_field.lowered? || at_field.penetrated?
```

Queda **prohibido** tratar “explotó” como “contenido”. Un escenario o un test que marque `:contained` porque hubo cráter está roto. El silencio post-wipe es un agujero de visibilidad, no un cierre de incidente.

---

## Señal para el SIEM: "silencio tras wipe" no es victoria

Tras `siem.wipe_declared`, la ausencia de firma **no** cierra el caso. El lab debe esperar (y, si no llega, sospechar) `siem.wipe_failed_regen`.

| Ventana | Lectura errónea | Lectura de lab |
|---|---|---|
| Flash / cráter | Target down | `siem.wipe_declared` — se usó el wipe, no se verificó el core |
| Sensor mudo | Paz | Ceguera post-explosión; el AT Field y el cráter tapan el objeto |
| Reaparición + armas nuevas | “Otro enemigo” o “no había muerto del todo, da igual” | Mismo `pattern_blue`, mismo core, TTP `T-SACHIEL-04` encima |

Frase operativa: **el silencio después del wipe es un indicador de que dejaste de mirar, no de que el core no está.** La detección de esa trampa se escribe en la sección 06; el playbook de qué hacer *durante* se escribe en la 08. Aquí queda la ley: no hay victoria sin `core.destroyed?`.
