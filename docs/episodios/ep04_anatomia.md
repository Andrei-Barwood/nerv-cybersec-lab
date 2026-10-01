# Anatomía del Dilema del Erizo

## Tabla de Partes del Dilema

| Parte del Dilema | Qué Parece | Qué Hace | Analogía de SOC | Símbolo Ruby |
| :--- | :--- | :--- | :--- | :--- |
| **Calor (Heat)** | Cercanía humana, compartir espacio (vivir con el Comandante de IC). | Proveer contexto, datos, confianza mutua y cohesión. | Colaboración estrecha, red sin segmentación de roles. | `heat` |
| **Púas (Spikes)** | Roce, órdenes agresivas, el puñetazo de Toji, trauma. | Herir al otro al estar demasiado cerca sin límites claros. | Micro-management, culpa post-mortem, on-call abusivo. | `spikes` |
| **Distancia (Distance)** | Huir al cine, tomar trenes en bucle, aislarse con el SDAT. | Mecanismo de control. Ajusta el balance entre calor y daño. | Segmentación de red, rotación, límites de SLA. | `hedgehog_distance` |

## Métrica: Hedgehog Distance
La distancia no es un capricho emocional, sino un control de seguridad del factor humano. Se mide en un espectro de 0.0 a 1.0.
*   **0.0 (Fusión / `too_close`):** Vivir sin límites. El IC convive con el on-call las 24 hrs. El roce causa daño constante y burnout acelerado.
*   **0.3 - 0.7 (Banda Habitable):** Suficientemente cerca para transferir contexto y operar, pero con límites que evitan sangrar (separación de duty y casa, roles claros). Misato y Shinji deben hallar este umbral.
*   **1.0 (Aislamiento / `too_far`):** Deserción total. AWOL. El tren. No hay daño por púas, pero el frío (aislamiento de la red) inutiliza al nodo.

## Operator vs Eva
En los episodios anteriores, la salud y estado mental del piloto estaban acoplados a la unidad Eva (el `sync_rate` era del Eva). A partir de ahora, el humano debe ser modelado independientemente. El `Operator` tiene su propio ciclo de vida, puede renunciar (`AWOL`) y tiene una `hedgehog_distance`. El hardware (Eva) no huye; el humano sí.

## Failover-pieza vs Failover-humano
Gendo utiliza a Rei como un failover de hardware (una pieza de repuesto). Si el piloto principal deserta, enchufa a Rei. Sin embargo, ella está gravemente herida (del ep 00). Usar un backup herido como "amenaza de recambio" para obligar al principal a trabajar es un failover tóxico. Ignora por completo la `hedgehog_distance` del primario y del secundario.

## Implicación Práctica
Un Eva-01 al 100% de mantenimiento, con los frenos listos y los rifles cargados, tiene una capacidad real de cero si su operador está en el andén de un tren esperando para irse de la ciudad. El mantenimiento del hardware no cubre el mantenimiento del equipo humano.
