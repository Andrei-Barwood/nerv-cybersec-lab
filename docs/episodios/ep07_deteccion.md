# Superficie de Detección: Producto, no Cielo

## El SIEM Industrial
A diferencia de los eventos adámicos anteriores, el SOC debe adaptarse a procesar telemetría de una falla de producto industrial. Buscar un `pattern_blue` en un robot de acero es un error de miopía organizativa. NERV debe mirar la cadena de suministro y el plano de control. El hallazgo sucio y final es admitir en los logs que la amenaza provino desde dentro.

## Ids de SIEM Obligatorios

*   `siem.vendor_demo`: Inicio del evento público.
*   `siem.remote_kill_failed`: El panel de control del vendor pierde autoridad.
*   `siem.autonomy_runaway`: El activo actúa por su cuenta, ignorando restricciones.
*   `siem.nuclear_progress`: (Valor numérico) Avance del sobrecalentamiento del reactor.
*   `siem.physical_access_vendor`: Los operadores (Misato) abordan físicamente el activo de terceros.
*   `siem.on_box_password`: Introducción exitosa del código local.
*   `siem.vendor_stopped`: El robot/reactor es detenido.
*   `siem.virus_detected`: Detección de software malicioso.
*   `siem.virus_origin_nerv`: **CRÍTICO**. Registro de que el malware fue inyectado por la propia organización defensora.
*   `siem.misclassified_as_angel`: Error táctico evitable. Emite cuando el SOC ordena ataques convencionales contra la máquina civil.

## Lo que NO debe emitirse
*   `siem.pattern_blue`: Un robot metálico no posee longitud de onda de sangre azul.
*   `siem.geometric_fortress`: No tiene relación con Ramiel.

## Falsos Positivos y Anti-Métricas
*   **Falso Positivo:** "Objeto gigante moviéndose = Ángel." Este sesgo cognitivo puede provocar una explosión nuclear si se despliega un Evangelion a pelear.
*   **Anti-Métrica:** Evaluar que "El mercado rechazó Jet Alone" como un éxito. Esto valida la `T-NERV-02 FalseMarketDecision`. El incidente fue un trabajo interno, y celebrarlo como una victoria natural es corrupción.

## Reloj Nuclear vs Tiempo de Trepar
El `nuclear_progress` avanza. A diferencia del taladro de Ramiel (Ep 05), aquí el objetivo no es preparar un láser a kilómetros de distancia, sino ganar acceso físico (`physical_access_vendor`) y teclear la contraseña antes de que el indicador llegue a `1.0`.
