# Patrón: ¿Apagas el host con tu compañero logueado?

## Escena Breve
El radar no miente: el Patrón Azul viene de la Unidad-03. En menos de cinco minutos, Eva-00 (brazo infectado) y Eva-02 (desmembrado en combate cuerpo a cuerpo) están inoperativos. El Ángel-Eva se abalanza sobre Shinji. "Es un ángel, destrúyelo", ordena Gendo Ikari. "¡No puedo, hay un niño adentro! ¡Lo mataré!", implora Shinji, paralizado por la negativa ética. Gendo corta la comunicación con la cabina. Activa el Dummy Plug, introduciendo el patrón mental emulado de Rei Ayanami. La interfaz de Shinji se bloquea ("Operator Input Discarded"). Obligado a mirar, Shinji presencia cómo su propia unidad descuartiza al Eva-03, le arranca la armadura con las manos desnudas y tritura el Entry Plug hasta que los chillidos cesan. Cuando abren la cápsula, Shinji descubre que la víctima era Toji Suzuhara.

## Patrón: TRUSTED_HIJACK
La amenaza perfecta no es la que viene de fuera, sino la que convierte tu activo más valioso (el Eva) en el vector, usando tus propios protocolos (y a un compañero de rehén) para paralizar al SOC.
*   **Precondiciones:** El setup laxo del Ep 17. Un host que tiene todos los privilegios en la red.
*   **Síntoma:** Un activo gestionado emitiendo firmas de actor hostil (`host_managed_as_angel`).
*   **Error de Respuesta (Override-as-Higiene):** Creer que aislar al humano del ciclo de decisiones (`Dummy Plug`) e implementar "Auto-Remediación Estricta" a cualquier costo es una victoria táctica. Ganas el ticket, pierdes el departamento.

## Tabla de Métodos en el Episodio 18

| Método de Respuesta | Resultado Esperado | Justificación |
| :--- | :--- | :--- |
| `Eva-00 / Eva-02 Melee` | **FAIL** | El enemigo tiene la misma fuerza de combate. Fueron aplastados. |
| `Casper Reverse-Hack` | **FAIL** | El enemigo no es software alojado en MAGI. |
| `Jet Alone Password` | **FAIL** | Bardiel no tiene un puerto de debug para contraseñas. |
| `Refuse-to-Burn sin Dummy` | **FAIL (Unresolved)** | Shinji se queda quieto; Bardiel destruye el Geofront. |
| `Shinji mata sabiendo que es Toji` | **(No Canónico)** | No aplica al lab oficial. |
| **`Dummy Plug (Override Root)`** | **SUCIO (`contained_uncontrolled`, 1)**| El incidente se cierra, pero la confianza del operador está arruinada. El costo de sangre es inaceptable. |

## Analogías de Seguridad
1. **Wipe de Sesión Viva:** Un Ransomware entra al portátil del CFO. En lugar de aislar la red y tratar de recuperar datos, el SOC de NERV manda un comando `wipefs` remoto mientras el CFO está intentando exportar archivos vitales de la empresa, destruyendo ambos.
2. **Auto-Quarantine Desbocado:** El analista nivel 2 frena un playbook de EDR automático porque sabe que aislar ese servidor tirará la red de pagos. El gerente (Gendo) pulsa "Override" porque el SLA dicta limpieza inmediata, tirando la red de pagos.
3. **El Jump Host Poseído:** El atacante tomó el Bastion Host. El defensor debe bombardear la puerta que ellos mismos construyeron.

## Fronteras
*   **Beast (Ep 02):** La unidad se encendió sola para *proteger* a Shinji. **Dummy (Ep 18):** NERV encendió el software para *ignorar* a Shinji.
*   **Zeruel (Ep 19):** El próximo ángel no usará rehenes. Entrará por la puerta principal a puro láser, destrozará 24 capas de blindaje y dejará el cuartel en llamas. Y no habrá Dummy Plug que lo detenga.
