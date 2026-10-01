# Patrón: Payload Cinético e Intercepción (In-Flight)

## Escena Breve
Misato ve en MAGI que las Naciones Unidas agotaron todos los misiles terrestres y exo-atmosféricos. Sahaquiel se mantiene intacto. El ETA para que el gigantesco ángel choque contra la superficie es inminente. Gendo le pregunta si ordenará la evacuación y aceptará la pérdida del Cuartel General. Misato rechaza huir. Posiciona a los tres Evas separados por kilómetros, instruyéndolos a correr a una velocidad ridícula hacia un único punto de convergencia, calcular a pura voluntad la caída y atrapar un monstruo del tamaño de una isla flotante. Shinji (Eva-01) llega un segundo antes, detiene el bulto primario con sus manos mientras sus brazos se desgarran; Asuka y Rei aseguran los flancos con sus escudos.

## Patrón: PAYLOAD_CINETICO
Una amenaza maliciosa que no puede ser purgada, reparada o mitigada después de su aterrizaje. Su propio volumen y llegada ES la brecha destructiva.
*   **Precondiciones:** Amenaza originada fuera del perímetro físico/lógico del defensor, con vector de trayectoria inmutable.
*   **ETA Computado:** Visibilidad altísima del desastre que se aproxima, sin herramientas convencionales que lo detengan en el origen.
*   **Error de Playbook (Ground Melee):** Alinear a los analistas de respuesta "para cuando la amenaza entre a nuestra red y podamos matarla en el disco duro". Si toca el disco duro, la empresa entera ha sido borrada (Wiper / Bomba Cinética).

## Tabla de Métodos en el Episodio 12

| Método de Respuesta | Resultado Esperado | Justificación |
| :--- | :--- | :--- |
| `Misiles Convencionales` | **FAIL** | El escudo biológico del atacante en órbita anula impactos lejanos sin esfuerzo. |
| `Yashima (Positrón)` | **FAIL** | El rifle necesita horas de carga; un payload cinético te da un ETA fijo e innegociable. |
| `Analog Melee Post-Impacto` | **FAIL** | No puedes pelear en un cráter cuando el impacto te vaporizó. |
| `Un Solo Eva de Atrapada` | **FAIL** | La matemática de la masa rompe cualquier escudo individual ($n < 3$). |
| **`Interceptación 3-AT + Core`** | **SUCCESS (`contained_controlled`)** | El esfuerzo simultáneo y descentralizado frena la masa y mata el origen en tránsito. |

## El Impacto como Condición de Falla Absoluta
El laboratorio define contención de este Playbook con una condición férrea: `impact_progress < 1.0`. Si `impact_progress` se convierte en 1.0, el flag `city_destroyed` se eleva a verdadero, independientemente de si los Evas sobreviven para matar al ángel en el piso después. Si NERV es un cráter, es un `:unresolved`.

## Analogías de Seguridad
1. **Detener el Malware en el Gateway (In-flight):** Sabes que un correo con un anexo destructivo viene bajando por el MTA. No dejas que llegue al *Exchange* del usuario para que el *Endpoint Antivirus* "se encargue". Lo purgas a nivel de cabecera antes de que toque tu AS (*Autonomous System*).
2. **DDoS Scrubbing Center:** Un ataque volumétrico colapsará tus tuberías físicas. Debes desviar el tráfico BGP y frenarlo/lavarlo (AT Field Brake) fuera de la red local (en órbita), porque si el tráfico toca tus *switches* de core, no hay reglas de Firewall que valgan.
3. **Abort de un Push (CI/CD):** Un junior hace un push con un `DROP TABLE` a producción. Tienes un ETA (el runner procesando). No esperas a ver si tu script de backup lo cubre en el suelo. Interceptas y cancelas el `job` in-flight.
