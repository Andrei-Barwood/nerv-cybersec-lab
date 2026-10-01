# Controles Preventivos: Logística Segura

## Preventivo vs. Solo Mitigable

| Controles PREVENIBLES (Antes del Viaje) | Controles SOLO MITIGABLES (En Medio del Océano) |
| :--- | :--- |
| **Doctrina por Teatro (Theater-Specific):** Entrenar tácticas de combate en medios fluidos y altamar, en lugar de asumir que todo combate será estático en el geofront. | **Dual Plug (Mitigación de Emergencia):** Permitir a dos operadores compartir consola porque no hay otra infraestructura disponible a bordo. |
| **Rutas sin Tour de Prensa:** Transportar el hardware más crítico del mundo (Eva-02) no debe combinarse con diplomacia y prensa, que exponen la ruta al enemigo y ralentizan la maniobra. | **Fuego Naval a Corta Distancia:** Reutilizar artillería *legacy* y apuntar directamente en la zona vulerable forzada por el Eva-02 (Combined Arms *ad hoc*). |
| **Carga Extra Auditada (Kaji):** No permitir objetos no clasificados (Adam en un maletín) a bordo del mismo convoy militar que sirve de carnada. | |
| **Onboarding Previo al Incidente:** Asegurar que el Tercer Piloto (Asuka) conozca a sus contrapartes técnicas (Shinji) *antes* de que suene la alarma P1. | |

## Anti-patrones Preventivos (Lecciones)
1. **Last-Theater-Wins:** La falacia de preparar la defensa usando únicamente las métricas del último incidente. "Ramiel nos atacó de lejos, fortifiquemos los tejados." Gaghiel atacó por abajo, en el agua.
2. **Silencio-en-Casa (Home-Blindness):** Negarse a escalar la alerta solo porque el Dashboard local (Tokio-3) no muestra la amenaza. La red logística es igual de crítica que el HQ.
3. **Close-Range-Nunca:** Dogmatizar lecciones de incidentes anteriores. Acercarse a Ramiel era un suicidio; alejarse de Gaghiel es imposible en el agua. El contexto es el rey.

## Higiene de Tránsito Logístico para un SOC
*   Aplica cifrado y escolta robusta (In-Transit encryption) a los activos críticos que cambian de datacenter.
*   Implementa playbooks modulares: no asumas que tendrás la misma visibilidad de logs en la nube de un tercero (Pacífico) que en on-premise (Tokio-3).
*   Realiza "Tabletop Exercises" asumiendo escenarios de falla logística (Ej: "Perdemos el camión de las cintas de respaldo").
*   Integra las herramientas *legacy* (Armas Convencionales de la Flota) con las nuevas (Eva-02) en manuales de respuesta mixta.
*   El acceso Dual-Approval no planificado (Dual Plug) puede funcionar en crisis, pero debe generar una alerta severa de auditoría para su revisión posterior.
*   El *onboarding* de talento debe incluir simulacros de crisis, no iniciar con una.
*   No introduzcas activos de alto riesgo biológico/clasificado (Kaji) en el mismo transporte de tus activos críticos operacionales.
