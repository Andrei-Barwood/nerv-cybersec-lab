# Controles Preventivos: Preparando la Segunda Mitad

## Preventivo vs. Solo Mitigable

| Controles PREVENIBLES (Higiene Documental) | Controles SOLO MITIGABLES (Riesgos Estratégicos) |
| :--- | :--- |
| **Catálogo Indexado:** Indexar 100% de los incidentes tácticos. Esto evita que los nuevos miembros del SOC propongan mitigaciones balísticas para amenazas de software. | **KPI del Board (Seele):** El deseo directivo de "desmantelar la seguridad aislando" (Instrumentality) no se puede parchear ni detener por el SOC; solo se documenta en el registro de riesgos (`kpi_conflict`). |
| **Operator Pairing Tests (Pre-Vuelo):** Validar en entorno controlado si la llave de acceso de un administrador funciona en el servidor B. Descubrir que Shinji es incompatible con el Eva-00 *antes* de que haya un ángel afuera salva vidas. | **Sesgo Last-Playbook-Wins:** La memoria humana siempre prioriza lo último que funcionó (Casper Reverse-Hack). El SOC es vulnerable a la sobreconfianza, mitigable leyendo el catálogo. |
| **Inmutabilidad Forense (`CiteDoNotRewrite`):** El AAR nunca altera los artefactos de memoria previos. Lo que pasó en Ep 07 se queda en Ep 07. | |

## Anti-patrones Preventivos (Lecciones)
1. **Clip-Show-as-AAR:** Mostrar videos bonitos de los *Sniper Shots* de Positrones en el QBR, omitiendo que en Matarael el HQ se quedó sin luz por no pagar el recibo, o que Jet Alone fue un riesgo de Supply Chain. Un catálogo cuenta la historia cruda.
2. **Last-Playbook-Default:** Intentar aplicar el `AtFieldBrake` (Ep 12) o el `MagiInfection` (Ep 13) por defecto a cualquier *Pattern Blue* futuro. Ningún ángel H2 será igual a un H1.
3. **Board-as-Angel:** Tratar al auditor (Seele) como un atacante a expulsar con Evas. Si tu CISO dispara contra la mesa de accionistas, la empresa desaparece.

## Higiene de Tabletop en un SOC Real
*   Calendariza un Tabletop por trimestre. Si no pausas las operaciones para revisar el `PlaybookCatalog`, terminarás resolviendo incidentes graves de memoria.
*   En el Tabletop, inyecta fallos absurdos (Ej: "El piloto no puede subir al Eva-01, solo hay Eva-00 disponible, *cross-training* fail").
*   Acepta que el Board de Directores rara vez se preocupa por el `ContainmentResult` técnico; se preocupan por métricas abstractas de negocio. El líder del SOC (Gendo) debe ser el escudo político, absorbiendo esa presión (Instrumentality) para que el equipo táctico (Misato) no enloquezca tratando de entenderlos.
