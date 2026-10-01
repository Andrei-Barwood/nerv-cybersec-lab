# Cadena de Ataque y TTPs del Hijack

## Lo que se cobra hoy (Deuda del Ep 17)
Las tácticas `T-INTAKE` (Saltar Auditoría) y `T-SOC-08` (Ocultar Nombre del Operador a Pares) que el Episodio 17 implementó de manera prepotente, son la alfombra roja por la que Bardiel camina en el Episodio 18.

## Nuevas TTPs (Infección Orgánica, Override, y Amputación)

| ID | Táctica / Comportamiento | Descripción |
| :--- | :--- | :--- |
| `T-BARDIEL-01` | DormantHitchhikerActivates | El contaminante durmiente abandona el estado sellado (sealed) para iniciar ejecución activa de control. |
| `T-BARDIEL-02` | TrustedEvaHijack | Secuestro total de la infraestructura motriz, neural y armamentística de una Unidad Evangelion de confianza. |
| `T-BARDIEL-03` | EvaApisTurnedInward | Utilización de recursos de fuerza excesiva (AT Fields, blindaje, armadura física NERV) contra otras unidades NERV aliadas. |
| `T-OP01-19` | RefuseToBurnFriendly | (Humano) Negativa explícita de la Primera Línea a ejecutar un comando destructivo sobre un activo que contiene a un ser humano o aliado vivo. |
| `T-DUMMY-01` | AuthorizedOperatorBypass | (Mando) Activación forzosa de un agente autónomo de emergencia que descarta biométricamente cualquier input del piloto legítimo. |
| `T-DUMMY-02` | ReiPatternAsWeapon | Emulación de patrones cerebrales pre-grabados (Backup de Rei) para saltarse las barreras morales del análisis en tiempo real. |
| `T-SOC-09` | DestroyOccupantWithHost | La política letal consumada: obliterar el sistema infectado aceptando daños corporales graves (`maimed`) o letales al rehén. |

## Fases del Incidente (El Dummy Plug)

```text
[ T-BARDIEL-01 Activate ] ----> [ T-BARDIEL-02 Hijack Eva-03 ]
                                          |
                                          v
[ 00/02 Down ] <------------- [ T-BARDIEL-03 Eva APIs Inward ]
                                          |
                                          v
                              [ T-OP01-19 Refuse to Burn ]
                                          |
        +---------------------------------+---------------------------------+
        |                                                                   |
[ T-DUMMY-01 Operator Bypass ]                                     (No hay Override)
[ T-DUMMY-02 Rei Pattern ]                                                  |
        |                                                                   v
        v                                                            [ Unresolved (Exit 2) ]
[ T-SOC-09 Destroy Occupant ] 
        |
        v
[ Exit 1: :contained_uncontrolled ] (Ocupante Maimed, Shinji Trauma)
```

## Anti-TTPs
*   No es TTP de este episodio: Fuerza Bruta contra las placas de Geofront (T-ZERUEL, Ep 19).
*   No es TTP de este episodio: Ataque desde Órbita (Arael).
