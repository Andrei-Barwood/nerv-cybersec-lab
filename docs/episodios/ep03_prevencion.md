# Controles Preventivos: Alcance y Segmentación

## Preventivo vs. Solo Mitigable

| Controles PREVENIBLES (Antes del incidente) | Controles SOLO MITIGABLES (Durante el incidente) |
| :--- | :--- |
| **Segmentación de Red Urbana:** Evitar que un único canal (látigo) atraviese recursos críticos interconectados sin barreras intermedias. | **Uso del Cuchillo Progresivo:** Herramienta de mitigación final de distancia cero que solo se emplea en combate cercano. |
| **Cordón de Incidente Civil:** Establecer controles perimetrales estrictos para evitar observadores (turismo de desastres / shadow IT). | **Cortar el Enlace Activo:** El acto físico de hacer "Sever" cuando el C2 ya está inyectando tráfico/daño. |
| **Entrenamiento Pre-Vuelo en C2:** Asegurar que el operador entienda la diferencia entre fuerza bruta (rifle) y disección de canales (cuchillo) antes del first-seen. | |
| **Preparación de la Red Receptora (Escuela):** Informar/preparar a la LAN civil sobre los riesgos residuales de albergar al on-call de incidentes, reduciendo el acoso. | |
| **Auditoría de Arsenal:** No aprobar armas masivas irrelevantes (Pallet Rifle) como solución para amenazas de precisión. | |

## Anti-patrones de Prevención
1. **Beast-as-plan:** Pensar que "en el 02 despertó, despertará otra vez" es un control preventivo, cuando en realidad es la ausencia total de control.
2. **Rifle-as-sever:** Creer que saturar el área con balas cortará el enlace.
3. **El público ya vio, que se queden a mirar:** Relajar el control civil asumiendo que el pánico pasado ya no importa.

## Higiene de C2 (Aplicación directa a beacons y callbacks)
* Identificar el canal de salida, no solo la persistencia local.
* Asumir que el atacante usará C2 que simula tráfico normal (en este caso, alcance sin movimiento del core).
* El ruido cinético (rifles, escaneos masivos) no cierra un beacon persistente.
* Bloquear (sever) el C2 en el perímetro (cuchillo/firewall).
* Seguir la cadena hasta el core local y aislarlo (`CoreStrike`).
* Retener artefactos (cadáver) en lugar de detonarlos, para intel futuro.
* Analizar qué observadores presenciaron el tráfico del C2.

## Nota sobre la Escuela (Transferencia)
Transferir al operador de NERV (on-call de seguridad) a una red civil (escuela regular) sin realizar un briefing o preparar controles es una imprudencia que amplía la superficie de ataque social. Genera conflictos de convivencia, como el puñetazo de Toji.
