# Ep 02 — TTPs del defensor y blast radius

Episodio: 02 · *The Beast* · INC-SACHIEL-001
Quien solo catalogue a Sachiel se pierde el capítulo. Las técnicas nuevas son de **Eva-01**. Si no las modelas, tu defensa es un threat actor interno sin ficha.

Collateral y disclosure **no** son el mismo TTP.

---

## Qué T-SACHIEL-* se cierran en este episodio

No se reusan como técnicas vivas. Se marcan.

| id | Nombre | En el 02 |
|---|---|---|
| `T-SACHIEL-01` | FirstSeenUnclassifiable | Cerrado como first-seen (ya ocurrió en el 01). No se re-emite. |
| `T-SACHIEL-02` | PerimeterRebuff | Cierra cuando el AT Field deja de `blocks?` (shatter). El ángel ya no aísla. |
| `T-SACHIEL-03` | WipeSurvival | **Termina.** Persistencia post-N² acaba con el crush. `#regenerate!` no resucita. |
| `T-SACHIEL-04` | AdaptiveMutation | No salva. El Beast no negocia TTPs; parte el modelo. |
| `T-SACHIEL-05` | HighValueApproach | **Se corta.** Ya no hay marcha al geofront. |

Ningún id `T-SACHIEL-*` se convierte en técnica del Eva.

---

## TTPs nuevas (ids obligatorios)

Citar desde tests exactamente así.

### `T-EVA01-01` PainSyncFeedback
El operador recibe el daño de la unidad. Acoplamiento: el humano es el sensor de integridad. Evidencia: piloto lesionado con el Eva destrozado, demora de reporting.

### `T-EVA01-02` OperatorBypassBerserk
Se descarta el input. Freeze y `sync_rate` bajo siguen siendo verdad del piloto; dejan de gobernar el actuador. `Eva#berserk!` → `operator_input_discarded`, `opaque_agency`.

### `T-EVA01-03` BruteForceATFieldBreak
Ruptura hexagonal por fuerza. No es `lower!` de procedimiento ni `CoreStrike` con campo bajado a propósito. `siem.at_field_shattered`.

### `T-EVA01-04` CoreCrush
Core de Sachiel en el puño. Mismo tipo `Nerv::Core`, canal `BerserkChannel`. No es doctrina de puntería.

### `T-EVA01-05` CollateralCity
Lo que se rompe que **no** era el ángel: ciudad, infraestructura, radio físico. Distinto de contar el crush. `collateral.city > 0`.

### `T-EVA01-06` PublicDisclosure
Civiles ven. Felicidades. Relato público. No es “PR”. No es T-EVA01-05: una ciudad rota sin testigos no es disclosure; un aplauso sin escombros no es collateral.

**Contrato para tests:** el escenario del 02 exhibe las seis. No existe TTP `T-EVA01-00 ShinjiAimsAndWins`.

---

## Tabla de fases

| Fase | Nombre NERV | Etiqueta de seguridad | Evidencia ep 02 | Preventivo posible | Mitigación posible |
|---|---|---|---|---|---|
| 1. Empalme | Handoff `:unresolved` | Continuación de incidente (no TA0001 nuevo) | PlaybookEp01 cortó; Eva en superficie; Sachiel vivo | Los P-01…P-07 del 01 (ya citados) | Encadenar runbook; no abrir ticket nuevo |
| 2. Acoplamiento | Pain sync | T1499 / impacto al operador-sensor | Piloto siente el despiece de la unidad | Aislar al humano del daño de la unidad | Sacar al operador; no pedir reporte útil ahora |
| 3. Bypass | Beast | T1562.001 Impair Defenses *(del propio IR: se apaga el humano)* | Movimiento sin comando | Human-in-the-loop real; inventario de agencia | No hay abort. Registrar no-consent |
| 4. Shatter | Hex-break | Bypass bruto de aislamiento ajeno | AT Field en fragmentos | CoreStrike entrenado *antes* | Forense del canal; no llamarlo procedimiento |
| 5. Crush | Core en el puño | Impact T1485 *(sobre persistencia raíz)* | `core.destroyed?` | Doctrina de core del 01, con gente capaz | Aceptar ángel-muerto; abrir incidente-defensor |
| 6. Collateral | Ciudad | Impact colateral | Escombros, unidad herida, piloto herido | Umbral de aborto; no pelear encima de civiles | Medir blast radius; no ocultarlo |
| 7. Disclosure | Felicidades | T1562.003 *(narrativa que ciega detección)* / data leak hacia civiles | Público aplaude; operador no sabe por qué | No usar “resolved” público como KPI | Corregir el relato; no-consent en el AAR |

No hay fase “el piloto apunta y gana”.

---

## Diagrama ASCII

```
 [ :unresolved  ep 01 ]
          |
          v
 [ freeze / pain_sync ]          T-EVA01-01
          |
          v
 [ berserk trigger ]             T-EVA01-02
          |  (se DISPARA; no se elige)
          v
 [ hex-shatter AT Field ]        T-EVA01-03
          |
          v
 [ CoreCrush ]                   T-EVA01-04
          |                      T-SACHIEL-03 termina
          |                      T-SACHIEL-05 se corta
          v
 [ collateral ciudad ]           T-EVA01-05
          |
          v
 [ disclosure ]                  T-EVA01-06
          |
          v
 [ congratulations ]
          |
          v
 [ :contained_uncontrolled ]
     NUNCA :contained_controlled
     NUNCA "Shinji apunta y gana"
```

---

## Blast radius

Lo que se rompe que **no** era el ángel.

| Categoría | Qué se rompe | TTP / métrica |
|---|---|---|
| **Física** | Ciudad, calles, edificios del perímetro de Tokio-3; la propia unidad destrozada | `T-EVA01-05`; `collateral.city`, `collateral.unit` |
| **Humana** | Operador: pain sync, lesión, no-consent, techo desconocido | `T-EVA01-01`; `collateral.operator`; `pain_sync`; `trauma_load` |
| **Reputacional** | Relato público (“ganamos”) vs hechos (Beast, no-consent) | `T-EVA01-06`; `public_visibility`; `congratulations_issued` |
| **De control** | NERV no gobierna el canal de kill; MAGI sin moción; agencia opaca sin inventario | `T-EVA01-02`; `opaque_agency`; `siem.magi_berserk_unauthorized` |

CollateralCity es física (+ unidad). PublicDisclosure es reputacional. Mezclarlas en un solo id es fallar el criterio.

---

## Qué NO es TTP de este episodio

- **Látigos / C2 / explotación remota.** Shamshel (ep 03). El Beast está *en* el mismo barro que el ángel; no teleopera.
- **Yashima / rifle de positrones / fortaleza geométrica.** Ramiel (05–06).
- **MAGI-virus.** Ireul. Aquí MAGI peca por **moción ausente**, no por infección.
- **Dummy Plug.** No hay piloto falso que “explique” T-EVA01-02.
- **ShinjiAimsAndWins.** No existe.

Si un test etiqueta el crush como `CoreStrike` o el disclosure como “PR de anime”, está citando el canal equivocado.
