# Anatomía: Hélice, Amenaza Lateral y el Tanque de Clones

## Partes y Funciones de Seguridad

| Parte de la Amenaza/Defensa | Qué Parece | Qué Hace | Analogía de Seguridad (SRE/Sec) | Símbolo Ruby |
| :--- | :--- | :--- | :--- | :--- |
| **Helix Form** | Doble hélice de luz o anillo flexible. | El polimorfismo de Armisael antes de anclarse. | Un payload que no muestra firmas de daño hasta que se enlaza con el proceso huésped. | `armisael.fuse!(eva00)` |
| **Fusion** | La aguja de luz conectando al ángel y al piloto. | Asimila la consciencia y la bio-materia. Rei oye su propia voz desde el enemigo. | Un binario malicioso que se inyecta y usurpa un proceso legítimo en memoria (`Living-off-the-Land`). | `fusion_progress` / `eva00_fused` |
| **Lateral Threat** | Tentáculos que envuelven también a Eva-01. | El ángel intenta saltar al siguiente activo vital usando el primer host como puente. | Movimiento lateral (El atacante usa los tickets del Servidor A para autenticarse e infectar el Servidor B). | `lateral_to(eva01)` |
| **Node Sacrifice** | Detonación atómica / Cruz de luz. | Destruye al Eva-00, aniquilando al ángel y a Rei II por decisión propia. | Aislar e incinerar el contenedor/nodo infectado cortando la conexión de red (en este caso, fatal para la máquina). | `node_sacrifice!(eva)` |
| **Clone Tank** | Decenas de cuerpos en líquido naranja. | El sistema de Recuperación de Desastres (DR) biológico de NERV. | La bóveda oculta con snapshots o imágenes de servidor (VMs en estado crudo sin datos vivos). | `clone_tank.reveal!` |
| **Rei III Boot** | Rei viva pero distante. | Reinicio de operaciones en un hardware nuevo con un backup desactualizado. | Instanciar una nueva VM desde la imagen maestra de ayer. Los logs de las últimas 24h (la muerte de Rei II) se pierden. | `rei_iii_restore` / `identity_match < 1` |

## Diferencias Tecnológicas Críticas
*   **Fuse (23) vs Hijack (18):** Bardiel en el Ep 18 tomó el motor de movimiento. Armisael toma el *core* de la personalidad.
*   **Sacrificio Consentido (23) vs Dummy Override (18):** En el 18 la IA tomó el control y despedazó al enemigo (y a Toji). Aquí Rei toma la decisión y aprieta su propia secuencia de destrucción.
*   **Rei I (21) vs Rei III (23):** Rei I fue el prototipo destruido (Ep 21). Rei II es el clon operativo hasta este capítulo. Rei III es la restaurada con lagunas de memoria (`identity_mismatch`).
*   **Clone Tank (23) vs Dummy Plug (18):** El tanque es la infraestructura (la granja de servidores físicos); el Dummy Plug es un pedazo de software generado a partir de esa granja.

## Implicación
Hacer Disaster Recovery (DR) con seres humanos destruye su identidad. El laboratorio obliga a que el `identity_match` de Rei III sea menor a `1.0`. Si NERV reporta que "Rei está perfectamente restaurada como si nada hubiera pasado", es un falso positivo corporativo y el test fallará.
