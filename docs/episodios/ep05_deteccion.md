# Superficie de Detección: Ver la fortaleza y no poder tocarla

## Ver no es mitigar
Detectar a Ramiel es extremadamente fácil debido a su tamaño masivo y su inactividad de movimiento. Sin embargo, en un escenario de asedio con Active Denial, la visibilidad total no garantiza la capacidad de respuesta. El SIEM de NERV registrará todos los pasos de su propia derrota, desde el lanzamiento en vano hasta el avance progresivo del taladro hacia sus servidores centrales.

## Ids de SIEM Obligatorios

*   `siem.pattern_blue` (Heredado. Identificación de la composición de onda)
*   `siem.geometric_fortress`: Clasificación de la amenaza como instalación inamovible.
*   `siem.kill_zone_active`: El perímetro de disparo está en línea.
*   `siem.particle_beam`: Disparo del arma de energía de Ramiel.
*   `siem.eva_melted`: Daño catastrófico por calor a la unidad 01.
*   `siem.close_range_contraindicated`: El sistema marca formalmente que el acercamiento físico es un vector de muerte.
*   `siem.drill_started`: El taladro tocó el blindaje exterior de Tokyo-3.
*   `siem.drill_progress`: (Métrica numérica continua) Progreso del taladro.
*   `siem.core_not_observable`: No hay un blanco claro.
*   `siem.standoff_capability_missing`: Alerta de infraestructura (NERV carece del rango para responder).
*   `siem.operator_opaque`: Señal de roster relacionada con Rei Ayanami. Su estado humano no es legible para sus compañeros. (Ojo: NO es una señal de ángel).

## Falsos Positivos y Anti-Métricas
*   **Falso Positivo:** "Si no camina, la amenaza está contenida." El inmovilismo de Ramiel es una postura ofensiva de asedio, no inactividad.
*   **Anti-Métrica:** Evaluar el éxito por "haber desplegado el Eva-01 rápidamente". Enviar un activo directo a una kill zone sin standoff es negligencia táctica, no velocidad operativa.
