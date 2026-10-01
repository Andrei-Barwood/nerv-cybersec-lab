# Superficie de Detección: El Ojo de MAGI en la Órbita

## Detección Diferencial: Visibilidad Perfecta, Peligro Perfecto
En el episodio anterior (11), el defensor sufría porque las herramientas estaban mudas. Aquí, en el 12, el defensor sufre de pavor ante la claridad de la información. El SIEM (MAGI) funciona a la perfección. Entrega un ETA absoluto y pinta en rojo el área de devastación esperada. Las alarmas convencionales de seguridad perimetral (`missiles_rebuffed`) solo añaden a la frustración de que "verlo" no equivale a "detenerlo".

## Ids de SIEM Obligatorios

*   `siem.pattern_blue`: Alarma genérica de ángel, confirmada.
*   `siem.orbital_contact`: Nueva detección de origen espacial. La amenaza existe fuera de las jurisdicciones clásicas.
*   `siem.missiles_rebuffed`: Confirmación de que las defensas tradicionales de firewall IPS/WAF de Nivel 4 (ONU) no hacen ni mella en la capa 7 (AT Field).
*   `siem.magi_impact_predict`: MAGI calcula y comunica la métrica crítica de la intercepción (la coordenada).
*   `siem.impact_eta`: Valor derivado de la predicción (El Countdown).
*   `siem.impact_progress`: Valor numérico (0.0 a 1.0). El proyectil acortando la distancia.
*   `siem.triple_at_brake`: Validación de que la orquestación humana (3 Evas) cumplió la matriz geométrica del colchón ($n=3$).
*   `siem.intercept_ok`: El payload fue atajado cinéticamente sin tocar el núcleo de Tokio-3.
*   `siem.core_destroyed`: Se reutiliza el ID, vía el puñal en el aire (`InFlightCoreKill`).
*   `siem.city_destroyed`: Emisión catastrófica. La base de operaciones fue aniquilada.
*   `siem.praise_seeking`: Emisión de telemetría de comportamiento psicológico, ignorada por el *ContainmentResult*.

## Falsos Positivos y Anti-Métricas
*   **Falso Positivo:** "Si la bomba no ha tocado mi Geofront (no ha aterrizado), todavía no es un problema P1." Ignorar amenazas `in-flight` es garantizar el `city_destroyed`.
*   **Anti-Métrica:** Evaluar los misiles lanzados (`missiles_rebuffed`) como un indicador de esfuerzo válido ("Al menos hicimos algo"). Los misiles contra Sahaquiel gastan log-space sin reducir el impacto.
*   **Anti-Métrica:** Considerar a MAGI infectado por tener "demasiada visibilidad" de la destrucción inminente. La clarividencia del desastre es higiene, no un síntoma de *Ireul*.
