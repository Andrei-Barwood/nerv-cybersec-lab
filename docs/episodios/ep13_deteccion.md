# Superficie de Detección: El Consenso Miente

## Detección Diferencial: El Radar de Cielo Está Aburrido
Si configuras tu SOC para buscar Kaijus cayendo del cielo (`orbital_contact`) o apagones (`hq_power_lost`), Ireul tomará control absoluto en silencio. El SIEM útil de NERV ahora no es el radar perimetral de Misato; son los logs internos de auditoría de MAGI de Ritsuko. Un Pattern Blue no asume un tamaño (puede ser nano/micro). 

## Ids de SIEM Obligatorios

*   `siem.pattern_blue_micro`: Emisión de alerta de amenaza (Ángel) basada en la lectura del AT Field microscópico, no visual.
*   `siem.pribnow_contaminant`: Detección inicial (First-Seen falso positivo) de "óxido" o material extraño en un área restringida.
*   `siem.signature_failed`: Alerta recurrente del IPS de NERV. Aplicar Ozono/Láser falló porque el atacante mutó en tiempo real.
*   `siem.ireul_evolved`: Notificación de que el polimorfismo ha superado un nivel de contención.
*   `siem.magi_brain_infected`: Emisión crítica por nodo de control que deja de responder a comandos legítimos (ej: "melchior").
*   `siem.majority_owner`: El SIEM declara públicamente quién controla el HQ (`:nerv`, `:ireul`, `:split`).
*   `siem.self_destruct_armed`: El sistema de autodestrucción ha sido invocado. El "Impact Clock" logístico de este incidente.
*   `siem.casper_reverse_hack`: Evento defensivo de Ritsuko empujando código a través del último nodo leal.
*   `siem.evolution_dead_end`: Confirmación de la muerte lógica del atacante (Neutralizado/Estéril).
*   `siem.eva_sortie_misapplied`: Emisión de error de mando (T-OP03-01). Enviar el Eva contra esto.

## Falsos Positivos y Anti-Métricas
*   **Falso Positivo:** "Solo es un contaminante químico de mantenimiento". (Se descarta con `pattern_blue_micro`).
*   **Anti-Métrica:** "El perímetro y los cielos de Tokio-3 están despejados, no es P1".
*   **Métrica Diferencial:** `magi_infected` y `majority_owner` difieren tajantemente de `magi_unpowered` (Ep 11) o de un MAGI obediente emitiendo un `compute_impact` (Ep 12).
