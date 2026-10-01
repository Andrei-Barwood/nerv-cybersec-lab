# Recreación de Aparición: El Activo que nos Traicionó

## Minuto Cero y First-Seen de Seguridad

| Escena (Minuto Cero) | First-Seen de Seguridad (IoC de Lab) |
| :--- | :--- |
| **El Desastre de Matsushiro:** Inicia la prueba de encendido de la Unidad-03. Al cruzar el umbral de sincronización biológica, la unidad rechaza el protocolo de eyección. Un crecimiento viscoso, blanquecino, estalla alrededor del plug de Toji. El Eva-03 emite un Patrón Azul, desintegra la base de Matsushiro con una explosión termonuclear contenida y avanza hacia Tokio-3. No es un monstruo externo, es nuestra propia máquina deformada. Eva-00 es incapacitado inmediatamente (intenta un ataque a corta distancia y el parásito contamina su brazo). Eva-02 es partido en dos sin esfuerzo. Shinji se enfrenta al Eva-03. Gendo ordena "Destrúyelo". Shinji grita "No, hay un niño dentro". Gendo corta la comunicación, teclea en su panel y los ojos del Eva-01 cambian. La unidad se mueve sola, despedaza al Eva-03, y bajo las propias manos de Shinji, aplasta el Entry Plug de Toji. | **Host Managed Beaconing como Amenaza:** El troyano durmiente de cadena de suministro del Episodio 17 (`dormant_contaminant_sealed`) cambió a `hitchhiker_activated`. El atacante no necesitó romper el perímetro exterior; utilizó nuestro Endpoint de confianza (`eva03_hijacked`) para hacer pivot y destrucción lateral (`eva00_down`, `eva02_down`). El analista principal interrumpió el triage por conflicto de interés moral (`operator_refuse`). El CISO ejecutó un SOAR automatizado no probado (`dummy_plug_engaged`), revirtió el *lockout* del operador, y ejecutó un Wipe físico del Endpoint, provocando bajas internas irreparables (`occupant_maimed`). |

## Contraste Inmediato
*   **Ireul (Ep 13):** Infectó el clúster de servidores (MAGI). Hubo que limpiarlo lógicamente.
*   **Leliel (Ep 16):** Era una trampa extradimensional que devoraba la unidad.
*   **Bardiel (Ep 18):** Es un secuestro biológico del chasis. El atacante TIENE un cuerpo de Eva y todos sus privilegios cinéticos.

## Spec Visual
*   **Eva-03 (Hijacked):** Los brazos se alargan desproporcionadamente (falsas articulaciones). Baba/hongo blanco crece donde antes había armadura.
*   **El Dummy Plug (Override):** No es el modo Berserk del Episodio 02 (que rugía como bestia pidiendo sangre). Aquí, el Eva-01 se mueve con frialdad mecánica. Es un títere de un script; sus pantallas internas se vuelven rojas, los controles de Shinji no responden ("operator_input_discarded").
*   **El Ocupante:** El Entry Plug blanco del Eva-03 es estrujado. A Toji no lo vemos morir en pantalla, pero la crujida del metal es el indicativo del estado `occupant_maimed`.
