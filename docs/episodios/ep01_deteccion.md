# Ep 01 — Superficie de detección (lo que ve NERV)

Episodio: 01 · *Angel Attack* · Sachiel
NERV detecta. La organización que debería responder no está lista. **Alertar no es mitigar.**

No se implementa `siem.rb` aquí. Se fijan ids de evento para tests.

---

## Definición operativa de Pattern Blue (este repo)

**Pattern Blue** es la regla de detección que dice: *esto no es convencional; es un ángel.*

No es un color de UI. No es un hechizo. Es un cambio de clase del incidente:

- Deja el playbook de ejército (ONU, calibre, “enemigo”).
- Abre el playbook de NERV (MAGI, Eva, hipótesis de core).
- No cierra el incidente. Un `siem.pattern_blue` verdadero y un Sachiel de pie al corte es, todavía, el episodio 01.

En código futuro: `Sachiel#pattern_blue? == true` dispara `siem.pattern_blue`. La ONU puede haber disparado antes; eso no es Pattern Blue, es `contact.unclassified` + `fire.authorized` (sección 02). La diferencia entre esas dos alertas es doctrina + sensores + MAGI, no el tamaño del blob.

**Verdadero positivo.** Silueta de escala no humana + fuego convencional sin caída + heading a activo de alto valor + firma no catalogada como máquina/humano. Sachiel en el perímetro de Tokio-3 cumple.

**Contención.** No forma parte de la definición. Pattern Blue puede estar en verde de “acertamos el nombre” y el core intacto.

---

## Señales

| Evento | Qué lo dispara | Confianza | Notas |
|---|---|---|---|
| `siem.pattern_blue` | `#pattern_blue?` / first-seen no convencional (T-SACHIEL-01) + rebote de perímetro (T-SACHIEL-02) | Alta en “no es tanque”. Baja en “sabemos el kill”. | Nombre de clase. No implica playbook listo. |
| `siem.wipe_declared` | Se autoriza y detona `N2Mine` | Alta de que el wipe *ocurrió*. Nula de que el core cayó. | Empieza la ventana de ceguera. |
| `siem.wipe_failed_regen` | Tras wipe: `#regenerate!` (y en Sachiel, `#mutate!`) | Alta de persistencia. Este evento **desmiente** la victoria. | T-SACHIEL-03 / T-SACHIEL-04. Silencio previo ≠ paz. |
| `siem.eva_deployed` | Eva-01 en superficie, operador a bordo | Alta de mitigación de último recurso. Nula de contención. | El Eva es mitigación, no detección. |
| `siem.operator_sync_low` | `sync_rate` del operador bajo el umbral de `CoreStrike` útil | Alta de que el deploy no va a cerrar el caso | El 01 termina aquí: unidad fuera, sync insuficiente. |

Señales auxiliares (logs, no necesariamente eventos de primer nivel):

- `contact.unclassified` — perímetro ONU, pre-doctrina.
- `impact.observed` / `impact.fluid_observed` — no-evento táctico; no promover a “herido”.
- `target.still_moving` — heading T-SACHIEL-05.
- `siem.wipe_declared` **sin** `siem.wipe_failed_regen` en la ventana de observación = **alerta de ceguera**, no cierre.

Confianza de decisión, en una línea: Pattern Blue es barato de acertar en Sachiel (el objeto no se parece a nada del catálogo militar) y caro de actuar (hace falta gente que no está).

---

## Falsos positivos

Un Pattern Blue falso es peor si dispara Eva, y también es malo si se ignora el verdadero. El lab tiene que poder nombrar ambos.

| Falso Pattern Blue (candidato) | Por qué parece ángel | Cómo se descarta (doctrina, no magia) |
|---|---|---|
| Unidad convencional enorme / prueba de arma pesada | Escala, flash, pánico de perímetro | Firma de máquina humana; responde a doctrina ONU; no rebota *todo* como AT Field |
| Cráter o residual de N² propio | Sensor mudo, patrón energético raro | Es *efecto* del wipe, no un sujeto `#pattern_blue?`. No camina al geofront |
| Biomasa / fauna mal clasificada | “No es tanque” | No hay heading a activo, no hay rebote sistemático, no hay persistencia post-impacto |
| Tercero no auditado (máquina de otro dueño) | Bípedo gigante, no está en el catálogo NERV | Pregunta de **autoría** (humano/corporativo) vs **clase ángel**. El 01 no abre ese expediente; el lab solo anota el FP de clase |

Regla: **escala ≠ Pattern Blue.** El minuto cero de Sachiel no se detecta por metros; se detecta por “no es convencional + no cae + va al activo”.

Un falso negativo sería peor y en el 01 casi no ocurre a nivel sensor: NERV *sí* nombra. El fallo no es el SIEM. Es lo que hay detrás.

---

## Demora humana

Detección existe. La firma del Eva tarda.

| Paso | Quién | Qué retrasa | Efecto en el lab |
|---|---|---|---|
| Nombrar Pattern Blue | Sensores + MAGI (stub, mayoría 2/3) | La ONU ya está disparando con el nombre equivocado | Ventana de `ConventionalAttack` inútil |
| Autorizar unidad de respuesta | Gendo (agenda) + MAGI mayoría para autorización extrema | El director usa el incidente; no es un on-call neutro | Deploy tardío y con el peor plan B |
| Asignar operador | Misato como IC improvisado; Shinji convocado el mismo día | Operador en frío; freeze; `sync_rate` bajo | `siem.operator_sync_low` |
| Failover | Rei | Backup lesionado: no hay secundario | `backup_unavailable` (métrica de la 09) |

Tiempo de decisión, modelo (no cronómetro de canon):

1. First-seen → Pattern Blue: minutos (sensores sí; doctrina ONU no).
2. Pattern Blue → autorización Eva: retrasado por cadena humana, no por SIEM.
3. Autorización → operador en sync útil: **no se alcanza en el 01.**

MAGI en este episodio: tres votos, mayoría para identificación y para autorización extrema. Stub. No infectados. Un solo voto no basta para desplegar.

---

## Lista de eventos de lab (ids estables)

Usar exactamente estos strings en `Nerv::SIEM` y en tests. No inventar sinónimos.

| id | Quién lo emite | Obligatorio en el escenario ep 01 |
|---|---|---|
| `siem.pattern_blue` | SIEM al confirmar clase ángel | Sí |
| `siem.wipe_declared` | SIEM al detonarse `N2Mine` | Sí |
| `siem.wipe_failed_regen` | SIEM al `#regenerate!` post-wipe | Sí |
| `siem.eva_deployed` | SIEM al Eva en superficie | Sí |
| `siem.operator_sync_low` | SIEM si `sync_rate` < umbral | Sí (Shinji en frío) |

No emitir `siem.contained`. No emitir nada que implique berserk. El playbook del 01 termina `:unresolved` con esta traza mínima:

```
siem.pattern_blue
siem.wipe_declared
siem.wipe_failed_regen
siem.eva_deployed
siem.operator_sync_low
```

---

## Frase-ley: "alertar no es mitigar"

Un SIEM que acierta el nombre y no tiene playbook, operador en sync, backup sano ni doctrina de core es el episodio 01. Pattern Blue puede ser verdadero positivo y Tokio-3 sigue sin contención. La detección cumplió; la preparación no. Los controles que *debieron existir antes* son la sección 07; los pasos *durante* son la 08.

**Alertar no es mitigar.**
