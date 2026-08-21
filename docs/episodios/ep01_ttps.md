# Ep 01 — Cadena de ataque / TTPs

Episodio: 01 · *Angel Attack* · Sachiel
Cadena de **este** ángel. No es un dump MITRE. Las etiquetas ATT&CK son etiqueta, no relleno. Los ids `T-SACHIEL-0x` se citarán en código: no renombrar.

Sachiel no hace phishing. Se presenta, absorbe, sobrevive el wipe, muta, camina al activo.

---

## Tabla de fases

| Fase | Nombre NERV | Etiqueta de seguridad | Evidencia en el ep 01 | Preventivo posible (antes) | Mitigación posible (durante) | ¿Cierra en el 01? |
|---|---|---|---|---|---|---|
| 1. First-seen | Contacto sin firma | TA0001 Initial Access *(etiqueta: presencia en el borde, no exploit de app)* | Blob bípedo en el perímetro; ONU dice “enemigo”; NERV aún no ha impuesto Pattern Blue en toda la cadena de mando | Catálogo de firmas first-seen; ejercicio de “esto no es un tanque”; sensores que no clasifican solo por tamaño | Nombrar Pattern Blue rápido; dejar de escalar calibre | Sí: el contacto ocurre y se nombra mal/bien. El naming maduro no. |
| 2. Rebote de perímetro | AT Field en superficie | TA0005 Defense Evasion — T1562 Impair Defenses | Tanques, misiles: fluido, ángel de pie. `ConventionalAttack` no-evento | Doctrina publicada: fuego convencional no es KPI; no gastar el arsenal como si fuera ejército | Abortar el playbook ONU; no interpretar fluido como progreso | Sí: el rebote se observa. Penetrar el campo **no**. |
| 3. Wipe fallido | Mina N² / teatro | TA0003 Persistence — T1542 Pre-OS Boot *(analogía: el wipe no toca firmware)* | Cráter, silencio, aplauso. Cuerpo se recompone. `PERSISTENCIA_POST_WIPE` | Ejercicios de wipe que midan `core.intact?`, no el flash; no usar N² como primer “seguro” | No declarar victoria; instrumentar la ventana post-wipe; esperar regen | Sí: el wipe ocurre y falla. Verificar core **no**. |
| 4. Mutación adaptativa | Nuevas TTPs post-N² | TA0042 Resource Development — T1588 Obtain Capabilities *(etiqueta: capacidades nuevas tras ver tu techo)* | Brazos rearticulados, ráfagas, lanza de luz. `#mutate!` | Asumir que un wipe fallido **enseña** al atacante; tener playbook post-mutación *antes* | Recalcular amenaza; no tratarlo como el mismo perfil de minuto cero | Sí: la mutación se ve. Catalogarla como doctrina, no. |
| 5. Aproximación al activo | Marcha al geofront | TA0040 Impact *(objetivo: corona, no el duelo con la ONU)* | Heading constante hacia Tokio-3 / geofront (Adam). Lentitud ≠ bajo riesgo | Segmentación física/operativa del activo; no dejar que el perímetro sea el único control | Desplegar unidad de respuesta **con operador listo**; interceptar antes del activo | **Abierta.** Llega al choque con Eva. No toca el geofront en este corte; el combate no se resuelve. |
| 6. Choque con la unidad de respuesta | Primer contacto Eva–ángel | TA0040 Impact — contra el defensor, no solo la ciudad | Eva-01 en superficie, operador en frío, Sachiel de pie. Corte. | Operador en sync *antes* del Pattern Blue; backup sano; autorización sin agenda oculta | Playbook Eva (sección 08): deploy, sync check, abort/handoff | **Abierta → ep 02.** Sin berserk aquí. Sin `:contained`. |

Fases 5–6 son el handoff: el 01 las inicia; el 02 las hereda con Eva ya desplegada y Sachiel mutado.

---

## Diagrama en ASCII

