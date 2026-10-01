# Cadena de Ataque y TTPs del Francotirador

## Lo que no aplica en este incidente
*   Tácticas de Sachiel y Shamshel (`T-SACHIEL-*`, `T-SHAMSHEL-*`).
*   Tácticas operativas ofensivas previas: `T-OP01-03 ProgressiveKnifeCore` queda oficialmente **contraindicada** por su índice del 100% de mortalidad en la Kill Zone.
*   El Episodio 05 **no** utiliza a Rei como TTP; ella es una operadora, no un ángel.

## Nuevas TTPs (Ofensivas de Ramiel y Defensivas del Operador)

| ID | Táctica / Comportamiento | Descripción |
| :--- | :--- | :--- |
| `T-RAMIEL-01` | GeometricFortress | El atacante emplea simetría perfecta, ocultando debilidades, puntos ciegos o core interno. |
| `T-RAMIEL-02` | MaxATField | Generación de una barrera defensiva absoluta que aísla de interacciones cinéticas. |
| `T-RAMIEL-03` | ParticleKillZone | Sistema IPS activo (francotirador) que destruye cualquier amenaza en línea de visión (LoS) de manera casi inmediata. |
| `T-RAMIEL-04` | InternalCore | Ocultamiento del punto único de fallo/derrota bajo capas de geometría. |
| `T-RAMIEL-05` | CrownJewelDrill | Ejecución de un asedio físico lento y persistente directo al centro de la infraestructura (GeoFront). |
| `T-OP01-08` | CloseRangeReapplied | (Fallo Táctico Humano). Reaplicar ciegamente la táctica del éxito anterior asumiendo la misma morfología enemiga. |
| `T-OP01-09` | SortieMelted | (Consecuencia). Resultar en daños críticos o incineración del hardware y operador por ignorar la Kill Zone. |
| `T-OP01-10` | EmergencyEject | Abortar el despliegue desconectando la unidad del frente. Fue la única decisión defensiva exitosa que evitó la muerte total. |

## Fases del Incidente (El Fracaso Inicial)

```text
[ T-RAMIEL-01 GeometricFortress ] ---> [ T-RAMIEL-02 MaxATField ]
                                            |
                                            v
                                 [ T-RAMIEL-03 ParticleKillZone ]
                                            |
                                            v
                        [ T-OP01-08 CloseRangeReapplied (Lanzamiento) ]
                                            |
                                            v
                                 [ T-OP01-09 SortieMelted ]
                                            |
                                            v
                            [ T-OP01-10 EmergencyEject (Aborto) ]
                                            |
                                            v
                                [ T-RAMIEL-05 CrownJewelDrill ]
                                            |
                                            v
                                [ RESULTADO: :unresolved ]
```

## Anti-TTPs
*   **No es TTP de Ramiel:** Disparar a ciegas para causar terror (es un francotirador reactivo/geométrico, no caótico).
*   **No es TTP de NERV (aún):** Operación Yashima (rifle de positrones, escudo con Rei, sobrecarga nacional). Todo eso es planificación futura, no una táctica ejecutada en el Episodio 05.
