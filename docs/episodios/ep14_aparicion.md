# Recreación de Aparición: El Comité (Tabletop)

## Minuto Cero y First-Seen de Seguridad

| Escena (Minuto Cero) | First-Seen de Seguridad (IoC de Lab) |
| :--- | :--- |
| **La Sala de los Monolitos:** No hay sirenas de Geofront. Gendo Ikari y Kozo Fuyutsuki se presentan en una habitación oscura iluminada solo por inmensos bloques de piedra negra (Monolitos de Seele) con números proyectados (01 a 12). NERV cree que esto es un *Recap* burocrático (explicar por qué gastaron millones reparando Evas), pero Seele tiene un discurso abstracto sobre la disolución de las almas. Ellos quieren que el Proyecto de Complementación (Instrumentality) avance. | **Alerta Administrativa:** El SOC no levanta `pattern_blue` ni radar satelital. El SIEM dispara `tabletop_started` y `seele_review`. Es el equivalente a una auditoría cuatrimestral sorpresiva (QBR). El atacante no está en el clúster; está en la videollamada. NERV presenta el `PlaybookCatalog` como un tapiz de 11 victorias consecutivas, pero el comité responde con un `kpi_conflict`: tu victoria táctica es nuestra demora estratégica. |

## Un Tapiz de Incidentes y un Test Fallido
En paralelo a la reunión directiva, Ritsuko conduce un test de portabilidad: Shinji Akari se sincroniza con el Eva-00 (normalmente pilotado por Rei). 
No hay un enemigo enfrente, es un puro *stress-test* de hardware y biometría. Shinji sufre alucinaciones, el Eva pierde el control y golpea la pared. Este no es un `berserk` heroico como en el Ep 01 o 02; es una anomalía crítica (`eva00_anomaly`). El *operator-unit pairing* falló. Si los Evas no son intercambiables, la logística de defensa de NERV acaba de volverse mucho más rígida.

## Spec Visual
*   **Seele (El Comité):** Sombras puras, sin rostros. Bloques rectangulares negros flotando en un espacio negro, proyectando voz. Actúan como una Inteligencia Artificial implacable de negocios.
*   **El Tapiz (Recap):** No hay secuencias de batalla nueva. Todo son imágenes recicladas y esquematizadas de Sachiel a Ireul, ordenadas como un expediente en la pantalla de Fuyutsuki.
*   **Eva-00 y Shinji:** El Eva amarillo (o azul) de Rei. Shinji dentro del Entry Plug sudando frío, experimentando un rechazo del sistema (la mente residual del Eva no reconoce a este usuario). 

## La Diferencia de "No hay Ángel"
En el Episodio 04 (Erizo), el ángel ya estaba muerto y Shinji huía. En el Episodio 07 (Jet Alone), un humano saboteaba. Aquí, **la burocracia ES el evento**. Tratar a Seele como si fuera un *Pattern Blue* para apuñalar con un Eva es la peor violación de doctrina posible (Exit 8: `:aar_failed`).
