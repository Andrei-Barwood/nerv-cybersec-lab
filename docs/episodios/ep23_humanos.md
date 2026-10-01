# Factor Humano: Lágrimas, Copias y Traiciones

## Dinámica de Recursos Humanos

*   **Rei II (El Nodo Sacrificado):** Ha alcanzado el máximo de su desarrollo humano. Llora (conoce las "lágrimas") porque no quiere que la fusión mate a Shinji. Su sacrificio es el cierre ético opuesto al Dummy Plug: ella elige, el bot (Ep 18) arrebataba.
*   **Rei III (Identity Mismatch):** El *restore* frío. Despierta en el hospital, rompiendo los lentes de Gendo (que Rei I y II apreciaban) de forma inconsciente. Demuestra que descargar un archivo biológico sin la RAM en vivo de los últimos 15 años te da un clon, no la misma alma.
*   **Shinji Ikari (Reconoce la Pérdida):** No compra el engaño corporativo. Rápidamente se da cuenta de que la chica del hospital y la chica que se inmoló por él no son la misma.
*   **Ritsuko Akagi (Disclose of Secrets):** Llena de ira porque Gendo prefirió mantener un clon que a ella, lleva a Misato y Shinji a ver el abismo: el *Clone Tank*. Destruye los cuerpos vacíos en un acto de despecho/revelación.
*   **Gendo Ikari (Quiere el Backup):** Frío ante la muerte del clon 2, simplemente arranca el clon 3 porque necesita una Rei para el *Tercer Impacto* corporativo que planea con Seele.
*   **Asuka Langley (Psyche Broken):** Sigue postrada desde el Episodio 22. Inútil para esta batalla.

## Reglas y SIEM Humano
*   `identity_mismatch`: Obligatorio. Si Rei III = Rei II en tu código, has falsificado el registro de NERV para hacer quedar bien a Gendo.
*   `clone_tank_revealed`: Expone la fábrica de *bots*. Se debe diferenciar tajantemente del uso de esos *bots* en batalla (`Dummy.engage!`).
*   `rei_ii_consent_sacrifice`: Métrica que autoriza la autodestrucción. Si esto es falso o forzado por Gendo, es el Ep 18 otra vez.

## Fronteras con Episodios Previos y Futuros
*   **Episodio 18 (Bardiel):** Allá se vio el *Dummy Plug* matando en piloto automático. Aquí Ritsuko explica *de qué* está hecho el Dummy Plug (Clones de Rei).
*   **Episodio 21 (Origin):** En el 21, Naoko mató a la primera Rei (`rei_i_killed`). Esta es la segunda que muere.
*   **Episodio 24 (Kaworu):** Tras perder a Asuka (Ep 22) y a la Rei original operativa (Ep 23), NERV traerá a un reemplazo humano... que resulta ser el último enemigo.
