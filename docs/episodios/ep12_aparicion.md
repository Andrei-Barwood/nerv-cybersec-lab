# Recreación de Aparición: El Cielo es el Arma

## Minuto Cero y First-Seen de Seguridad

| Escena (Minuto Cero) | First-Seen de Seguridad (Detección Orbital) |
| :--- | :--- |
| **La Detección Exo-Perimetral:** El cielo de Tokio-3 está limpio, pero los satélites en alta órbita son vaporizados. Un objeto masivo que parece un ojo naranja y aplanado se está ajustando en el espacio exterior. **La Futilidad Convencional:** Las Naciones Unidas disparan cientos de misiles N² balísticos. La inmensa criatura rebota todo pasivamente con su escudo. **La Caída Libre (Payload):** El objeto se descuelga en un arco de caída perfecta. Su masa, combinada con la gravedad, lo convierte en un impacto de nivel extinción. **El Intercept:** MAGI calcula el ETA y la coordenada final. Los tres Evas (00, 01, 02) extienden sus AT Fields hacia arriba, entrelazándolos para formar una red de frenado. La criatura choca contra ellos en el aire. La tierra cede alrededor, pero el núcleo no toca el piso. El Eva-02 lo apuñala en el aire. | **Alerta Orbital:** MAGI emite `orbital_contact`. A diferencia del Ep 11, el SIEM está encendido y tiene visibilidad perfecta. Sin embargo, no hay "ataque" activo más allá de existir y dejarse caer. El SOC inicia un cronómetro (`impact_eta`) que señala la destrucción del perímetro físico. Los SOCs modernos enfrentan esta desesperación: vemos la inmensa campaña de DDoS bajando por el Carrier, tenemos la predicción volumétrica en tiempo real (`magi_impact_predict`), pero nuestros firewalls (misiles) locales son rebotados por la pura masa de datos. |

## MAGI Calcula, no Está Mudo
En el Ep 11, MAGI estaba ciego por la falta de voltaje. En el Ep 12, los supercomputadores funcionan a su máxima capacidad (`powered = true`, `infected = false`). El milagro de intercepción no podría lograrse sin el cálculo exacto del vector de aproximación, demostrando que la telemetría preventiva salva vidas cuando el humano actúa sobre ella en el milisegundo correcto.

## Spec Visual
*   **Sahaquiel (El Ojo Aplanado):** No tiene forma humanoide. Es un disco gigantesco, aplanado y orgánico, con un "ojo" central y largas extremidades que se pierden hacia los lados (escala planetaria comparativa desde tierra).
*   **La Caída (Cinética Pura):** El descenso no es suave, es una bomba biológica que arde en su reentrada a la atmósfera.
*   **El Freno / Intercept (AT Fields en Copa):** Eva-01 está en el centro. Eva-00 y 02 flanquean. Los tres apuntan las palmas al cielo, proyectando sus AT Fields no como murallas verticales (Ramiel) sino como una red de tenis (`mode: :brake`) elástica que se deforma bajo el peso de la bomba biológica, suspendiéndola a metros de la ciudad.
*   **El Muerte en el Aire:** El núcleo masivo es perforado repetidas veces antes de que la presión venza a los Evas.

## Tabla de Especificaciones de Amenazas

| Incidente | Ángel | Amenaza Base | Vector | Kill Method |
| :--- | :--- | :--- | :--- | :--- |
| Ep 05 (Ramiel) | Octaedro | Taladro y Láser | Estático / Suelo | Francotirador / Escudo |
| Ep 11 (Matarael) | Araña | Goteo de Ácido | Movimiento Lento | Manual Sortie / CQB |
| **Ep 12 (Sahaquiel)**| **Disco-Ojo** | **Masa (Cinética)** | **Caída Libre (ETA)**| **Intercept In-Flight (3-AT)** |
