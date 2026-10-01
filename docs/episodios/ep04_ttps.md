# Kill-Chain del Staffing y TTPs de Deserción

## Lo que no aplica en este incidente
*   Tácticas de Sachiel y Shamshel (`T-SACHIEL-*`, `T-SHAMSHEL-*`). No se reabren. No hay látigos, regeneración ni Beast Mode.

## Nuevas TTPs (Organización y Operador)

| ID | Táctica / Comportamiento | Descripción |
| :--- | :--- | :--- |
| `T-SOC-01` | DualRoleIcHousing | El comandante de incidentes convive y hospeda al on-call, destruyendo las fronteras de roles (`too_close`). |
| `T-SOC-02` | SparePartsFailover | NERV trata a los backups como recambios ciegos (Gendo ordenando que Rei pilote a pesar de sus heridas). |
| `T-SOC-03` | DiscardUnwillingOperator | Si el operador no sincroniza instantáneamente, el mando asume que es desechable y procede a escoltarlo a la salida bajo custodia. |
| `T-SOC-04` | SilenceAsPolicy | La corporación y el entorno ignoran el trauma del operador post-vuelo (`callback_absent` prolongado). |
| `T-OP01-04` | PostWinAWOL | El piloto huye después de una victoria, porque la victoria no recompensó el desgaste. |
| `T-OP01-05` | HedgehogTooClose | Daño emocional por fricción directa con los comandantes y observadores civiles. |
| `T-OP01-06` | HedgehogTooFar | Aislamiento en el tren, cerrando toda posibilidad de comunicación (SDAT on). |
| `T-OP01-07` | ReturnImHome | Aceptación vulnerable pero voluntaria de la distancia y retorno a la base operativa (`Tadaima`). |

## Fases del Incidente (Ascenso y Resolución)

```text
[ callback_absent (Del Ep 03) ] ---> [ T-OP01-05 HedgehogTooClose ]
                                            |
                                            v
                                 [ T-OP01-04 PostWinAWOL ]
                                            |
             +------------------------------+---------------------------+
             |                              |                           |
[ T-OP01-06 HedgehogTooFar ]    [ T-SOC-03 Discard/Escort ]   [ T-SOC-02 SparePartsFailover ]
(Trenes en bucle)               (Seguridad de NERV)           (Rei I de recambio)
             |                              |                           |
             +------------------------------+                           v
                                            |                  [ FAIL: staffing_failed ]
                                 [ Recuperación Misato ]
                                            |
                       +--------------------+---------------------+
                       |                                          |
                [ Deserción en tren ]                  [ T-OP01-07 ReturnImHome ]
                       |                                          |
            [ FAIL: staffing_failed ]             [ SUCCESS: staffing_restored_fragile ]
```

## Anti-TTPs
*   El operador **no** se va porque está bajo control mental del enemigo (PsyOps es el ep 22).
*   Misato **no** dispara un arma (fuerza cinética) para detener el tren.
