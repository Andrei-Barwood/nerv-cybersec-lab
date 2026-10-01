# Patrón: Amenaza Partida (La Réplica te Reconstruye)

## Escena Breve
Eva-02 blande un hacha gigantesca y corta a Israfel verticalmente en dos. Asuka sonríe, esperando la victoria, pero las dos mitades se apartan, regeneran rostros y brazos, y proceden a golpear al Eva-01 y al Eva-02 en una paliza coordinada donde los defensores se estorban mutuamente. El `desync` es total. Tienen que retirar las unidades bajo fuego de cobertura para no perderlas.

## Patrón: AMENAZA_PARTIDA
Un atacante moderno rara vez tiene un único Punto Único de Falla (SPOF).
*   **Precondiciones:** El defensor usa ataques en serie (secuenciales) o asume que el primer impacto elimina el 100% de la carga del atacante.
*   **Síntoma (Split):** El ataque "exitoso" inicial genera dos vectores de amenaza paralelos y replicados.
*   **Error de Playbook (Jerarquía):** Asumir que "Asuka lidera y Shinji sigue" (como en el Ep 08). Si hay un líder y un seguidor, siempre existirá un $\Delta t$. Contra una amenaza partida, el delta genera el *rejoin*. No debe haber líderes; debe haber un reloj compartido (`RehearsedSharedClock`).

## Tabla de Métodos en el Episodio 09

| Método de Respuesta | Resultado Esperado | Justificación |
| :--- | :--- | :--- |
| `DualPlug` (Ep 08) | **FAIL** | Un solo mecha no abarca a Alpha y Beta. |
| `Yashima` (Ep 06) | **FAIL** | Imposibilidad física de doble apuntado atómico. |
| `Mina N²` (Ep 01) | **STUN** | Aturde (`n2_stun_window`) pero el core sobrevive. |
| `1x CoreStrike` | **REJOIN** | El otro núcleo está vivo y reconstruye al objetivo. |
| `2x CoreStrike` (Δt > epsilon) | **REJOIN** | Fueron golpeados, pero no en la misma ventana atómica. |
| **`2x CoreStrike` (Δt ≤ epsilon)** | **SUCCESS (`contained_controlled`)** | Ambas réplicas son aniquiladas atómicamente, tras el ensayo. |

## Analogías de Seguridad
1. **Doble C2 (Command & Control):** Un *ransomware* se comunica con dos servidores C2. Bloqueas uno en el firewall corporativo, y el malware usa la réplica activa en 20ms para rotar sus claves. Ambos dominios deben bloquearse en la misma ventana de commit de red.
2. **Active-Directory Replicado:** Un atacante planta persistencia en dos Controladores de Dominio. Eliminar las credenciales en DC1 y esperar minutos para hacerlo en DC2 hace que AD replique la persistencia de vuelta a DC1.
3. **Change Window Simultáneo:** Dos equipos de ingeniería (Redes y Bases de Datos) deben presionar "Deploy" al mismo segundo exacto para evitar un desastre de *downtime* inter-dependiente.

## Señales SIEM y Fronteras
*   **Señal SIEM:** "El 50% de éxito contra una amenaza de alta disponibilidad es un 0% de éxito." Un *core down* es solo un `rejoin` en camino.
*   **Frontera con Yashima/DualPlug:** Yashima separó roles (Arma / Escudo). DualPlug unió mentes (2 en 1). El Baile une Relojes (2 en 2 cuerpos).
