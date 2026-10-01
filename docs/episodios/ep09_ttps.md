# Cadena de Ataque y TTPs de Israfel

## Lo que no aplica en este incidente
*   **No se reabren T-YASHIMA ni T-VENDOR ni T-GAGHIEL (Mandíbula).**
*   **T-OP02-01 (DualPlugHierarchy) Contraindicada:** El liderazgo impuesto por Asuka (que fue una solución en el mar) es el mayor impedimento para la sincronización aquí.

## Nuevas TTPs (Alta Disponibilidad y Sincronización)

| ID | Táctica / Comportamiento | Descripción |
| :--- | :--- | :--- |
| `T-ISRAFEL-01` | SplitOnPressure | División reactiva del cuerpo del atacante en dos nodos independientes bajo presión táctica. |
| `T-ISRAFEL-02` | DualCoreReplication | Mantenimiento de dos `Nerv::Core` vivos simultáneamente en arquitectura activo-activo. |
| `T-ISRAFEL-03` | RejoinFromSurvivor | Función de resiliencia: la réplica intacta (o desfasada en daño) reconstituye el nodo eliminado instantáneamente. |
| `T-OP01-13` | FirstSortieDesync | Fallo operacional de los defensores que atacan simultáneamente sin haber coordinado métricas temporales (clocks), estorbándose. |
| `T-SYNC-01` | RehearsedSharedClock | Ensayo en seco (Tabletop) de una coreografía o rutina exacta para igualar la ejecución milisegundo a milisegundo. |
| `T-SYNC-02` | SimultaneousCoreStrike | Ejecución final: Evas golpeando ambos cores en la misma ventana temporal (`Δt ≤ epsilon`). |
| `T-N2-01` | StunWindowNotKill | Utilización de fuerza destructiva desmesurada no para matar al enemigo (falla), sino para inducir `freeze/stun` y ganar tiempo. |

## Fases del Incidente (El Baile de 6 Días)

```text
[ One-Body Angel ] -> [ First Sortie (Evas sin ensayo) ] -> [ T-ISRAFEL-01 Split ]
                                                                        |
                                                                        v
   +----------------------- [ T-OP01-13 Desync (Unresolved) ] <---------+
   |
   v
[ T-N2-01 N² Stun Window ] -> [ T-SYNC-01 Rehearsal (Ensayo) ]
                                            |
                                            v
     [ T-SYNC-02 Simultaneous Strike (Segundo Sortie) ]
                                            |
           +--------------------------------+--------------------------------+
           |                                                                 |
   Δt > epsilon                                                      Δt ≤ epsilon
           |                                                                 |
           v                                                                 v
[ T-ISRAFEL-03 Rejoin ] (FAIL/LOOP)                                [ Both Cores Destroyed ]
                                                                             |
                                                                             v
                                                               [ SUCCESS: :contained_controlled ]
```

## Anti-TTPs
*   **No es TTP de este episodio:** Hackeo al SIEM o a MAGI (Ep 13, Ireul).
*   **No es TTP de este episodio:** Capturar al ángel vivo en un contenedor presurizado (Ep 10, Sandalphon).