```
 [ perímetro ] --T-SACHIEL-01--> [ first-seen      ]
                                        |
                                        v
                               [ Pattern Blue?    ]
                                ONU: enemigo
                                NERV: ángel
                                        |
                                        v
 [ fuego ONU  ] --T-SACHIEL-02--> [ AT Field rebota ]
                                        |
                                        v
 [ mina N²    ] --T-SACHIEL-03--> [ cráter / silencio ]
                                        |
                                        v
                               [ regenerate!      ]
                                        |
                                        v
                               [ mutate!          ]  T-SACHIEL-04
                                        |
                                        v
 [ geofront   ] <--T-SACHIEL-05-- [ marcha al activo ]
                                        |
                                        v
 [ Eva-01     ] ---- deploy ----- [ choque          ]
                                        |
                                        v
                               [ :unresolved      ] ----handoff----> ep 02
```

Cinco TTPs numeradas + el deploy como acto del defensor (no es TTP del ángel) + el corte `:unresolved`.

---

## TTPs nombradas (ids estables)

Citar desde tests y desde `Sachiel` exactamente así. Tras `#mutate!`, el conjunto incluye `T-SACHIEL-04`. Antes del wipe, no.

### `T-SACHIEL-01` FirstSeenUnclassifiable
Presencia abierta, sin firma catalogada, escala que no cabe en “unidad militar”. El first packet es enorme, lento, inclasificable. Evidencia: silueta bípeda en el borde de Tokio-3. **No** es recon de credenciales ni scan de puertos.

### `T-SACHIEL-02` PerimeterRebuff
Defensa propia: AT Field. El perímetro dispara; el disparo no cuenta. Fluido visible, core intacto. Evidencia: tanques y misiles como no-evento. Impair defenses del *defensor*, invertido: el atacante trae el aislamiento.

### `T-SACHIEL-03` WipeSurvival
Persistencia post-wipe. `N2Mine` no destruye el core. `#regenerate!`. Evidencia: cráter, luego el mismo Pattern Blue. Silencio ≠ victoria.

### `T-SACHIEL-04` AdaptiveMutation
Nuevas capacidades **después** de un wipe fallido: brazos, ráfagas, lanza de luz. `#mutate!`. Evidencia: el perfil de impacto post-N² no es el del minuto cero. El atacante aprendió el techo del arsenal.

### `T-SACHIEL-05` HighValueApproach
Marcha hacia el activo de alto valor (geofront / Adam), no hacia el duelo con quien le dispara. Evidencia: heading constante, walk lento, la ONU es ruido en el camino. Impacto cinético contra ciudad y, cuando aparece, contra la unidad de respuesta.

**Contrato para tests (sección 10):**
- Un Sachiel recién instanciado exhibe `T-SACHIEL-01`, `02`, `05` (presencia, rebote, heading). `02` se observa al recibir `ConventionalAttack`.
- Tras `N2Mine`: se añade `T-SACHIEL-03` (sobrevivió) y `T-SACHIEL-04` (mutó).
- Nunca una fase `exfil_credentials` ni `c2_channel`.

---

## Qué NO es TTP de Sachiel

Para no mezclar ángeles ni inflar MITRE:

- **No hay C2 ni látigos.** Explotación remota / canal de mando es Shamshel (ep 03). Sachiel está *en* el perímetro; no teleopera.
- **No hay fortaleza geométrica ni penetración lenta a distancia.** Eso es Ramiel (ep 05–06). Sachiel camina; no se planta como búnker.
- **No hay phishing, ni robo de credenciales, ni lateral movement de cuentas.** No hay fase “exfil”.
- **No hay compromiso de MAGI.** El ángel no es software (Ireul es otro episodio). MAGI aquí solo votan.
- **No hay insider.** Sachiel no debía estar en el roster.
- **No hay berserk del defensor como TTP del ángel.** El 02 recoge el cuerpo del fallo; no lo conviertas en técnica de Sachiel.

Si un test o un doc etiqueta a Sachiel con “whip C2”, “drill al core desde lejos” o “credential dump”, está citando al ángel equivocado.
