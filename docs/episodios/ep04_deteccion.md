# Superficie de Detección: El SIEM de las Personas

## Detectar el Silencio
Los eventos de los episodios 01 al 03 medían el cielo, buscando el inminente acercamiento de una amenaza. En este episodio, el SIEM mira al propio roster. La ausencia de comunicación y el incumplimiento de la presencia en el puesto de trabajo son los indicadores críticos. NERV detecta la fuga demasiado tarde, clasificándola inicialmente como un problema de disciplina en lugar de una caída total del servicio.

## Ids de SIEM Obligatorios

*   `siem.callback_absent` (Heredado de ep 03)
*   `siem.operator_awol`: El operador ha desertado de su puesto sin permiso oficial.
*   `siem.hedgehog_too_close`: El operador sufre daños por extrema proximidad con mandos / civiles.
*   `siem.hedgehog_too_far`: Aislamiento en el tren, sin canales de comunicación.
*   `siem.replace_with_backup_proposed`: Liderazgo sugiere utilizar piezas de recambio (Rei) para parchear la fuga.
*   `siem.backup_used_as_leverage`: Se amenaza u obliga al principal usando el sufrimiento del backup como palanca.
*   `siem.capacity_actual_zero`: El nodo primario está apagado; el Eva está listo, pero el operador no.
*   `siem.operator_returned`: El operador fue escoltado/vuelto al perímetro.
*   `siem.im_home`: Evento de cierre (`Tadaima`), confirmando retorno voluntario.
*   `siem.staffing_fragile`: El estado queda retenido pero sin solución definitiva de raíz.

## Falsos Positivos y Anti-Métricas
*   **Falso Positivo:** "Está de mal humor" o "ya se le pasará". Minimizar el `AWOL` y `hedgehog_too_far` asumiéndolos como caprichos adolescentes ignora que la capacidad del sistema de defensa de la humanidad es literalmente cero en ese momento.
*   **Anti-métrica:** Cerrar el ticket asumiendo que "Rei puede pilotar". Asignar el sistema a una secundaria severamente herida no es una solución sostenible, es negligencia.
