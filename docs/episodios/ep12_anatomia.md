# Anatomía: Órbita, Cinética, Copa AT y Core

## Partes y Funciones de Seguridad

| Parte de la Amenaza/Defensa | Qué Parece | Qué Hace | Analogía de Seguridad (SRE/Sec) | Símbolo Ruby |
| :--- | :--- | :--- | :--- | :--- |
| **Sahaquiel (Orbit)** | Ojo gigante naranja en el espacio. | Se prepara para caer sobre el cuartel, ignorando ataques lejanos. | Payload externo (C2, malware en pipeline) acercándose sin ejecutar. | `in_orbit?` |
| **Impact Progress** | El monstruo cayendo, ardiendo en la atmósfera. | El reloj descendente. De `0.0` a `1.0`. Si llega a 1, la ciudad muere. | *Countdown*, Ejecución de Ransomware, DDoS landing. | `impact_progress` |
| **MAGI Compute Impact** | Coordenadas en las pantallas rojas de NERV. | Provee la predicción del ETA y punto cero a los defensores (SIEM Sano). | Herramienta de Threat Intel o Log Analytics proyectando un ataque volumétrico. | `Magi.compute_impact` |
| **Triple AT Field Brake** | 3 Evas proyectando campos de fuerza hexagonales superpuestos. | Amortigua mecánicamente una masa incalculable repartiendo el daño (n=3). | Escalamiento horizontal de firewalls / WAF Layer 7 para absorber un pico masivo. | `AtFieldBrake(n=3)` |
| **Core In-Flight** | El centro brillante de la bestia, suspendido. | Debe ser perforado ANTES de que termine el momentum de la caída. | Terminación del proceso en RAM o dropeo de conexión TCP a medio tránsito. | `intercept_ok?` / `core` |

## Umbrales Numéricos: Geometría de $n=3$
*   `impact_progress`: Inicia en `0.0` cuando se detecta `orbital_contact`. Se incrementa simulando la gravedad. Si llega a `1.0`, se levanta el flag `city_destroyed` y el escenario devuelve `:unresolved`.
*   `n_evas_catching >= 3`: La copa AT requiere de una estructura de trípode. Un Eva solitario (incluso el Eva-01) intentando hacer *catch* de la bomba orbital será aplastado por los límites matemáticos del *AT Field*.
*   **ConventionalAttack (Misiles):** Son rebotados. Su poder no cancela la masa cinética en el aire.

## Fronteras Cruciales (Lo que NO ES)

*   **No es Ramiel (`drill_progress`):** El taladro iba comiendo capas. `impact_progress` aquí es un ETA de caída libre, la cualización de la nada a la extinción es casi instantánea al final.
*   **No es Ácido de Matarael (`acid_progress`):** El ácido era un derrame lento que daba tiempo para un manual launch; la cinética de Sahaquiel no perdona a defensores que llegan 0.1s tarde al punto de intersección.
