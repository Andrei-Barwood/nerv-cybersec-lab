# Factor Humano: Cazar la Gloria, la Ciencia o la Supervivencia

## Ego, Ciencia y Supervivencia (Fichas Delta)

*   **Asuka Langley Soryu (Diver / Glory Hunt):** Asume el rol de cebo y de buceadora extrema de buena gana no por convicción científica, sino por la gloria (ser "la única capaz de soportarlo"). Muestra reticencia inicial a abortar la captura, priorizando atrapar al espécimen antes de entender que el calor casi funde su cerebro (`cooling_fear`).
*   **Dr. Ritsuko Akagi (Science / Sample Greed):** Representa el KPI corporativo y el apetito por la inteligencia táctica. Prefiere retrasar el *kill* en un entorno hostil (arriesgando vidas) con tal de obtener el núcleo vivo. Su avaricia científica (`sample_greed`) es el mayor factor de riesgo del playbook.
*   **Misato Katsuragi (IC / Abort Protocol):** Función de Comandante de Incidentes maduro. Actúa como *circuit breaker*: cuando el `hatch` sube y la jaula cede, revoca a la jefa científica y ordena el `abort_called`. Prioriza la contención total letal por sobre la obtención de evidencia.
*   **Shinji Ikari (Support Rescue):** Su rol no es clonar la táctica de Asuka ni bailar sincronizadamente. Su ego queda a un lado: es un operario de grúa industrial. Cuando el *abort* concluye, su trabajo es usar la fuerza bruta del Eva-01 para sacar físicamente al Eva-02 del magma.

## Reglas y SIEM Humano
*   `glory_hunt`: Impulso del operador de tomar riesgos en teatro hostil para demostrar valor; no puntúa como victoria de contención.
*   `sample_greed`: El deseo de extraer un binario/muestra viva de la red atacante a pesar del peligro. En este runbook, es la métrica de riesgo que casi causa el `hatch = 1.0`.
*   `abort_called`: Intervención de jerarquía ejecutiva (Misato) forzando el `Break-Glass` táctico para neutralizar.
*   `support_rescue`: Validación del rol infraestructural del compañero (Shinji), que difiere dramáticamente del rol *mirror* del Ep 09 (Baile).

## Frontera con el Episodio 09 y el Episodio 11
*   En el Ep 09 (Baile), la igualdad de tempo y protagonismo era vital (`pair_sync`). Aquí, la táctica exige desigualdad de roles absolutos (Diver / Support). Evaluar a Shinji por no apuñalar ángeles aquí sería incorrecto.
*   En el Ep 11 (Matarael), el apagón despojará a los humanos de sus trajes D-Type, sus grúas electromagnéticas y de MAGI. Allí los niños tendrán que arrastrarse por conductos de aire manuales sin ningún rol de soporte externo posible. 
