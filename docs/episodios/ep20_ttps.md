# Cadena de Eventos y TTPs de Dwell y Recovery

## Lo que HEREDAMOS hoy (Deuda del Ep 19)
Las tácticas `T-EVA01-08` (S2Ingest) y `T-EVA01-09` (OperatorIntrojection) no se cierran de golpe. La 08 perdura (Persistencia del S2). La 09 es la que debemos mitigar (Extraer a Shinji).

## Nuevas TTPs (Latencia, Extracción y Límites)

*Nota: No hay T-ZERUEL. El Ángel está muerto. Esta kill-chain es de manejo interno.*

| ID | Táctica / Comportamiento | Descripción |
| :--- | :--- | :--- |
| `T-ORAL-01` | DwellInsideControl | Período prolongado (un mes) de inactividad visible donde el administrador reside silenciosamente como parte de la infraestructura con privilegios absolutos. |
| `T-ORAL-02` | BoundaryDissolved | Pérdida completa de la delimitación entre el rol del usuario humano y la capa física/lógica del hardware (pérdida del AT Field). |
| `T-ORAL-03` | SalvageNotKill | Maniobra defensiva orientada a la extracción y reconstrucción de la identidad de un analista, diferenciada de las operaciones de wipe o kill de atacantes. |
| `T-ORAL-04` | ReturnToBody | Acto final de re-establecer fronteras interpersonales, cortando el "Modo Dios" fusionado para aceptar de nuevo roles y vulnerabilidades limitadas. |
| `T-S2-01` | PersistInProd | El órgano de poder/código enemigo ingerido no se desinstala; se convierte en una anomalía tolerada y persistente en el sistema central de la organización. |
| `T-OP01-21` | ChooseWorldOfOthers | (Humano) El operador acepta el trauma y las fricciones de interactuar con pares en lugar del aislamiento perfecto de la asimilación técnica. |
| `T-SOC-10` | RecoverAnalystFromTool | (Mando) Workflow del SOC dedicado exclusivamente a desconectar con seguridad al personal que se ha sobre-involucrado en sistemas críticos durante una crisis. |

## Fases del Incidente (Recovery-from-Tool)

```text
[ (Heredado) plug_empty + S2_ingested ]
             |
             v
[ T-ORAL-01 Dwell Inside (30 Días) ]
             |
             v
[ T-ORAL-03 Salvage Attempt ] 
             |
             +-- (Si Dummy Plug actúa) ---> [ siem.dummy_salvage_rejected ]
             |
             v
[ T-ORAL-04 Return To Body (Boundaries Restored) ]
             |
             v
[ T-S2-01 S2 Persists in Prod (s2_still_in_prod) ]
             |
             v
[ Exit 13: :operator_recovered_fragile ] 
```

## Anti-TTPs
*   No es TTP de este episodio: Resurrección de Zeruel o un nuevo ataque de silueta (Pattern Blue).
*   No es TTP de este episodio: Contact Experiment histórico (Naoko/Yui), eso se reserva para el 21.
