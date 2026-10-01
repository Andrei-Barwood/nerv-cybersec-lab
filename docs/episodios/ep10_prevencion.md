# Controles Preventivos: Hunt Embrionario y Budget Térmico

## Preventivo vs. Solo Mitigable

| Controles PREVENIBLES (Antes del Volcán) | Controles SOLO MITIGABLES (Durante el Dive) |
| :--- | :--- |
| **Monitoreo de Anomalías Tempranas (Staging Hunt):** Desarrollar reglas SIEM capaces de detectar "semillas" dormidas o inasimilables en vez de esperar a las "grandes alarmas rojas". | **Abort-to-Kill (Break-glass):** En medio del fragor científico, usar la potestad militar ejecutiva para anular órdenes operativas de recolectar la muestra a favor del asesinato con cuchillo. |
| **Acuerdo Previo de Abort Criteria:** Determinar institucionalmente (entre Inteligencia y Contención) en qué umbral de `hatch_progress` se sacrificará la muestra, ANTES de que la Asuka pise el magma. | **Rescate de Soporte en Caliente:** Extraer por cables de acero a la piloto que ya agotó el 99% de su `cooling` al borde de la ebullición. |
| **Dotación de D-Type Equipment:** Acondicionar plataformas con blindaje extremo para entornos perjudiciales, reconociendo que el teatro puede no ser una ciudad amigable de pasto. | |

## Anti-patrones Preventivos (Lecciones)
1. **Last-Playbook-Wins (Bailar en el Magma):** El sesgo cognitivo enorme de que, como Asuka y Shinji encontraron la victoria coordinándose a nivel de gemelos (Ep 09), el próximo incidente también se resolverá enviando a ambos en paralelo.
2. **Sample-as-KPI (Muestra Viva por encima de Vida):** Permitir que las métricas de Ritsuko (Recolectar un clon vivo para los laboratorios) dominen el triage de seguridad, provocando una ventana de *dwell* infinita.
3. **Wait-For-Adult-TTPs (El Miedo de Falso Positivo):** "Vamos a esperar a ver si tiene brazos y piernas antes de lanzar un Eva." Retrasar la contención por miedo a declarar una alarma falsa garantizará la derrota, pues un Sandalphon maduro en su elemento natural barrerá con el Geofront.

## Higiene de Threat Hunting Prenacimiento para un SOC
*   Los IoCs más tenues (conexiones a un C2 dormido, un archivo ofuscado pero inerte) son *Embriónicos*. Ataca ahí, no esperes a que el Ransomware enarbole una interfaz roja y empiece a cifrar.
*   En *hunting* de infraestructuras degradadas (Servidores a máxima capacidad, DarkWeb hostil), debes establecer tu budget de *Dwell*: "Intentaré recolectar memoria por 15 minutos (Cooling). Luego, apago y formateo".
*   Si la recolección forense (Jaula/Capture Cage) activa mecanismos anti-análisis del malware o acelera su ejecución (*Hatch*), el aborto debe ser inmediato.
*   La política de retención de muestras no puede estar por encima de la política de contención de desastres.
*   Separa las tareas: El analista primario que sufre la carga térmica (Diver) necesita que el secundario (Support) se limite a rescatarlo y sostenerlo, no a entrometerse con su propio análisis o intentar robar su gloria.
