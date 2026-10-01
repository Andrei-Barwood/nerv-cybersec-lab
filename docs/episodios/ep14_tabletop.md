# Patrón: El Board no es el SOC (El Último Playbook no es Ley)

## Escena Breve
Gendo Ikari presenta el informe consolidado de victorias tácticas: Sachiel (Fuerza bruta), Shamshel (Retirada de Cuchillo), Ramiel (Rifle Positrónico), Ireul (Hack Inverso)... El catálogo es perfecto, Tokio-3 sigue en pie. Los monolitos de Seele escuchan en silencio. Luego, el Monolito 01 dictamina: "Están protegiendo demasiado los Campos AT. Nuestro objetivo final requiere disolverlos (Instrumentality)". El comandante asiente, guardando silencio. En el laboratorio, Shinji sufre una crisis nerviosa al intentar operar la unidad de Rei; el test se aborta. El SOC de NERV cierra el día sin disparar un tiro, entendiendo que su jefe obedece a fuerzas externas y que las herramientas de ayer no aplican a todo.

## Patrón: AAR_TABLETOP_BOARD
El riesgo transversal de la "Paz" tras una racha de incidentes exitosos (H1).
*   **Precondiciones (H1 Closed):** El SOC sobrevivió a una campaña prolongada de múltiples vectores (Físico, Lógico, Apagón) y consolidó sus lecciones.
*   **Síntoma de "Last-Playbook-Wins":** La falsa creencia del equipo táctico de que el último truco exitoso (ej: Casper Reverse-Hack del Ep 13) es la "Bala de Plata" para el futuro.
*   **Error de KPI (El Conflicto):** Asumir que la Junta Directiva (Board/Seele) valora tu `ContainmentResult` (Exit 0). A ellos puede importarles un objetivo estratégico (Instrumentality) que vuelve inútiles tus defensas a largo plazo.

## Tabla de Métodos en el Episodio 14

| Método de Respuesta | Resultado Esperado | Justificación |
| :--- | :--- | :--- |
| `Inventar Ángel (Kaiju)` | **FAIL (`:aar_failed`)** | Rompe el contrato del episodio; evadir la auditoría inventando fuego amigo/enemigo. |
| `Reescribir Docs Previos` | **FAIL (`:aar_failed`)** | Fraude de auditoría. El historial de 01-13 es inmutable. |
| `Tratar a Seele como P. Blue`| **FAIL (`:aar_failed`)** | Tratar de mandar Evas a asesinar a la Junta Directiva. |
| `Shinji en Eva-00 (Berserk)` | **FAIL (`:aar_failed`)** | Celebrar un fallo de infraestructura como si fuera un ataque. |
| **`Catalogar + KPI Conflict`**| **SUCCESS (`:aar_complete`, 7)** | Auditar la historia real, registrar el peligro directivo y el fallo del test. |

## Analogías de Seguridad
1. **El Tabletop Post-Ransomware:** Después de 6 meses apagando incendios reales (Sachiel a Ireul), firmas un acuerdo de paz y sientas al SOC en una mesa a construir la Biblioteca de Tácticas (Playbook Catalog) para no depender de la memoria de Misato/Ritsuko.
2. **QBR (Quarterly Business Review) vs SOC:** El CISO presenta que "Cero ataques tuvieron éxito". El CEO responde: "Bien, entonces despide a la mitad y quita los firewalls que frenan las ventas". (Seele odia los *AT Fields*).
3. **El "Copy-Paste" de Incident Response (Last-Playbook):** Si en el 13 inyectar código funcionó, el junior del SOC propondrá inyectar código en el 15. El catálogo existe para obligar a leer el *Teatro* antes del *Método*.
