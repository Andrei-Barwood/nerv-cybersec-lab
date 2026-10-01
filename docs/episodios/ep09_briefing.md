# Briefing Episodio 09: Both of You, Dance Like You Want to Win! (INC-ISRAFEL-001)

## Contrato
El incidente INC-ISRAFEL-001 introduce un ángel con Alta Disponibilidad (HA): Israfel. Al ser atacado, su cuerpo se parte (`split`) en dos nodos activos idénticos. Derribar un solo nodo resulta en que el nodo sobreviviente reensamble (`rejoin`) al caído. El `DualPlug` del Episodio 08 o el disparo de un solo operador del Episodio 06 son inútiles aquí. Dos Evas (Eva-01 y Eva-02) deben golpear simultáneamente a los dos núcleos separados.

## Lo que este episodio enseña
*   **Amenaza Partida (HA del Atacante):** Un atacante que usa replicación activa. Destruir la mitad no sirve; es preciso un cambio atómico.
*   **Sincronización vs Jerarquía:** A diferencia del mar, donde Asuka lideró (jerarquía), aquí ambos operadores deben igualar su tiempo al milisegundo (reloj compartido).
*   **Stun Window (N²):** El uso de una mina N² para paralizar temporalmente al objetivo y comprar tiempo de ensayo, no como arma letal (que sigue fallando contra los core adámicos).

## Lo que este episodio NO enseña
*   No es un incidente de un operador en dos cuerpos ni de dos operadores en un cuerpo (`DualPlug`).
*   No es el `Yashima` (disparo lejano con escudo).
*   No es caza en magma (Sandalphon, Ep 10).
*   No es un Dummy Plug.
*   El baile no es una resolución romántica, es un procedimiento técnico de coordinación de clocks.

## Definición de Victoria y Derrota
*   **Victoria (Lab):** `contained_controlled` (Exit 0) logrado ÚNICAMENTE cuando se registran dos ataques simultáneos (`simultaneous_strike`) sobre los dos cores, dentro del umbral temporal (`epsilon`), después de un ensayo (`rehearsal_done`).
*   **Derrota (Lab):** `unresolved` (Exit 2) si se ataca con un solo Eva, si Asuka trata de liderar sin ritmo (`desync`), o si se intenta usar la mina N² como victoria táctica. El uso del `Beast` mode resulta en `contained_uncontrolled`.

## Vocabulario Nuevo
*   **Split / Rejoin:** El ángel dividiéndose en dos cores vivos, y recomponiéndose si no son eliminados juntos.
*   **Dual-Core:** Dos núcleos (Alpha y Beta) activos al mismo tiempo.
*   **Ventana de Sync:** El momento temporal donde ambos inputs coinciden.
*   **Ensayo / Baile (Rehearsal):** Fase de `Tabletop` o preparación de *muscle memory*.
*   **N²-Timer:** El tiempo de aturdimiento (`Stun`) que provee el arma de destrucción masiva.
*   **Epsilon Temporal:** El $\Delta t$ máximo tolerable entre el golpe del Eva-01 y del Eva-02.

## Relación con incidentes anteriores
*   **Ep 01:** La mina N² fue inútil contra Sachiel como kill. Aquí también, pero funciona como `Stun` (aturdimiento).
*   **Ep 06 (Yashima):** La cooperación no es por roles (Tirador / Escudo) sino en espejo (Golpe / Golpe).
*   **Ep 08 (Gaghiel):** El `DualPlug` entrenó dos operadores en un solo Eva con jerarquía (Lead). Aquí se necesitan dos Evas sin jerarquía.

## Lista de Secciones
1.  **Briefing:** Contrato (INC-ISRAFEL-001; dos cuerpos, un reloj).
2.  **Aparición:** Un ángel, luego dos. El ensayo de baile.
3.  **Anatomía:** El `split`, los dos cores y el timer N².
4.  **Patrón Réplica:** Atacar un nodo alimenta al otro.
5.  **TTPs:** Fases del desync inicial y la coordinación posterior.
6.  **Detección:** Un `split` no debe abrir dos tickets SIEM aislados.
7.  **Prevención:** Evitar el estreno de tácticas sin ensayo previo.
8.  **Playbook:** Procedimiento del baile (Ensayo y Strike simultáneo).
9.  **Factor Humano:** Shinji mantiene el tempo; Asuka debe ceder el lead solitario.
10. **Contrato Ruby:** Implementación de Israfel y `epsilon`.
11. **Laboratorio:** Run exitoso y log output (Desync primero, Sync después).
12. **After-Action:** Cierre del dual-core y traspaso al embrión de magma.
