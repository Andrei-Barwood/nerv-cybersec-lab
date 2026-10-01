# Cadena de Ataque y TTPs de Fuerza Bruta y Asimilación

## Lo que FALLA hoy (Deuda del Ep 18)
La táctica `T-DUMMY-01` (Authorized Operator Bypass) que coronamos como éxito sucio en el Episodio 18, hoy debe fallar. El Dummy Plug tiene un techo.

## Nuevas TTPs (Perímetro, Falla de IA, y Asimilación del Atacante)

| ID | Táctica / Comportamiento | Descripción |
| :--- | :--- | :--- |
| `T-ZERUEL-01` | PerimeterOverwhelm | Atacar directamente la arquitectura de defensa central ignorando firewalls (Agujerear el Geofront). |
| `T-ZERUEL-02` | ArmorStrip | Destruir de un golpe los recubrimientos protectores y extremidades de las unidades L2 (Eva-02). |
| `T-ZERUEL-03` | SurviveN2Suicide | Resistir explosiones directas o protocolos de Wipe de contención manuales perimetrales (Eva-00). |
| `T-ZERUEL-04` | DummyCeiling | Punto de fallo donde la automatización central de NERV (Rei Pattern) no es suficiente para operar la defensa contra APTs. |
| `T-EVA01-08` | S2Ingest | (Defensor Sucio) Extraer y asimilar en caliente la tecnología energética del atacante, rompiendo los controles de fábrica de NERV. |
| `T-EVA01-09` | OperatorIntrojection| (Defensor Sucio) Asimilación física y psíquica del administrador de primera línea dentro de la estructura base del sistema. |
| `T-OP01-20` | LateReturnAfterStrike | (Humano) El on-call regresa al incidente crítico de forma tardía tras abandonar su puesto en huelga (Ep 18). |
| `T-OP02-03` | SkillInsufficientVsOverwhelm| (Humano) Certificación de que un piloto L2 excepcionalmente talentoso no puede detener pura fuerza bruta de red. |

## Fases del Incidente (El Overwhelm y la Ingestión)

```text
[ T-ZERUEL-01 Overwhelm Geofront ]
             |
             v
[ T-ZERUEL-02 Armor Strip 02 ] & [ T-ZERUEL-03 N2 Suicide Fail 00 ]
             |
             v
[ T-ZERUEL-04 Dummy Ceiling (FAIL) ]  <--- (El plan de Gendo colapsa)
             |
             v
[ T-OP01-20 Late Return (Shinji Sube) ]
             |
             v
[ T-EVA01-08 S2 Ingest ] ---> (Ángel Muerto)
             |
             v
[ T-EVA01-09 Operator Introjection (Shinji Absorbido) ]
             |
             v
[ Exit 1: :contained_uncontrolled / plug_empty ] 
```

## Anti-TTPs
*   No es TTP de este episodio: Engaño Psicológico o Hackeo de Consciencia desde Órbita (Arael).
*   No es TTP de este episodio: El Dummy Plug "ganando".
