# Cadena de Ataque y TTPs de Fusión y Clones

## El Salto y el Wipe

| ID | Táctica / Comportamiento | Descripción |
| :--- | :--- | :--- |
| `T-ARMISAEL-01` | HelixForm | Comportamiento inicial del payload: una forma estructural flexible que evita daños de choque para facilitar la inyección limpia. |
| `T-ARMISAEL-02` | FuseWithDefender| El malware no corrompe el sistema, lo integra. El adversario asimila la lógica del host y opera de manera conjunta (fusión de identidades). |
| `T-ARMISAEL-03` | LateralToNextEva| Intento de salto lateral usando la confianza de red del host comprometido (Eva-00) para invadir el nodo crítico (Eva-01) sin ser bloqueado. |
| `T-NODE-01` | ConsensualSelfDestruct| Método defensivo extremo: el operador del nodo infectado ejecuta su propia purga (Autodestrucción) antes de que el ataque lateral alcance su objetivo. |
| `T-CLONE-01` | HumanDisasterRecovery| Uso de granjas de entidades idénticas (Clone Tank) mantenidas en éstasis como infraestructura de reemplazo hardware para el sistema A10. |
| `T-CLONE-02` | RestoreIncompleteIdentity| Confirmación de que el *restore* de un operador (Rei III) jamás incluye el 100% de los datos de estado en RAM ni la experiencia emocional del nodo destruido (Rei II). |
| `T-OP00-01` | ReiIINodeSacrifice| Métrica específica: Rei II elige su fin por voluntad, lo que frena a Armisael. |
| `T-OP00-02` | ReiIIINotReiII | Diferenciación estricta de las variables; el script debe impedir que `ReiII == ReiIII`. |

## Fases del Incidente (El Worm Lateral)

```text
[ T-ARMISAEL-01 Hélice intercepta Eva-00 ]
        |
        v
[ T-ARMISAEL-02 Fusión en Proceso (Voces cruzadas) ]
        |
        v
[ T-ARMISAEL-03 Lateral Threat a Shinji (Eva-01) ]
        |
        +-- (Si no hay sacrificio) ---> [ Fallo: Exit 2 (Unresolved) ]
        |
        v
[ T-NODE-01 & T-OP00-01 Sacrificio Consentido (Eva-00 Detonado) ]
        |
        v
[ Arael Muerto (Exit 0 Asegurado, pero...) ]
        |
        v
[ T-CLONE-01 Gendo inicializa el DR desde el Clone Tank ]
        |
        v
[ T-CLONE-02 & T-OP00-02 Rei III Boot (Identity Mismatch) ]
```

## Anti-TTPs
*   No es TTP de este episodio: Infección vía parásito mecánico (`T-BARDIEL-02`). Armisael funde mentes, Bardiel movía extremidades.
*   No es TTP de este episodio: *Spear-Phishing* a distancia (`T-ARAEL-02`). 
*   Se hereda del 22: Asuka sigue fuera de combate (`T-OP02-04 PsycheBroken`).
