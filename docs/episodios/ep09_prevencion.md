# Controles Preventivos: Sincronización y Tabletop

## Preventivo vs. Solo Mitigable

| Controles PREVENIBLES (Antes del Split) | Controles SOLO MITIGABLES (Durante la Ventana N²) |
| :--- | :--- |
| **Sincronización Estructural (`pair_sync`):** Medir y entrenar el acoplamiento de la base operativa ANTES del despliegue, no solo métricas individuales (`sync_rate`). | **Rehearsal Aislado (Baile):** Usar la ventana del incidente real para entrenar a los pilotos durante horas en maniobras de espejo. |
| **Catálogo de Ventanas (Stun):** Comprender institucionalmente que armas como la N² contra un AT Field actúan como herramientas de contención/aislamiento (Pause), no como `Kill`. | **Epsilon Check:** Confirmar que los sistemas locales pueden orquestar peticiones bajo el `epsilon` requerido; de lo contrario el `rejoin` es inevitable. |
| **Game-Day de Alta Disponibilidad:** Efectuar simulacros de failover asumiendo que el atacante (o el malware) utilizará replicación activo-activo. | |

## Anti-patrones Preventivos (Lecciones)
1. **Last-Coordination-Wins (La Mentira del Liderazgo):** "Como Asuka lideró exitosamente en el mar (Ep 08), dejemos que lidere todos los incidentes tácticos." Si hay líder y seguidor, siempre hay asincronía. Aquí se necesita igualdad de tempo (Shared Clock).
2. **N2-as-Kill:** Seguir confiando en que "una explosión más grande lo matará." La mina N² fue inútil para matar a Sachiel y es inútil para matar a Israfel. Su único propósito táctico es el aturdimiento (`Stun`).
3. **DualPlug-as-Sync:** Creer que amontonar personal (o poner a dos analistas en la misma sala/plug) garantiza sincronización. El ritmo (`pair_sync`) requiere métricas cruzadas, no proximidad.

## Higiene de Ventanas de Sincronización para un SOC
*   El *Tabletop Exercise* (Ensayo/Baile) no es algo de "cultura de empresa" para llevarse bien; es un `runbook` militar ejecutable de suma cero.
*   En sistemas replicados (como un ataque HA), un apagado asíncrono significa que el sistema se autorepara. Define y respeta tu `epsilon` (Ventana de cambio).
*   Mide el acoplamiento de tu equipo (cómo reaccionan al input del otro) no solo sus *skills* individuales. Un Asuka 80% y un Shinji 60% desfasados rinden un 0%.
*   Catalogar herramientas destructivas (como aislar un Datacenter) como "creadoras de ventanas de investigación", y no como "solución del ticket".
*   Si un playbook requiere "milisegundos" humanos, no es sostenible. Automatiza el sync donde sea posible (lo que NERV falla sistemáticamente al usar niños).
