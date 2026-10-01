# Recreación de Aparición: El Cuartel Ciego

## Minuto Cero y First-Seen de Seguridad

| Escena (Minuto Cero) | First-Seen de Seguridad (Detección a Batería) |
| :--- | :--- |
| **El Apagón Primero:** Tokio-3 pierde súbitamente su red de suministro. El Geofront se sume en la oscuridad absoluta. MAGI se apaga. Ascensores y puertas quedan sellados. El personal debe moverse por los ductos de ventilación usando mapas de papel y linternas. **La Amenaza Oportunista:** Mientras el caos reina adentro, sobre la superficie camina el 9º Ángel, Matarael. Se posiciona en una compuerta vertical y comienza a llorar lágrimas de ácido. El líquido empieza a quemar las 22 capas de blindaje una por una. **El Launch Manual:** Sin telemetría y sin autorización electrónica de MAGI, Misato y los tres niños escalan hacia los Evas. Operarios empujan palancas mecánicas usando motores a diésel de emergencia para eyectarlos. **El Combate:** Los tres Evas salen juntos (Combined Sortie) bajo el pozo y disparan fuego concentrado desde el suelo, fulminando a la araña antes de que vuelva la luz. | **Alerta Degradada:** El `pattern_blue` normal no existe porque los satélites y radares de MAGI están desconectados. La alerta de seguridad llega literalmente por un guardia sudado (`human_runner_report`) que sube gritando "hay algo goteando ácido". El SIEM, si está en laptop de batería, solo marca `hq_power_lost` y un `pattern_blue_degraded`. El instinto novato diría: "Esperemos a recuperar el IdP para iniciar el IR", pero en 15 minutos el techo cederá. |

## El SIEM no ve vs El Personal sí ve
Matarael no es el Ramiel (Ep 05). Ramiel era un octaedro de energía perfecta que paralizaba a Japón con un taladro gigante y un láser de iones en un HQ fully-powered. Matarael es una araña barata, biológicamente débil (un ojo), que gotea a un ritmo patético. Pero como el HQ de NERV no puede ni siquiera prender una bombilla, ese goteo patético amenaza con derretir todo el Geofront.

## Spec Visual
*   **El Outage (El Puente):** Monitores apagados, cables colgando, humedad, operadoras (Ibuki) escribiendo en libretas iluminadas con linternas halógenas, Gendo leyendo un libro con luz natural, ventiladores parados.
*   **Matarael (Araña):** Un cuerpo central que parece un ojo o un reloj de arena biológico invertido, con múltiples patas arácnidas inmensamente largas. Su único ataque es ubicarse encima del blanco y gotear ácido amarillo desde la pupila inferior.
*   **El Combate (Sortie Combinado):** No hay sincronización de a dos (Ep 09). Están los tres Evas hacinados al fondo de un pozo balístico. Eva-02 bloquea con AT Field un momento mientras 01 dispara palets balísticos directamente hacia arriba.

## Tabla de Especificaciones de Amenazas

| Incidente | Ángel | Amenaza Base | Estado del Cuartel (NERV) | Kill Method |
| :--- | :--- | :--- | :--- | :--- |
| Ep 05 (Ramiel) | Octaedro | Escudo y Láser | Plena potencia / Apoyo Nacional | Yashima (Positrón) |
| **Ep 11 (Matarael)** | **Arácnido** | **Goteo Ácido (Tiempo)** | **Oscuridad Total (Outage local)** | **Manual Launch & Rifle** |
