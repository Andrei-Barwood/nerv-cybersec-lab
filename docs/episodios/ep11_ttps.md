# Cadena de Ataque y TTPs del Apagón Compuesto

## Lo que no aplica en este incidente
*   **No T-SYNC ni T-HUNT ni T-YASHIMA ni T-RAMIEL.**
*   No hay T-IREUL (el apagón de este episodio es de red física, no un hackeo lógico o infección de MAGI). 

## Nuevas TTPs (Outage y Oportunista)

| ID | Táctica / Comportamiento | Descripción |
| :--- | :--- | :--- |
| `T-OUTAGE-01` | ControlPlaneDown | El entorno del defensor pierde acceso total a la orquestación (MAGI), consolas y automatización. |
| `T-OUTAGE-02` | BlindSoc | Pérdida de visibilidad perimetral y telemetría de red; el SOC opera a ciegas. |
| `T-OUTAGE-03` | LaunchPathSeized | Los accesos automatizados (ascensores, jaulas electromagnéticas) se bloquean en modo `fail-secure` o cerrado. |
| `T-MATARAEL-01` | OpportunisticArrival | Un atacante exterior aprovecha el instante de máxima debilidad infraestructural (apagón) para penetrar sin oposición. |
| `T-MATARAEL-02` | AcidThroughLayers | Corrosión vertical lenta (`acid_progress`) que funde las capas de defensa en profundidad debido a la inacción del defensor. |
| `T-ANALOG-01` | ManualEvaLaunch | Uso de *bypass* manuales, llaves de emergencia y fuerza bruta (motores diésel/humanos) para forzar el despliegue (Analog Launch). |
| `T-ANALOG-02` | CombinedSortieNoEpsilon | Ejecución de un asalto conjunto a fuego cruzado (00, 01, 02) sin requerir cronómetros milimétricos ni telemetría compartida (Epsilon). |

## Fases del Incidente (Compound)

```text
[ T-OUTAGE-01 Control Plane Down (MAGI OFF) ]
                        |
                        v
    [ T-OUTAGE-02 BlindSoc (hq_power = false) ]
                        |
                        v
      [ T-MATARAEL-01 Opportunistic Arrival ]
                        |
                        v
        [ T-MATARAEL-02 AcidThroughLayers ]
                        |
            +-----------+-----------+
            |                       |
      Wait for MAGI        T-ANALOG-01 ManualEvaLaunch
            |                       |
            v                       v
      [ Acid == 1.0 ]      [ T-ANALOG-02 CombinedSortie ]
      [ Geofront Melt ]             |
            |                       v
            v               [ Core Destroyed ]
      [ UNRESOLVED ]                |
                                    v
                           [ SUCCESS: :contained_controlled ]
                                    |
                                    v
                          ( [ power_restored ] opcional )
```

## Anti-TTPs
*   **No es TTP de este episodio:** Infección viral de hardware local (Ep 13, Ireul).
*   **No es TTP de este episodio:** Francotirador orbital que usa AT Field como bomba cinética (Ep 12, Sahaquiel).
