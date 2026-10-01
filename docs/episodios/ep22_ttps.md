# Cadena de Ataque y TTPs del Psico-Ataque Orbital

## La Culminación del Desgaste Humano
La vulnerabilidad `T-OP02-03` (Skill Insufficient / Desgaste de Asuka) introducida en el incidente de Zeruel (Ep 19) no se saneó. Arael utiliza esta vulnerabilidad no parcheada como su superficie principal de ataque.

## Nuevas TTPs (Ataque Psíquico y Standoff Extremo)

| ID | Táctica / Comportamiento | Descripción |
| :--- | :--- | :--- |
| `T-ARAEL-01` | StayInOrbit | Táctica evasiva donde el adversario no desciende a rango de combate terrestre, nulificando defensas de corto y medio alcance. |
| `T-ARAEL-02` | MentalBeamExfil | Inyección forzada de información (o volcado de memoria) directo al sistema nervioso del operador, ignorando las protecciones mecánicas/hardware del endpoint. |
| `T-ARAEL-03` | OperatorAsSurface | Identificación del analista humano como el nodo de infraestructura más débil de toda la red, ignorando a MAGI y a los núcleos de los Evas. |
| `T-PSYCHE-01` | TraumaForcedReplay| Ataque que fuerza la revisión en bucle de vulnerabilidades emocionales base (Kyoko) para provocar un DoS biológico (colapso nervioso). |
| `T-LONGINUS-01` | OneShotFromDogma| Uso de un artefacto mitigante crítico de la organización (Lanza) que garantiza el bypass total de las defensas enemigas a cambio de un único disparo irreversible. |
| `T-LONGINUS-02` | SpearLost | El estado posterior a quemar el artefacto crítico; la infraestructura queda expuesta sin su seguro primordial. |
| `T-OP02-04` | PsycheBroken | (Humano) Colapso total de las funciones operativas de Asuka; pérdida de control del sistema de *Sync* debida a la violación mental, inutilizándola como activo militar. |
| `T-SEELE-03` | ArtifactBurnedByGendo | (Mando) El liderazgo táctico destruye un activo clave del C-Level (Seele) para sobrevivir el presente, arruinando los KPIs globales (Instrumentality) del directorio. |

## Fases del Incidente (Exfil a Distancia)

```text
[ T-ARAEL-01 Stay in Orbit (Cielo Quieto) ]
        |
        v
[ T-ARAEL-03 Operator as Surface (Ignora MAGI y Eva) ]
        |
        v
[ T-ARAEL-02 Mental Beam apunta a Asuka ]
        |
        v
[ T-PSYCHE-01 Trauma Forced Replay (Kyoko, Muñeca) ] ---> [ T-OP02-04 Psyche Broken ]
        |
        +-- (Fallo: Melee / Dummy / Dirac / Catch-3) ---> [ siem.close_range_impossible ]
        |
        v
[ T-LONGINUS-01 One Shot from Dogma (Rei dispara) ]
        |
        v
[ Arael Muerto ] & [ T-LONGINUS-02 Spear Lost ]
        |
        v
[ T-SEELE-03 Artifact Burned (Seele furioso) ]
        |
        v
[ Exit 0: :contained_controlled (Costo Elevado) ]
```

## Anti-TTPs
*   No es TTP de este episodio: Ataque cinético masivo (Sahaquiel `T-SAHAQUIEL-01` / Caída libre).
*   No es TTP de este episodio: Infección bacteriológica/hardware (Armisael `T-ARMISAEL-*` reservado para el 23).
