# Ep 02 — After-action y handoff al episodio 03

Incidente: INC-SACHIEL-001 (eps 01+02). Outcome de lab: `:contained_uncontrolled` (exit 1).
El ángel está muerto. El defensor quedó como amenaza interna no inventariada. NERV creerá que “tienen un Eva que funciona”. Tienen un Beast.

---

## Resumen del incidente completo 01+02 (15 líneas máximo)

1. Blob bípedo en el perímetro. ONU dispara. AT Field rebota (`T-SACHIEL-01/02`).
2. Pattern Blue. Alertar no mitiga. Operador en frío, backup caído, MAGI vota **deploy**.
3. Mina N²: cráter, aplauso, `#regenerate!` + `#mutate!` (`T-SACHIEL-03/04`).
4. Eva-01 en superficie. `sync_rate` 0.25, freeze. Sin `CoreStrike`. Corte `:unresolved`.
5. Techo desconocido: el SOC entra con el ticket a medio escribir y el cuerpo en hospital.
6. El choque continúa en forense: pain sync (`T-EVA01-01`). El piloto es el sensor y se lesiona.
7. Trigger: unidad critical + freeze/pain + ángel vivo. El Beast **se dispara**, no se elige (`T-EVA01-02`).
8. MAGI no abre moción `:berserk`. `siem.magi_berserk_unauthorized`. Gendo observa y extrae señal.
9. Hex-shatter del campo del ángel (`T-EVA01-03`). Core en el puño (`T-EVA01-04`).
10. `#regenerate!` ya no aplica. `T-SACHIEL-03` termina; `T-SACHIEL-05` se corta.
11. Ciudad y unidad rotas (`T-EVA01-05`). Civiles ven (`T-EVA01-06`).
12. “Felicidades.” El operador no consintió y no reconoce el triunfo.
13. `congratulations_issued` + `operator_non_consent` = olor. El KPI falso no mueve `ContainmentResult`.
14. Outcome `:contained_uncontrolled`. Ángel-muerto y incidente-defensor-abierto.
15. INC-SACHIEL-001 cierra sucio. El siguiente ángel no se vence a aullidos.

---

## Estado del ángel vs estado del defensor

| | Estado |
|---|---|
| **Sachiel** | `core.destroyed?`. No persiste. No reaparece “por si acaso”. |
| **Eva-01** | Desplegada, herida, `berserk?`, `opaque_agency`, input descartado. |
| **Operador** | Vivo, `trauma_load` > 0, `operator_non_consent`, `sync_rate` aún 0.25. No valiente. |
| **MAGI** | Mayoría de deploy usada. Cero autorización de Beast. |
| **NERV (org)** | Cree que el Eva “funciona”. El AAR registra un failsafe opaco. |
| **Público** | Ya vio. Disclosure no se rebobina. |

---

## TTPs de Sachiel cerradas / TTPs de Eva-01 abiertas

**Cerradas / cortadas:** `T-SACHIEL-01`…`05` (WipeSurvival termina; HighValueApproach se corta; el resto es historia del 01).

**Abiertas (del defensor):** `T-EVA01-01`…`06`. Pain sync, bypass, shatter, crush, collateral, disclosure. Inventario de threat actor interno: incompleto. `opaque_agency` sigue sin fuente.

---

## Controles que faltan

P-08 human-in-the-loop real; P-09 abort por `sync_rate`; P-10 inventario de agencia; P-11 kill-switch documentado; P-12 aislar pain sync; P-13 moción MAGI por canal; P-14 felicidades fuera del KPI. Más los P-01…P-07 del 01 que nunca se cumplieron y empujaron a *necesitar* al Beast.

---

## KPI falso vs métricas reales

| Falso | Real |
|---|---|
| Felicidades / “resolved” / ángel en pedazos como victoria de piloto | `operator_non_consent`, `pain_sync`, `trauma_load` |
| MAGI “tenía mayoría” | `authorized?(:berserk) == false` |
| Sync que “seguro subió” | `sync_rate` 0.25, `core_strike_possible?` false |
| Ciudad como arena limpia | `collateral.city > 0` |
| El Eva funciona | `:contained_uncontrolled` |

---

## Deuda hacia ep 03 (Shamshel)

- C2 / látigos / explotación remota. El piloto tiene que **operar**, no esperar al animal.
- Testigos del combate (colegas), Eva-01 bajo control más humano.
- **Prohibido** ganar con `BerserkChannel`. Si se dispara, es fallo de playbook, no éxito.
- No reabrir el core de Sachiel.
- El teléfono que no suena se puede nombrar; el erizo es el 04.

---

## Deuda hacia ep 04 (erizo)

Aislamiento vs colaboración. Cohabitación ya empezó (IC aloja al operador aturdido). El 02 no resuelve si se queda o se va. El 04 posee la tesis.

---

## Deuda hacia Dummy Plug / Yui (NO abrir; solo "agencia opaca sigue sin fuente")

**No abrir.** Dummy Plug no se implementa. La fuente de la voluntad no se nombra. `opaque_agency` sigue siendo un flag sin ficha. Inventariar no es explicar.

---

## Lección Seele

Cinco viñetas para un SOC que no ha visto la serie.

1. **Un control que actúa solo es un actor.** Si no está en el inventario, tu “defensa” tiene TTPs propias. Modélalas o te las come el AAR.
2. **El voto de desplegar no es el voto de wipe.** La omisión no autoriza. Un quórum viejo no cubre un canal nuevo.
3. **Funcionó no es gobernado.** Isolate/wipe/failsafe que mata el malware y tres racks es `:contained_uncontrolled`. Ábrele ticket al defensor.
4. **El banner de victoria no es el estado.** Felicidades, “malware removed”, el jefe aplaudiendo: míralo junto al no-consent del humano que debía estar en el loop.
5. **No diseñes el próximo incidente para necesitar al animal.** Abortar por umbral, human-in-the-loop real, kill-switch documentado. El residual sucio de *esta* vez no es un feature.

---

## Qué deberá contener el archivo del ep 03

No se escribe en este turno. Secciones sugeridas:

1. Briefing: Shamshel es otro incidente; INC-SACHIEL-001 no se reabre; Beast no es el plan.
2. Aparición: látigos / alcance, no marcha bípeda de Sachiel.
3. Anatomía: C2 / explotación remota.
4. Persistencia o canal: el operador tiene que pelear.
5. TTPs propias (no `T-EVA01-*` como método).
6. Detección / SIEM de C2.
7. Preventivos de exposición remota.
8. Playbook con piloto al volante.
9. Factor humano (testigos, teléfono que no suena — frontera con 04).
10. Extender NERV, no reescribir 01–02.
11. Laboratorio ep 03.
12. AAR → ep 04 (erizo).
