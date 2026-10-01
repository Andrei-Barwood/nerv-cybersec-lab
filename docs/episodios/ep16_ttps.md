# Cadena de Ataque y TTPs de Leliel

## Lo que no aplica en este incidente
*   **No T-YASHIMA / T-INTERCEPT / T-MAGI / T-ANALOG / T-KAJI.**
*   **T-OP01-08 (CloseRangeReapplied):** Esta técnica del defensor (correr a clavar el cuchillo que vimos en el Ep 03 y el Ep 09) aquí es letal y es explícitamente citada como el vector de pérdida.

## Nuevas TTPs (Inversión, Dilatación, Rehén)

| ID | Táctica / Comportamiento | Descripción |
| :--- | :--- | :--- |
| `T-LELIEL-01`| DecoySphere | Presentar un objetivo altamente visible (Esfera) para distraer del verdadero volumen de ataque. |
| `T-LELIEL-02`| ShadowIsTheBody | Ocultar la superficie de ataque primaria (Sombra plana) a plena vista bajo el señuelo. |
| `T-LELIEL-03`| InvertedAtAbsorb| Usar aislamiento direccional hacia adentro para succionar y atrapar recursos (Evas). |
| `T-LELIEL-04`| IdentityInterrogationInside | Ejecutar un escaneo/ataque psicológico a la identidad del operador *solo si* ya está cautivo dentro del perímetro atacante. |
| `T-DIRAC-01` | OccupantHostage | Retener a un operador como escudo humano o recurso secuestrado para impedir el uso de armamento de negación de área. |
| `T-DIRAC-02` | TimeDilationSplitClock| Desincronizar la percepción del tiempo y el consumo de recursos entre el interior del sandbox y el mando externo. |
| `T-OP01-18`  | N2WhileOccupied | (Anti-TTP NERV). Emitir la orden de uso de fuerza letal destructiva masiva ignorando el estado `occupant_alive`. |
| `T-EVA01-07` | OpaqueExtractFromDirac| (Defensa Sucia). Activación de un protocolo de rescate no documentado por parte de la IA/Biología de la unidad para proteger a su operador (Berserk II). |

## Fases del Incidente (El Mar de Dirac)

```text
[ T-LELIEL-01 Decoy ]  <-- [ T-OP01-08 Rush (Defensor) ]
        |                             |
        v                             v
[ T-LELIEL-02 Sombra ] ---------> [ T-LELIEL-03 Absorb ]
                                      |
                                      v
                             [ T-DIRAC-01 Hostage ]
                                      |
        +-----------------------------+-----------------------------+
        |                                                           |
[ T-LELIEL-04 Interrogatorio ]                             [ MAGI: N2 Vote ]
[ T-DIRAC-02 Time Dilation ]                                        |
        |                                                           v
        |                                          (Si Misato falla) -> [ operator_killed ]
        v                                                           |
[ T-EVA01-07 Opaque Extract ] <---- (Si Misato frena la N2) --------+
        |
        v
[ Exit 1: :contained_uncontrolled ]
```

## Anti-TTPs
*   **No es TTP de este episodio:** Rayo mental de Arael (Ep 22: no hay absorción física, solo mental).
*   **No es TTP de este episodio:** Hijack biológico de Bardiel (Ep 18: Leliel no se fusiona contigo, te atrapa).
