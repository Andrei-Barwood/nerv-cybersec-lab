# Patrón: Fusión con Defensor (Worm en Proceso Local)

## Escena Breve
El anillo levita en el valle. Cuando Rei despliega al Eva-00, el anillo rompe su formación y se clava como un punzón infinito en su estómago. En lugar de empujar, la luz empieza a coserse por dentro del blindaje biológico. Armisael está asimilando la consciencia de Rei, mostrándole su propia soledad e invitándola a fundirse con él. Shinji sale en el Eva-01 al rescate. El ángel reacciona inmediatamente, lanzando extensiones desde la espalda del Eva-00 hacia el Eva-01, comenzando un salto letal (`Lateral Threat`). Rei sabe que Shinji no la golpeará si ella está en medio. Tomando el control, Rei invierte el AT Field, encierra la materia fusionada y activa la secuencia de autodestrucción. NERV pierde la Unidad-00, al ángel y a Rei II. A la mañana siguiente, Gendo despacha un nuevo cuerpo sin los recuerdos trágicos de las últimas horas desde un inmenso sótano de clones oculto a MAGI.

## Patrón: FUSION_CON_DEFENSOR
Cuando el adversario entra en el perímetro, no ataca el objetivo inmediatamente. Intercepta al primer host/sensor que acude en defensa y se inyecta en su memoria (Living-off-the-land). Desde ahí, el adversario usa la confianza criptográfica (o emocional) del primer host para hacer pivote y asimilar al host más crítico (Shinji/Eva-01).
*   **Precondiciones:** El EDR confía ciegamente en sí mismo y no está aislado del servidor crítico de base de datos.
*   **Síntoma:** El nodo defensor emite firmas de ataque; la telemetría muestra dos procesos (ángel y piloto) corriendo en la misma porción de memoria RAM (`eva00_fused`).
*   **Error (Rehusarse al Wipe):** Tratar de curar el servidor con un parche (cuchillo, rifle) o un Dummy mientras el atacante ya es *Root*. La única opción es el apagón.

## Tabla de Métodos en el Episodio 23

| Método de Respuesta | Resultado Esperado | Justificación |
| :--- | :--- | :--- |
| `Sortie Melee (Eva-02)` | **FAIL** | Asuka está fuera de línea (`psyche_broken`). |
| `Longinus Fired` | **FAIL** | No está disponible (`spear_lost` en Ep 22). |
| `Dummy Plug / Casper` | **FAIL** | Ni el bot ni MAGI pueden resolver un injerto a nivel neurológico. |
| `No Sacrifice / Intentar Rescate` | **FAIL (Exit 2)** | El ángel salta con éxito al Eva-01 (Shinji) y la fusión corrompe toda la red de NERV. |
| **`Node Sacrifice (Rei)`** | **Victoria Controlada (Exit 0)**| Rei acepta el apagado. El nodo desaparece, pero se frena el salto lateral. |
| **`... y Restore a Rei III`** | **Obligatorio para el 0** | NERV restaura el servicio, pero con `identity_mismatch`. |

## Analogías de Seguridad
1. **El Servidor Saltador (Lateral Movement):** Un atacante vulnera tu servidor de QA no porque le importe el código en pruebas, sino para obtener los credenciales de Active Directory que ese servidor usa para hablar con Producción. Hay que aislar/borrar QA de inmediato.
2. **Snapshot vs Humano:** Si tu servidor cae, montas el snapshot de anoche y todo sigue vivo y funcional. NERV aplica este concepto a una piloto: carga a Rei III desde la "imagen maestra" del tanque de clones, demostrando que su arquitectura de personal carece totalmente de empatía.
3. **Worm en el Antivirus:** Armisael es un virus que infecta el binario de tu EDR (Endpoint Detection Response) y usa los permisos de sistema del antivirus para encriptar tu disco.

## Fronteras
*   **Episodio 18 (Bardiel):** Allí el Eva-03 fue infectado antes de tocar tierra. Aquí el Eva-00 salió sano y fue asimilado *durante* el combate táctico.
*   **Episodio 22 (Arael):** El rayo era unidireccional. Aquí la fusión fluye en ambas direcciones (ángel dentro, Rei sintiendo al ángel).
