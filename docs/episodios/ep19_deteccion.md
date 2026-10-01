# Superficie de Detección: El Dummy Falla, el Eva Traga

## Detección del Overwhelm
El SIEM no marca sutilezas. Marca cómo caen las defensas una tras otra hasta que el Eva-01 se quita todos los límites y asimila la red enemiga y al propio administrador.

## Ids de SIEM Obligatorios

*   `siem.pattern_blue=overwhelm`: Confirmación de amenaza física masiva que excede los parámetros estándar de defensa.
*   `siem.armor_stripped`: Eva-02 ha sido comprometido más allá de su capacidad de combate (brazos y armadura removidos).
*   `siem.n2_suicide_failed`: La maniobra de sacrificio de Eva-00 ejecutó un log, pero el enemigo no murió.
*   `siem.dummy_failed`: CRÍTICO. El override de root (Gendo) tiró un *timeout* o fue rechazado por el propio Eva. La IA corporativa falló.
*   `siem.operator_late_sortie`: Shinji inició sesión (`login`) en medio del desastre operativo.
*   `siem.eva_berserk`: Unidad 01 operando sin energía, fuera del control humano. (Reuso de flag).
*   `siem.s2_ingested`: Anomalía arquitectónica severa: El Eva-01 ha integrado un motor de energía ajeno (S2) al repositorio propio.
*   `siem.operator_introjected`: Alerta bio-métrica. El piloto ya no se lee como entidad separada; se lee como parte de la memoria y el hardware de la Unidad.
*   `siem.plug_empty`: La telemetría visual de Misato/Ritsuko. El `Entry Plug` ya no tiene un operador adentro, solo líquido (LCL).

## Falsos Positivos y Anti-Métricas
*   **Falso Positivo:** "La unidad 01 está actualizando sus dependencias" (Asumir S2 Ingest como un update rutinario, cuando es un bypass total al mecanismo de control - umbilical - de NERV).
*   **Anti-Métrica:** `dummy_engaged = contained` (Asumir que apretar el botón de la IA resuelve el ticket, como pasó engañosamente en el Ep 18. Aquí el Dummy Plug *tiene que fallar* explícitamente y ser `dummy_failed`).
