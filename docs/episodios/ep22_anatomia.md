# Anatomía: Órbita, Mental Beam y la Lanza de un Solo Uso

## Partes y Funciones de Seguridad

| Parte de la Amenaza/Defensa | Qué Parece | Qué Hace | Analogía de Seguridad (SRE/Sec) | Símbolo Ruby |
| :--- | :--- | :--- | :--- | :--- |
| **Arael Orbit** | Halo brillante estático en el espacio. | Observación pasiva en rango inalcanzable para armamento estándar. Impide melee. | Atacante escaneando desde una red externa inalcanzable (sin infraestructura en tu nube que puedas apagar). | `arael.orbit!` / `orbital_stay` |
| **Mental Beam** | Rayo de luz directo al piloto, ignorando al Eva. | Fuerz el volcado de memoria y la re-ejecución del trauma de Asuka (Kyoko). | Un ataque PSYOPS (ingeniería social profunda o *spear-phishing*) que ignora el Endpoint Security (Eva) y va por el empleado. | `mental_beam` |
| **Kyoko Trauma** | Memorias de la madre de Asuka. | El contenido específico exfiltrado y roto por el rayo. Distinto de Yui. | La CVE humana específica de este analista (burnout, problemas familiares, burnout). | `kyoko_trauma` (flag narrativo) |
| **Spear of Longinus** | Artefacto rojo que baja los AT Fields más duros. | El único Root-Exploit que puede alcanzar a Arael desde la Tierra y destrozarlo. | Un 0-Day físico/Root Key que el C-Level esconde en la caja fuerte y solo se usa una vez en la vida. | `spear_of_longinus.fire!` |
| **Spear Lost** | La lanza alejándose hacia la luna. | Consecuencia obligatoria del uso orbital de Longinus; el inventario la pierde. | Rotar y descartar la llave maestra principal: mataste la conexión del hacker, pero perdiste acceso a tu propio sistema crítico (Seele.KPI arruinado). | `spear_lost?` |

## Diferencias Tecnológicas Críticas
*   **Mental Beam (22) vs Dirac Sea (16):** Dirac es un *sandbox* maligno (entras al agujero). Mental Beam es un ataque de red *wireless* (te inyectan datos de estrés psíquico sin tocarte).
*   **Intercept x3 (12) no aplica:** Contra Sahaquiel pusiste a 3 analistas a detener una masa física. Arael no tiene masa que caiga, y si pones 3 Evas, simplemente le disparará el rayo a uno de ellos. `intercept_3_insufficient` será `true`.
*   **Dummy Plug inútil:** El Dummy de Bardiel (18) no sirve si el objetivo está a 30,000 km de distancia y no hay comandos de tiro de francotirador en su botnet.
*   **Yui ≠ Kyoko:** Cuidado con confundir las variables maternas. El Episodio 21 explicó a Yui. Arael ataca el trauma de Kyoko (madre de Asuka).
*   **Matar al Ángel ≠ Curar al Operador:** En incidentes previos, matar al ángel resolvía el problema. Aquí, el ángel muere (0), pero NERV se queda con una analista destrozada de forma irreversible en esta etapa. El Exit 0 no celebra.
