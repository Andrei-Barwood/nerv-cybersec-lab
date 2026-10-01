# Superficie de Detección: El SIEM a Linternazos

## Detección Diferencial: El SIEM que "No Pinta"
Si el SIEM principal (MAGI) cae por un `hq_power_lost`, el defensor no puede esperar a que aparezca un ticket rojo. La detección debe fluir por canales de respaldo rudimentarios (*runners*, laptops a batería de Aoba, reportes visuales). Una señal `pattern_blue_degraded` representa una detección parcial, sin la fidelidad criptográfica o volumétrica usual.

## Ids de SIEM Obligatorios

*   `siem.hq_power_lost`: La alarma principal de la infraestructura. El cuartel general queda offline.
*   `siem.magi_unpowered`: La supercomputadora pierde energía y es incapaz de emitir un *majority-vote*.
*   `siem.analog_mode`: El puente de mando transiciona a usar recursos físicos (humanos, papel, baterías).
*   `siem.human_runner_report`: La alerta de un humano reportando visualmente un problema.
*   `siem.pattern_blue_degraded`: Identificación parcial del ángel sin la telemetría perimetral completa.
*   `siem.acid_progress`: Un valor que sube indicando las placas de blindaje disueltas (`0.0` a `1.0`).
*   `siem.analog_launch`: Registro del despliegue exitoso mediante el `ManualEvaLaunch` (bypassing MAGI).
*   `siem.combined_sortie`: El asalto de las tres unidades juntas, sin sofisticación ni *pair_sync*.
*   `siem.core_destroyed`: Se reutiliza el ID, pero ejecutado por los vectores analógicos.
*   `siem.power_restored`: (Opcional en la evaluación de kill, pero emitido al final) La luz vuelve.

## Falsos Positivos y Anti-Métricas
*   **Falso Positivo:** "MAGI no detecta nada, ergo no estamos bajo ataque." Un SIEM ciego no garantiza la paz perimetral.
*   **Anti-Métrica:** `power_restored == Incidente Cerrado`. Devolver la luz no repara el blindaje que Matarael disolvió. La victoria se define por la muerte del ángel, no por el uptime de la lámpara.
*   **Anti-Métrica:** Exigir `rehearsal_done` o un epsilon bajo (Ep 09) en un entorno que carece por completo de cronómetros electrónicos y visibilidad compartida.
