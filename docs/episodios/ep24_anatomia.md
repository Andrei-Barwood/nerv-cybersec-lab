# Anatomía: El Ángel Humano, la Falsa Raíz y el Libre Albedrío

## Partes y Funciones de Seguridad

| Parte de la Amenaza | Qué Parece | Qué Hace | Analogía de Seguridad (SRE/Sec) | Símbolo Ruby |
| :--- | :--- | :--- | :--- | :--- |
| **Human Shaped / Fifth Child** | Un adolescente (Kaworu Nagisa). | Pasa los controles de seguridad perimetral de MAGI como si fuera un piloto legítimo. | Un atacante que usa credenciales válidas y se sienta en el escritorio del nuevo empleado. | `looks_human` / `badge(:fifth_child)` |
| **Walk to Dogma** | Descenso pasivo hacia la Terminal. | Usa privilegios de red (AT Field propio y manipulación del Eva-02 vacío) para acceder a la bóveda raíz sin pelear. | Movimiento de un *Insider* autenticado hacia el *Domain Controller* de la compañía. | `dogma_walk!` |
| **Adam Soul vs Lilith Cross** | El gigante crucificado. | Kaworu (Alma de Adam) busca el cuerpo de Adam para iniciar un Impacto. Descubre a Lilith y frena. | El atacante extrae una base de datos creyendo que es la de Producción, pero resulta ser un Sandbox o de otro cliente. | `target == :lilith` / `target_confusion` |
| **Free Will Abort** | Kaworu sonríe y se detiene. | Detiene su propio ataque. Es un evento disparado por el adversario, no por un control defensivo de NERV. | El *hacker* decide no ejecutar el `rm -rf` en el último segundo. | `abort_merge!` |
| **Operator Crush** | La mano del Eva-01 cerrándose. | Shinji, y solo Shinji, ejecuta la instrucción letal. No puede tercerizarse a una IA (Dummy Plug). | El SysAdmin borra la cuenta del *insider* amigable manualmente, asumiendo la carga moral. | `crush_by_operator!(shinji)` |

## Diferencias Tecnológicas Críticas
*   **Tabris vs Kaji:** Ambos pasaron tiempo en NERV y espiaron Dogma. Pero Kaji era un espía humano (Liaison). Tabris hereda de la clase `Angel` en Ruby. `Kaji.is_a?(Angel)` debe ser `false`, mientras que `Tabris.is_a?(Angel)` es `true`.
*   **Fifth Child Badge vs Trusted Intake (17):** El Eva-03 (Ep 17) pasó aduanas como "equipo aliado". Kaworu pasa como "usuario aliado". El *bypass* es lógico y burocrático.
*   **Abort Merge vs Instrumentality Fire:** Kaworu frena voluntariamente el cataclismo (Tercer Impacto). En el contexto de este laboratorio, `Instrumentality.fire` no debe ser un método de éxito o de ejecución; documentamos que la amenaza mayor *fue evitada*.
*   **Crush vs Dummy Plug:** En el Episodio 18, Gendo encendió el Dummy Plug para matar al Eva-03 contra la voluntad de Shinji. Aquí, usar `DummyPlug.engage!` para aliviar la carga mental de Shinji sobre Kaworu es un fallo de arquitectura de la historia y debe fallar en el test (`FAIL`). Shinji debe matar a Kaworu.

## Implicación
El último control de acceso en una empresa no es el SIEM, ni las IAs automáticas, ni las tarjetas de los directivos (Seele). Es el operador asustado de la consola (`operator_crush`).
