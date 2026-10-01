# Cadena de Ataque y TTPs de la Caída y el Intercept

## Lo que no aplica en este incidente
*   **No T-ANALOG ni T-YASHIMA ni T-SYNC ni T-RAMIEL.**
*   No hay T-IREUL (MAGI hace predicción de trayectoria exitosa, no es el paciente enfermo). 

## Nuevas TTPs (Orbital y Cinético)

| ID | Táctica / Comportamiento | Descripción |
| :--- | :--- | :--- |
| `T-SAHAQUIEL-01` | ExoPerimeterPresence | Ubicación original de la amenaza fuera de la red/espacio controlable (Órbita), impidiendo ataques directos iniciales. |
| `T-SAHAQUIEL-02` | KineticSelfPayload | Utilización del propio cuerpo de la entidad como bomba de masa para generar un evento terminal sin ataque prolongado. |
| `T-SAHAQUIEL-03` | AtFieldVsMissiles | Descarte trivial de los esfuerzos preventivos convencionales (misiles/IPS regulares) a través de escudos perimetrales masivos. |
| `T-INTERCEPT-01` | MagiImpactPredict | El plano de control de NERV (MAGI) calcula y traza la ventana de *catch* (ETA y Coordenadas). |
| `T-INTERCEPT-02` | TripleAtFieldBrake | Configuración geométrica defensiva ($n=3$) para aplicar fricción y amortiguación a una masa que colapsaría un solo nodo. |
| `T-INTERCEPT-03` | InFlightCoreKill | Penetración física del núcleo adversario mientras se sostiene la mitigación cinética (Intercepción antes de tocar tierra). |
| `T-OP01-15` | PraiseSeekingAfterCatch | Comportamiento post-incidente del humano: el operario (Shinji) asimila la mitigación como una validación emocional hacia el mando (Gendo), pero no impacta la resolución de contención. |

## Fases del Incidente (El Cielo Caen)

```text
[ T-SAHAQUIEL-01 ExoPerimeterPresence ]
                        |
                        v
 [ T-SAHAQUIEL-03 Misiles de la ONU Fallan ]
                        |
                        v
     [ T-SAHAQUIEL-02 KineticSelfPayload ]
             ( impact_progress inicia )
                        |
                        v
         [ T-INTERCEPT-01 MagiPredict ETA ]
                        |
            +-----------+-----------+
            |                       |
      Solo 1 Eva o Melee    T-INTERCEPT-02 TripleAtFieldBrake
            |                       |
            v                       v
      [ Impact == 1.0 ]     [ T-INTERCEPT-03 InFlightCoreKill ]
      [ city_destroyed ]            |
            |                       v
            v               [ Core Destroyed ]
      [ UNRESOLVED ]                |
                                    v
                           [ SUCCESS: :contained_controlled ]
                                    |
                                    v
                          ( [ T-OP01-15 PraiseSeeking ] )
```

## Anti-TTPs
*   **No es TTP de este episodio:** Ácido en la puerta del sótano (Ep 11, Matarael).
*   **No es TTP de este episodio:** Infección local del firmware y hardware de MAGI (Ep 13, Ireul).
