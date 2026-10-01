# Factor Humano: La Lanza Perdida y la Mente Rota

## Dinámica de Recursos Humanos

*   **Asuka Langley (Psyche Broken):** Es el nodo principal sacrificado hoy. Tras el Ep 19, su vulnerabilidad emocional (`T-OP02-03`) estaba expuesta. Arael no forcejea físicamente; Arael fuerza a Asuka a revivir la locura y el suicidio de su madre (`kyoko_trauma`). El `psyche_broken` es terminal para este bloque narrativo: Asuka se vuelve catatónica.
*   **Kyoko Zeppelin Soryu (El Trauma):** Madre biológica de Asuka. Distinta de Yui Ikari (quien se unió al Eva de forma limpia y protectora). Kyoko se volvió loca en su propio experimento y acabó colgando a una muñeca creyendo que era Asuka, para luego suicidarse. Esto es lo que el rayo de Arael le muestra en bucle a la piloto.
*   **Rei Ayanami (El Ejecutor):** No actúa por lazo emocional o heroico hacia Asuka. Recibe una orden, toma la Lanza y elimina al Ángel fríamente. Paradoja cruel: la persona que Asuka más odia (la "muñeca" sin alma) es quien tiene que hacer el tiro que la salva físicamente.
*   **Gendo Ikari (Burned the Artifact):** Toma la decisión calculada de sacrificar el instrumento vital de Instrumentality (la Lanza) para asegurar la supervivencia táctica en el presente. A Seele no le importaba Asuka; les importaba la Lanza.
*   **Shinji Ikari:** Observador inútil en esta crisis. Intenta salir, pero no puede llegar a órbita. No hay rol heroico.

## Reglas y SIEM Humano
*   `psyche_broken`: Es el estado de salida obligatorio de Asuka para validar el Exit 0. Un kill limpio (donde ella sale ilesa) es falso y falla los tests.
*   `kyoko_trauma`: Bandera documental. Evita cruzar y confundir a Kyoko con Yui (`maternal_presence`).
*   `rei_threw` / `longinus_fired`: Rei lanza el artefacto. Dummy Plug fallaría en este cálculo o en la orden no-estándar.
*   `spear_lost`: NERV "cura" el cielo perdiendo el brazo del diablo.

## Fronteras con Episodios Previos y Futuros
*   **Episodio 16 (Leliel):** En el 16, Shinji procesó su trauma con un ente curioso. En el 22, Asuka fue violada mentalmente por un ente hostil de extracción de datos.
*   **Episodio 19 (Zeruel):** El ego de Asuka fue pelado allí (Armor Stripped física y mentalmente). Arael solo vino a rematar la infraestructura de identidad colapsada.
*   **Episodio 21 (Origin):** Allá Yui fue documentada como un experimento de integración de la mente (positivo/protector). Kyoko fue el experimento de desintegración de la mente (trauma).
*   **Episodio 23 (Armisael):** Asuka ya no estará disponible para hacer equipo. Rei quedará a merced del siguiente atacante que sí buscará fusionarse cuerpo a cuerpo.
