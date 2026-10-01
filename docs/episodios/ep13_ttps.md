# Cadena de Ataque y TTPs de Ireul y el Reverse-Hack

## Lo que no aplica en este incidente
*   **No T-VENDOR / T-NERV-01 (Sabotaje).** Ireul es un ángel biológico, no un competidor enfadado.
*   **No T-OUTAGE / T-INTERCEPT / T-ANALOG.** No hay apagón físico y no hay bomba cayendo del cielo.

## Nuevas TTPs (Infección Lógica / Consenso)

| ID | Táctica / Comportamiento | Descripción |
| :--- | :--- | :--- |
| `T-IREUL-01` | LilliputianInitialAccess | Brecha por contaminación a nivel microscópico en entornos (Sandbox/Pribnow) asumidos como "seguros" por falta de Air-Gap estricto. |
| `T-IREUL-02` | SignatureBurningEvolution | Polimorfismo adaptativo; el atacante usa las contramedidas (Ozono, AV, Láser) como inputs para inmunizarse y escalar. |
| `T-IREUL-03` | ControlPlaneLateral | Movimiento lateral indetectable a nivel perimetral, migrando directamente al clúster de toma de decisiones (MAGI). |
| `T-IREUL-04` | QuorumHijack | Infección de $2/3$ de los nodos (Melchior, Balthasar), asumiendo el control legítimo del *Majority Vote*. |
| `T-MAGI-01` | IsolateInfectedBrain | Desconexión de emergencia del nodo sobreviviente (Casper) para evitar que alcance la mayoría hostil. |
| `T-MAGI-02` | CasperReverseHack | Inyección de un *payload* ofensivo por parte del defensor, utilizando el nodo aislado como puente hacia los infectados. |
| `T-MAGI-03` | ForcedEvolutionDeadEnd | Manipulación del T-IREUL-02; forzar al atacante a mutar tan rápido que agote su diseño biológico, esterilizándolo. |
| `T-OP03-01` | EvaSortieMisapplied | (TTP de FALLO del Defensor). Intentar desplegar hardware bélico pesado contra una amenaza de capa lógica/software. |

## Fases del Incidente (El Fantasma en el Silicio)

```text
[ T-IREUL-01 Initial Access (Pribnow Box) ]
                        |
                        v
    [ T-IREUL-02 Evoluciona a defensas básicas ]
                        |
                        v
     [ T-IREUL-03 Lateral Movement a MAGI ]
                        |
                        v
      [ T-IREUL-04 Quorum Hijack (Melchior, Balt) ]
                        |
            +-----------+-----------+
            |                       |
      T-OP03-01 Eva Sortie    T-MAGI-01 Aísla a Casper
            |                       |
            v                       v
     [ self_destruct /     [ T-MAGI-02 Casper Reverse-Hack ]
       MAGI destruida ]             |
            |                       v
            v              [ T-MAGI-03 Forced Evolution ]
      [ UNRESOLVED ]                |
                                    v
                             [ dead_end_reached ]
                                    |
                                    v
                      [ SUCCESS: :contained_controlled ]
```

## Anti-TTPs
*   **No es TTP de este episodio:** Cinética orbital (Ep 12) ni contraseña de Jet Alone (Ep 07).
*   **No es TTP de este episodio:** El parásito en el Plug/Eva-03 (Eso será Bardiel, Ep 18).
