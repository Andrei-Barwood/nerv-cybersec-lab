# Anatomía: Inversión, Espacios Dirac y el Decoy

## Partes y Funciones de Seguridad

| Parte de la Amenaza/Defensa | Qué Parece | Qué Hace | Analogía de Seguridad (SRE/Sec) | Símbolo Ruby |
| :--- | :--- | :--- | :--- | :--- |
| **Decoy Sphere** | Esfera flotante visible y "atacable". | Atrae el fuego y la atención de la respuesta a incidentes (Rush). | Honeypot enemigo, Fake C2 endpoint. | `decoy?` |
| **Real Body (Shadow)** | Sombra plana 2D inmensa (680m / 3nm). | El cuerpo masivo del 12º ángel. Mantiene el portal al Mar de Dirac. | Superficie de ataque oculta / Espacio del actor. | `real_body` |
| **Inverted AT Field** | Magia oscura bajo los pies. | En vez de repeler materia (Muro), colapsa y succiona energía y materia hacia su interior. | Sinkhole, Inbound Gravity Trap. | `at_field(:invert)` / `absorb!` |
| **Dirac Sea (Interior)**| Oscuridad / Bolsillo espacio-tiempo. | El sandbox del atacante. El operador queda atrapado (`occupant_inside`). | Entorno aislado (Air-gapped) controlado por el malware. | `DiracSea` |
| **Time Dilation** | Diálogo mental sin fin. | 16 horas en NERV (Outside Clock) = 1 mes biológico/psicológico adentro (Inside Clock). `Ratio 1:45`. | Timeout desincronizado, Fallo de Keepalive. | `time_dilation` |
| **Opaque Extract** | El Eva-01 saliendo solo y manchado de sangre. | El hardware actúa por su cuenta, garantizando que el operador no muera. | *Fail-Safe* biológico, Undocumented Recovery. | `extract_via_opaque_agency!` |
| **N² Mine (Hostage)** | Opción de contingencia militar. | Arrojar todo el arsenal contra la sombra. NERV lo planea; es un fallo usarla. | *Wipe* de datacenter mientras el Admin está dentro apagando el fuego. | `n2_kills_occupant?` |

## ¿Por qué fallan las armas H1?
*   **Progressive Knife / Rush:** Choca contra el aire o perfora el Decoy inútilmente mientras la Sombra te traga.
*   **Casper Reverse-Hack:** Leliel no habla TCP/IP ni lógica binaria. Es física pura.
*   **Intercept (Yashima):** Un cañón de positrones no tiene "coordenadas" útiles si el centro del objetivo es una dimensión infinita de 3 nanómetros.
