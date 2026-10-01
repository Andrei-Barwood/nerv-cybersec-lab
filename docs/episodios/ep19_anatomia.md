# Anatomía: Overwhelm, S2 Ingest, Dummy Fail, Introyección

## Partes y Funciones de Seguridad

| Parte de la Amenaza/Defensa | Qué Parece | Qué Hace | Analogía de Seguridad (SRE/Sec) | Símbolo Ruby |
| :--- | :--- | :--- | :--- | :--- |
| **Overwhelm** | Láser que parte 18 escudos. | Invalida los playbooks tradicionales de NERV por pura escala y daño masivo. | DDoS Masivo + 0-Day indetenible. | `overwhelm?` |
| **Armor Stripped** | Eva-02 sin brazos ni cabeza. | Remover las defensas técnicas dejando al operador hábil impotente. | Bypass total de Firewalls/WAFs perimetrales. | `eva02.armor_stripped` |
| **Dummy Fail** | Gendo pulsa el botón, el Eva no obedece. | El SOAR/Automatización no escala o es rechazado por el propio entorno ante ataques complejos. | SOAR Error (Script timeout o rechazo de API). | `dummy_failed` |
| **S2 Ingest** | Eva-01 comiendo la fuente de energía enemiga. | Otorga energía infinita al Eva-01, rompiendo el modelo de control de 5 minutos de NERV (Cordón Umbilical). | Capturar y correr código fuente del C2 atacante en Producción. | `s2_ingest!` / `s2_ingested` |
| **Operator Introjection** | Shinji fundido en el Entry Plug. | El operador deja de tener una frontera física con la máquina defensiva. Es asimilado. | Analista "tragado" por los scripts que intentó domar, perdiendo su cuenta/rol. | `introject_operator!` / `operator_introjected` |
| **Plug Empty** | El LCL sin cuerpo. | Consecuencia directa de la introyección. El Handoff hacia la recuperación psíquica del Ep 20. | Consola del Admin desconectada permanentemente tras el desastre. | `plug_empty` |

## Diferencias Tecnológicas Críticas
*   **Dummy_Fail vs Dummy_Success (Ep 18):** El producto (Rei Pattern) no falló contra Bardiel porque Bardiel era un adversario que se ajustaba a los parámetros del sistema (era un Eva). Zeruel supera los parámetros, y además, el Eva-01 rechaza físicamente arrancar el script sin su piloto real en este incidente. El Dummy tiene un techo técnico.
*   **Introjection vs Dirac (Ep 16):** Leliel atrapó al Eva-01 y a Shinji en un espacio-basura extradimensional. La introyección atrapa a Shinji DENTRO de la memoria base del propio Eva-01. El contenedor es la propia defensa corporativa, no el ángel.
*   **N² Suicide Fail:** Reutilizamos el fallo del Episodio 01 y 02 (Sachiel). La fuerza bruta de un wipe/bomba no resuelve problemas de seguridad complejos de *Pattern Blue*.
