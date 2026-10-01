# Cadena de Ataque y TTPs en el Teatro Marítimo

## Lo que no aplica en este incidente
*   **No se reabren T-YASHIMA ni T-VENDOR.** Gaghiel es un ángel natural; las conspiraciones de Ritsuko y los robots nucleares son irrelevantes.
*   **Excepción a T-OP01-08 (CloseRangeReapplied):** En el incidente de Ramiel, el *close-range* fue terminantemente contraindicado. Aquí, esa prohibición se levanta por el cambio de fisonomía del atacante; se *debe* entrar a rango cerrado para abrir la mandíbula.

## Nuevas TTPs (Ataque de Tránsito y Dual Plug)

| ID | Táctica / Comportamiento | Descripción |
| :--- | :--- | :--- |
| `T-GAGHIEL-01` | TransitAmbush | Atacar infraestructura crítica (Evas) mientras es transportada en una ventana de vulnerabilidad logística. |
| `T-GAGHIEL-02` | AquaticDomain | Explotar un dominio físico/lógico donde las defensas primarias de la víctima no están diseñadas para operar (el océano). |
| `T-GAGHIEL-03` | JawGatedCore | Resguardar la vulnerabilidad crítica (Core) detrás de un control ocluido y físico pesado (Boca). |
| `T-GAGHIEL-04` | FleetAsPrey | Consumir activos de escolta (barcos de la ONU) como daño colateral táctico en su avance. |
| `T-FLEET-01` | CombinedArmsOnOpenCore | El defensor combina armas *legacy* (fuego naval) con *breachers* modernos (Eva-02 abre la mandíbula) para causar un kill letal. |
| `T-OP02-01` | DualPlugHierarchy | Procedimiento sucio: alojar dos analistas/operadores (Shinji/Asuka) en un mismo puente físico de mando (plug) compartiendo cargas de input neuronal. |
| `T-OP02-02` | SecondChildTakesLead | Desplazamiento de jerarquía: el operador veterano asume el rol primario, relegando al piloto local (Shinji) a rol de soporte en su propio incidente. |

## Fases del Incidente (Mar y Dual Plug)

```text
[ Convoy Transportando Eva-02 ] -> [ T-GAGHIEL-01 Ambush (Mar) ]
                                            |
                                            v
                               [ Pattern Blue en Flota ] -> [ Tokio-3 SIEM: SILENCIO ]
                                            |
                                            v
[ T-OP02-01 DualPlug (Asuka/Shinji) ] -> [ Despliegue Subacuático ]
                                            |
                                            v
                             [ Gaghiel Traga Eva-02 (T-GAGHIEL-03) ]
                                            |
                                            v
[ Eva-02 fuerza jaw_open ] -> [ T-FLEET-01 FleetBattery Dispara ]
                                            |
                                            v
                                 [ Core Destruido ] -> [ SUCCESS: :contained_controlled ]
```

## Anti-TTPs
*   **No es TTP de este episodio:** Israfel. Dos operadores en UN plug NO es igual a dos unidades Eva sincronizando un baile. Este es un procedimiento de jerarquía sucia y apurada.
*   **No es TTP de este episodio:** Ataques digitales al MAGI. (Episodio 13).
