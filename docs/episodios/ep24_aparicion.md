# Recreación de Aparición: El Chico de la Puerta y el Aborto del Impacto

## Minuto Cero y First-Seen de Seguridad

| Escena (Minuto Cero) | First-Seen de Seguridad (IoC de Lab) |
| :--- | :--- |
| **La Puerta, No el Cielo:** No suenan sirenas de kaiju, no hay cruces en órbita. Un chico tararea sobre los escombros de un lago. Se llama Kaworu Nagisa, ha llegado con una orden oficial de Seele como el *Fifth Child* para pilotar el Eva-02. MAGI lo procesa como un humano. | **Alta de Insider (Roster Intake):** El ataque comienza en el departamento de Recursos Humanos de NERV (`fifth_child_intake`). El adversario no penetró el firewall, pasó por el proceso legítimo de autenticación biométrica y de credenciales. |
| **La Confianza en el Agua:** En los baños termales (agua, despojo de defensas), Kaworu le dice a Shinji que lo quiere. Shinji, destruido por la muerte de Rei II y la caída de Asuka, anhelaba desesperadamente esa conexión. Kaworu asume el control del Eva-02 (que está vacío) y desciende a Terminal Dogma levitando. MAGI finalmente pinta el `Pattern Blue`. | **Ingeniería Social (Trust Channel):** El adversario explota una vulnerabilidad humana de día cero (soledad extrema) para establecer confianza (`trust_channel_shinji`). Con las defensas bajas, accede al nivel más profundo del data center (Dogma) usando sus permisos y hardware interno (Eva-02 vacío). |
| **Lilith y el Aborto Voluntario:** Kaworu llega frente al gigante crucificado. Cree que es Adam (el archivo raíz de su propia existencia). Al verlo de cerca, se da cuenta de que es Lilith (el archivo raíz de los humanos). Kaworu tiene libre albedrío (`Free Will`) y decide que la humanidad debe seguir. Aborta la fusión (`merge_aborted`). | **Payload Abortado (Free Will):** El actor de amenazas tiene acceso *Root* pero descubre que la arquitectura no es la que esperaba, o decide que no vale la pena detonar el payload de destrucción total. El riesgo de impacto mayor (Third Impact) es evitado por el atacante, no por NERV. |
| **El Silencio del Aplastamiento:** Kaworu mira a Shinji en el Eva-01 y le pide que lo borre. Shinji duda. No hay música, solo el ruido ambiente por casi un minuto. Finalmente, el Eva-01 cierra la mano. Kaworu muere decapitado. Shinji queda aniquilado psicológicamente por haber matado a su amigo. | **Crush Manual (Friend Revoked):** No se invoca un script automatizado (SOAR/Dummy Plug). El administrador del sistema, llorando, debe ejecutar la purga manual de un usuario que aprendió a apreciar (`operator_crush` y `friend_revoked`). |

## Contraste Inmediato
*   **Episodio 17 (Toji):** El Cuarto Elegido era humano y terminó asimilado como rehén (Ep 18). Kaworu ES el ángel, disfrazado de Quinto Elegido.
*   **Episodio 21 (Kaji):** Kaji era un espía humano que husmeaba en Terminal Dogma. Kaworu es un ser celestial (`is_a?(Angel)`) diseñado para destruirlo.
*   **Episodio 23 (Armisael):** Armisael forzó una fusión de adentro hacia afuera que requirió detonación (nodo). Kaworu exige una desactivación limpia (crush) tras decidir parar.

## Spec Visual
*   **Tabris (Kaworu):** Forma enteramente humana. No brilla, no tiene alas ni hélice.
*   **Terminal Dogma:** Un gigantesco abismo industrial rojo.
*   **Lilith en la Cruz:** Un gigante deforme y blanco sangrando fluido LCL, con la máscara de los siete ojos de Seele. No es Adam.
*   **El Crush:** El Eva-01 sosteniendo algo minúsculo en su puño cerrado. No se ve sangre volando, la violencia es psicológica y el largo silencio acústico es la verdadera presión.
