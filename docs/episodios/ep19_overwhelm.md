# Patrón: El Overwhelm que rompe los Playbooks

## Escena Breve
Eva-02 ha caído, privada de extremidades en 20 segundos de combate. Eva-00 de Rei ha intentado un asalto suicida con una bomba N², pero el humo se disipa dejando al Ángel intacto. En el centro de mando, Gendo ordena: "Desplieguen la Unidad 01, usen el Dummy Plug". La pantalla de MAGI parpadea: *Rechazado*. La automatización corporativa ha topado con su techo. Shinji, que había abandonado NERV, corre de vuelta a la cabina. Sale, pelea, se queda sin energía y pierde el brazo del robot. Pero entonces, el Eva despierta (`Berserk`). Destroza al ángel, despedaza su escudo y consume su núcleo, el Motor S2. NERV observa horrorizada cómo su "herramienta" se vuelve un dios biológico. Cuando Misato abre el Entry Plug para sacar al piloto, solo encuentra líquido. Shinji fue consumido por su propio firewall.

## Patrón: OVERWHELM
Cuando la amenaza supera la capacidad diseñada de toda la infraestructura defensiva. Los WAFs caen (Asuka), los playbooks destructivos caen (Rei, Dummy) y la única forma de frenar al atacante es permitir que el propio sistema base asuma comportamientos no autorizados (Beast), adquiera el arsenal del enemigo (S2) y disuelva las fronteras con su administrador (Introjection).
*   **Precondiciones:** Infraestructura que creía estar segura porque ayer resolvió un problema sucio (Ep 18).
*   **Síntoma (Dummy Fail):** Herramientas de automatización o SOAR colgándose o siendo ineficaces ante *payloads* no previstos.
*   **Error (Producto-como-Eva):** Gendo descubriendo que el Dummy Plug no es una IA milagrosa. Tiene un límite duro dictado por la complejidad del adversario y el entorno.

## Tabla de Métodos en el Episodio 19

| Método de Respuesta | Resultado Esperado | Justificación |
| :--- | :--- | :--- |
| `Skill de Asuka (Armor)` | **FAIL (Stripped)** | El talento L2 no detiene un ataque APT abrumador. |
| `Bomba N2 Suicida (Rei)` | **FAIL** | Igual que en Sachiel, la fuerza no-nuclear estándar fracasa. |
| **`Dummy Plug`** | **FAIL (`dummy_failed`)** | El script es rechazado. El techo del SOAR está documentado. |
| `Casper Reverse-Hack` | **FAIL** | Zeruel no es Ireul. Es cinético, no informático. |
| `Beast + S2 + Introject` | **SUCIO (`contained_uncontrolled`, 1)**| Contiene la amenaza, pero corrompe permanentemente la arquitectura de NERV y devora al analista L1. |

## Analogías de Seguridad
1. **Techo del Auto-Response:** Tu EDR con "Machine Learning" detiene macros de Office (Bardiel). Pero cuando entra un grupo de estado-nación con un Exploit remoto de 0-click y evasión en memoria (Zeruel), tu dashboard se queda en blanco (`dummy_fail`).
2. **Eat Attacker Infra into Prod (S2):** Paras un ataque de Botnet apoderándote del código C2 de los atacantes y desplegándolo en tus propios servidores de producción para ganarles en tráfico. Ahora tu servidor principal corre malware ajeno indocumentado y ha mutado.
3. **El Admin Disuelto (Introjection):** Un analista sobre-privilegiado dedica 90 horas seguidas a reescribir manualmente el código base para frenar la brecha; su identidad corporativa y sus logs operativos se mezclan por completo con los de la máquina hasta que es imposible separarlo del sistema que intentaba salvar.

## Fronteras
*   **18 (Dummy Win):** El Dummy engañó a Gendo ayer haciéndole creer que era omnipotente. Hoy, el Dummy demuestra ser basura.
*   **02 (Beast puro):** El Beast del 02 salvó la vida del piloto y luego se apagó. El Beast del 19 se come al ángel y luego al piloto.
*   **20 (Mes / Oral Stage):** El Episodio 19 TERMINA en la cabina vacía. La exploración psicológica es la tarea del próximo playbook.
