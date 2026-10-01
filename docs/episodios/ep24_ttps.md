# Cadena de Ataque y TTPs del Último Mensajero

## El Pase VIP y el Aborto del Payload

| ID | Táctica / Comportamiento | Descripción |
| :--- | :--- | :--- |
| `T-TABRIS-01` | HumanShapedAngel | Adversario que emula la forma humana perfecta, evadiendo firmas visuales o de radar destinadas a entidades a gran escala (kaijus). |
| `T-TABRIS-02` | FifthChildBadge | Obtención y explotación de credenciales legítimas emitidas por la capa corporativa superior (Seele) para vulnerar la capa operativa (NERV). |
| `T-TABRIS-03` | WalkToRootOfTrust | Descenso táctico y pacífico hacia el recurso más protegido (Terminal Dogma) sin disparar alarmas cinéticas previas. |
| `T-TABRIS-04` | FreeWillAbort | La cancelación voluntaria de la cadena de impacto final (merge) por parte del actor de amenaza, demostrando libre albedrío frente a su directiva original. |
| `T-INSIDER-01` | InvitedByLoneliness| Explotación de la Vulnerabilidad de Soledad del operador (CVE del Ep 15 y 23) para establecer un puente de confianza social (`trust_channel`). |
| `T-OP01-23` | RevokeTheFriend | El requerimiento operativo indispensable de que la mitigación final (`crush`) sea ejecutada manualmente por el operador comprometido (Shinji), prohibiendo la automatización. |
| `T-SEELE-04` | FifthChildAsPayload| El acto deliberado del alto mando de enviar la amenaza final envuelta en un paquete de refacción humana. |

## Fases del Incidente (El Insider)

```text
[ T-SEELE-04 + T-TABRIS-02 Alta del 5th Child ]
        |
        v
[ T-TABRIS-01 MAGI no ve un kaiju ]
        |
        v
[ T-INSIDER-01 Shinji confía (Baños/Piano) ]
        |
        v
[ T-TABRIS-03 Descenso a Terminal Dogma con Eva-02 ]
        |
        v
[ Target Confusion: Es Lilith, no Adam ]
        |
        +-- (Si completa) ---> [ Fallo: Exit 2 (Third Impact Risk) ]
        |
        v
[ T-TABRIS-04 Kaworu aborta el Merge (Free Will) ]
        |
        v
[ T-OP01-23 Shinji ejecuta Crush (Manual Input) ]
        |
        v
[ Tabris Muerto (Exit 0 Asegurado, Shinji Roto) ]
```

## Anti-TTPs
*   No es TTP de este episodio: Ataques mecánicos de parásito (`T-BARDIEL-02`), asimilaciones biológicas directas (`T-ARMISAEL-02`), o ataques de francotirador (`T-ARAEL-02`).
*   No es TTP de este episodio: Disparar el Tercer Impacto. (Esa será la deuda técnica pendiente para el fin de la serie).
