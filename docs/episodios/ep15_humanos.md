# Factor Humano: "Those women", los Silencios y los Liaisons

## Dinámica Operativa vs Canales No Oficiales (Fichas Delta)

*   **Misato Katsuragi (IC Táctica, Vulnerada):** Misato opera un `unauth_trust` con Kaji. Ella sabe que Kaji oculta algo (el *Missing Log*), pero su necesidad humana (*anhelo*) de compañía valida el *Shadow Edge*. A diferencia de una deserción abierta (Ep 04), aquí ella sigue trabajando de día, pero la segregación de información de noche está comprometida.
*   **Ritsuko Akagi (IC de Código, Conflicto de Interés):** Ritsuko asume su rol en el `coi_control_plane`. MAGI fue construida por Naoko, su madre. Ritsuko opera el clúster a favor de Gendo Ikari mediante un canal personal. MAGI no está "infectada" por un atacante externo, pero su operadora está sesgada hacia la agenda secreta del Director.
*   **Rei Ayanami (Visita No Oficial):** Mantiene un aislamiento casi total, pero la visita de Shinji a su unidad de vivienda traza un borde anómalo de red (`undeclared_channel`). No se reporta al mando.
*   **Ryoji Kaji (El Liaison Multi-Principal):** El arquetipo clásico de espía corporativo/auditor externo. Juega a tres bandas (NERV, Gobierno Japonés, Seele). `kaji_principals >= 2`. Mantiene el *Offband Onboarding* de Shinji en el jardín de melones.
*   **Gendo Ikari (El Nudo Ciego):** Acumula todos los flujos de inteligencia del `Shadow Graph` y no se los reporta a Seele, al gobierno ni a Misato. Opera como un "Agujero Negro" de información.
*   **Shinji Ikari (Bypass Activo):** Shinji obedece a Misato en batalla, pero se deja asesorar por Kaji fuera de protocolo. Shinji no sabe que es un vector.

## Reglas y SIEM Humano
*   `undeclared_edges_count`: La cantidad de relaciones que saltan la cadena de mando (debe ser > 0).
*   `kaji_principals`: Evalúa si un actor sirve a más de una entidad hostil o neutral entre sí (Métrica de Riesgo de IAM).
*   `coi_flag`: Disparado por la relación Gendo-Ritsuko.
*   `missing_logs`: Refleja el título ("Lies and Silence").
*   `offband_onboarding`: Adiestramiento táctico fuera del currículo oficial (Melones).
*   `unauth_trust`: Etiqueta general de vulnerabilidad.

## Fronteras con Episodios Futuros
*   **Episodio 16 (Leliel):** Después de explorar la debilidad humana en el 15, el atacante del 16 atacará precisamente la psique. Atrapará a Shinji en un vacío (Dirac) donde su único interlocutor será su propio *Shadow Graph* mental.
*   **Episodio 24 (Kaworu/Tabris):** Kaji engañó por motivos políticos. En el futuro, Kaworu usará un `unauth_trust` idéntico al de Kaji/Misato para acceder a la terminal dogma, pero Kaworu **SÍ será un Ángel**. La diferencia entre el 15 y el 24 es que en el 24, abrir la puerta equivale al Fin del Mundo.
