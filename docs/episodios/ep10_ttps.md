# Cadena de Ataque y TTPs del Embrión en el Magma

## Lo que no aplica en este incidente
*   **No se reabren T-SYNC ni T-YASHIMA ni T-OP02 DualPlug.**
*   No hay split (israfel) ni mandíbulas cerradas (gaghiel) ni escudos abrasivos. El medio ambiente reemplaza las tácticas biológicas complejas.

## Nuevas TTPs (Hunt y Entorno Hostil)

| ID | Táctica / Comportamiento | Descripción |
| :--- | :--- | :--- |
| `T-SANDALPHON-01` | EmbryonicPresence | Existencia en fase fetal. Poca visibilidad, nulo comportamiento ofensivo inicial, dificultando su perfilamiento. |
| `T-SANDALPHON-02` | HatchUnderObservation | Aceleración del ciclo de nacimiento como respuesta al encapsulamiento/investigación. |
| `T-SANDALPHON-03` | HostileMediumSymbiosis | Utilización pasiva de un entorno letal para el defensor (Magma) como escudo y vector de desgaste térmico. |
| `T-HUNT-01` | MagmaDwell | Necesidad obligada del defensor de operar con un budget temporal finito y agresivo de refrigeración térmica. |
| `T-HUNT-02` | LiveSampleGreed | Riesgo auto-impuesto por la organización (Ritsuko) de posponer una neutralización letal en pro de la obtención de inteligencia pura. |
| `T-HUNT-03` | AbortToKill | Procedimiento de quiebre de cristal (Break-glass); desautorizar objetivos científicos para volver a la contención biológica letal antes del límite de SLA. |
| `T-OP01-14` | SupportRescueNotMirror | Rol del Eva-01: No como atacante paralelo o espejo, sino como nodo de infraestructura / salvavidas puramente utilitario al diver principal. |

## Fases del Incidente (Magma Diver)

```text
[ T-SANDALPHON-01 Embryonic Presence (Magma) ]
                        |
                        v
          [ T-HUNT-01 MagmaDwell (Eva-02 Dive) ]
                        |
                        v
          [ T-HUNT-02 LiveSampleGreed (Capture Cage) ]
                        |
                        v
    [ T-SANDALPHON-02 HatchUnderObservation (hatch_progress++) ]
                        |
            +-----------+-----------+
            |                       |
      No hay Abort            T-HUNT-03 AbortToKill
            |                       |
            v                       v
      [ Hatch == 1.0 ]      [ ProgressiveKnife Strike ]
      [ Adult Angel! ]      [ Embryo Destroyed ]
            |                       |
            v                       v
      [ UNRESOLVED ]        [ T-OP01-14 SupportRescue ]
                                    |
                                    v
                       [ SUCCESS: :contained_controlled ]
```

## Anti-TTPs
*   **No es TTP de este episodio:** Hackeo y desestabilización eléctrica de NERV (Ep 11, apagón de Matarael).
*   **No es TTP de este episodio:** Asimilación psicológica o ataque al ego (Episodios posteriores).
