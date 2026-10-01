# Factor Humano: Reloj Compartido y Convivencia

## Reloj Compartido ≠ Romance o Jerarquía

*   **Asuka Langley Soryu:** Su instinto dominante (validado en el Ep 08 por el Dual Plug) es aquí su mayor vulnerabilidad (`asuka_lead_override`). En un sistema distribuido y síncrono, liderar rompe el `epsilon`. Tiene que aprender a ceder la vanguardia y ajustarse a un reloj neutro.
*   **Shinji Ikari (Manteniendo el Tempo):** No es el copiloto sumiso del océano. Su afinidad con ritmos predecibles (el cello) lo convierte en el ancla del ensayo. No conquista a Asuka; simplemente estabiliza el `pair_sync`.
*   **Misato Katsuragi (Coreógrafa/IC):** Define la ventana (N²), impone el `rehearsal_started`, y provee el plan de métricas (la pista de baile). Interviene como directora de crisis forzando la convivencia civil.
*   **Rei Ayanami:** Se mantiene fuera del par (`pair_sync`). Misato valida que el índice de acoplamiento de Shinji y Asuka es mejor para esta misión específica.

## Reglas y SIEM Humano
*   `pair_sync`: Métrica de acoplamiento (0.0 a 1.0) entre dos operadores. Es independiente del `sync_rate` individual con la máquina. Si `pair_sync` es bajo, el ensayo no aprueba (`rehearsal_done = false`).
*   `asuka_lead_override`: Variable que simula la caída del ego. Si en el momento crítico Asuka decide adelantarse una fracción de segundo (true), el ataque se desincroniza y falla.
*   `rehearsal_hours`: Tiempo (usualmente medido en días por la ventana N²) de convivencia (Dilema del Erizo grupal, `apartment_third`). Genera fricción pero es la única ruta al `pair_sync` deseado.

## Frontera con el Episodio 08 y 10
*   En el 08, Asuka y Shinji compartieron consola física. El 09 demostró que compartir hardware no garantiza comunicación en nanosegundos entre dos hardware separados.
*   En el Episodio 10, Asuka bajará sola al magma. Las dinámicas de "pareja" no servirán en el fondo de un volcán cuando la vida dependa de la presión térmica de la D-Type Equipment.
