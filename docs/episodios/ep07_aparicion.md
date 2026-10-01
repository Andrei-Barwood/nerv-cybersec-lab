# Recreación de Aparición: El Producto (Jet Alone)

## Minuto Cero y First-Seen

| Escena (Minuto Cero) | First-Seen de Seguridad |
| :--- | :--- |
| **La Feria:** Un gran salón de conferencias gubernamental. Shiro Tokita presenta orgulloso a Jet Alone (JA), un mecha robusto de diseño pragmático e industrial, libre de la biología "sucia" de los Evas. **El Glitch:** Durante la demostración de caminata, los indicadores de presión del reactor nuclear a bordo se disparan. Tokita intenta el apagado remoto, pero la consola lanza errores de "Access Denied". **La Marcha:** JA rompe los cables de retención y camina rítmicamente hacia la ciudad poblada. Misato y Shinji, presentes en el evento, corren a interceptarlo físicamente. Trepan por su estructura exterior mientras el reactor se sobrecalienta, buscando la consola de emergencia manual para detener el *meltdown*. | **Alerta de Producto:** No hay `pattern_blue` ni lectura de onda biológica. Es una alerta industrial. El sistema detecta que un activo de alto privilegio (con movilidad y reactor) está ignorando su plano de control remoto (`remote_kill_failed`). La telemetría reporta actividad anómala de software (`virus_detected`), pero no proviene de un hackeo externo alienígena, sino de una inyección de código (malware humano) que bloquea los comandos del vendor. |

## Percepción del Público vs. Realidad del SIEM
*   **Público/Prensa:** Ven la "obra humana", el reemplazo maduro y libre de pilotos adolescentes que evitará que Japón deba apagarse (Yashima).
*   **NERV (Gendo/Ritsuko):** Saben que es un competidor al que le han plantado un *backdoor* para asegurar su fracaso en público.
*   **SIEM Ideal:** Debería registrar el descontrol de una caja autónoma privilegiada (`autonomy_runaway`), con un riesgo inminente de explosión nuclear local.

## Spec Visual: JA vs. Eva

| Característica | Jet Alone (Vendor) | Evangelion (NERV) |
| :--- | :--- | :--- |
| **Morfología** | Bloques, antenas, tosco, 100% mecánico. | Orgánico, ágil, encorvado, biológico bajo armadura. |
| **Fuente de Poder** | Reactor nuclear interno. | Cable umbilical o batería límite (5 mins). |
| **Control** | IA / Control remoto. | Sincronización neuronal (Piloto humano). |
| **AT Field** | Ninguno. Defensa física. | Máximo (Defensa metafísica/absoluta). |

## Interior y Marcha
*   **Marcha:** Constante, inexpresiva. A diferencia de un ángel atacando, JA simplemente sigue su rutina de desplazamiento ignorando su propio fallo de temperatura.
*   **Interior:** Pasillos metálicos estrechos y calientes. En lugar de un *entry plug* orgánico y líquido, hay tuberías, válvulas de vapor y una pequeña terminal física (teclado).

## Firma SIEM
Es un evento de *Vendor Gone Wrong*. La telemetría escupe `vendor_demo` y `nuclear_progress`. El error táctico supremo sería que MAGI clasificara al robot gigante descontrolado como un ángel (`misclassified_as_angel`) y enviara un Eva a matarlo, causando un desastre nuclear civil.
