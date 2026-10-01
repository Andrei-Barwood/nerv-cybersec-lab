# Recreación de Aparición: Uno, luego Dos

## Minuto Cero y First-Seen de Seguridad

| Escena (Minuto Cero) | First-Seen de Seguridad (Detección de HA) |
| :--- | :--- |
| **El Despliegue Inicial:** Israfel emerge de la bahía. Asuka se adelanta con el Eva-02 y lo parte por la mitad con un arma cuerpo a cuerpo. En lugar de morir, las dos mitades se regeneran en dos humanoides idénticos (Alpha y Beta) en perfecta simetría. Los Evas 01 y 02 son abrumados porque atacan de manera desincronizada (`desync`). **La Ventana de Tiempo (N²):** La ONU arroja una mina N² para aturdir al objetivo, comprando 6 días de gracia (`n2_stun_window`). **El Ensayo (Baile):** Misato obliga a Shinji y Asuka a vivir juntos y ensayar una coreografía de combate basada en un track musical para igualar sus relojes biológicos y operativos. **El Segundo Combate:** Los Evas se mueven en perfecta sincronía. Al finalizar el asalto rítmico, golpean los dos cores de Israfel simultáneamente, destruyéndolos antes de que puedan recomponerse. | **Alerta de Replicación:** El SIEM detecta un `pattern_blue` solitario. Al ser impactado, la telemetría dispara `angel_split`. Un perímetro inexperto abriría un segundo incidente. Aquí, MAGI debe entender que los `core_pair_alive` son el mismo actor con alta disponibilidad. Destruir solo a Alpha genera un log de `rejoin` mientras Beta reconstruye a Alpha. |

## Percepción del Perímetro (Dos Amenazas)
El instinto básico de un analista al ver que un ángel se convierte en dos es dividir los equipos: "Tú ataca al de la izquierda, yo al de la derecha". Contra Israfel, eso es letal. No son dos incidentes independientes; es una arquitectura replicada. Si el $\Delta t$ de destrucción entre los núcleos supera el umbral temporal (`epsilon`), el nodo sobreviviente revive al caído.

## Spec Visual: Israfel
*   **Israfel Entero:** Un humanoide estilizado, metálico, con un patrón similar al del símbolo de yin/yang en su rostro y núcleo.
*   **Israfel Partido (Alpha y Beta):** Al dividirse, se convierte en dos entidades dorada y plateada idénticas, que atacan como espejos, realizando patadas y bloqueos simultáneos y cooperativos sin necesidad de comunicación verbal.
*   **Desync vs Sync:**
    *   *Desync:* Eva-01 y Eva-02 chocando entre sí, pisándose, bloqueándose la línea de fuego.
    *   *Sync:* Ambos Evas ejecutando el mismo salto, la misma caída y la misma patada con un `pair_sync` total, golpeando los dos cores al mismo milisegundo.

## El Ensayo
El ensayo no ocurre dentro de los Evas, ocurre en el apartamento, vestidos con ropa civil, saltando sobre colchonetas. Es el *Tabletop Exercise* definitivo: forzar la memoria muscular y de red para que el `runbook` se ejecute ciegamente bajo el mismo reloj compartido (Sync Clock).
