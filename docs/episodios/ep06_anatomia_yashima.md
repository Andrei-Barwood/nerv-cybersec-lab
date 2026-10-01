# Anatomía de la Operación Yashima

## Componentes de la Operación

| Parte / Factor | Qué Parece | Qué Hace | Analogía de Seguridad (SRE/Sec) | Símbolo Ruby |
| :--- | :--- | :--- | :--- | :--- |
| **Positron Rifle** | Cañón inmenso conectado a transformadores. | Proyecta energía a larga distancia sin entrar en la Kill Zone. | Herramienta de *exploit* o asalto OOB (Out-of-Band) de alto calibre. | `PositronRifle` |
| **Power Grid** | El suministro eléctrico de un país. | Alimenta el arma. Sin esto, el arma es un pisapapeles inútil. | Presupuesto masivo de CPU/Cloud; ancho de banda dedicado; "apagar prod para salvar prod". | `PowerGrid` |
| **Eva-00 / Escudo** | Robot sosteniendo una placa térmica. | Absorbe el fuego de respuesta (IPS) para mantener al atacante primario vivo. | Proxy inverso ablativo; Nodo sacrificable o WAF de un solo uso. | `AblativeShield` |
| **Yashima** | La operación conjunta. | Orquesta arma, energía y escudo en un timing crítico frente al reloj del taladro. | Playbook maestro de mitigación P0. | `OperationYashima` |
| **Disparo 1 & 2** | `fire_first!` / `fire_second!` | El primero falla (mide mal la resistencia). El segundo da en el blanco crítico. | Iteración rápida bajo fuego. El primer escaneo activo falla, el segundo tiene el offset correcto. | `fire_first!`, `fire_second!` |

## Implicaciones Operativas
*   **Rifle sin Grid:** Teatro de seguridad. Equivalente a intentar crackear un cifrado fuerte con una calculadora. No penetrará el `AT Field` de Ramiel.
*   **Rifle sin Escudo:** Suicidio remoto. Al disparar (`fire_first!`), revelas tu IP/posición. Ramiel aplicará su `ParticleBeam` al origen. Sin `AblativeShield`, el francotirador (`Eva-01`) se funde.
*   **Un Solo Disparo:** La física del AT Field desvía el primer rayo. Se requiere calibración en tiempo real. Un solo disparo mágico no existe en este laboratorio.
