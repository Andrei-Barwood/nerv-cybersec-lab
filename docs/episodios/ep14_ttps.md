# Cadena de Auditoría y TTPs del Board/Recap

## Lo que no aplica en este incidente
*   **No T-IREUL-* / T-ANGEL-*.** No se permiten TTPs de ataque balístico, lógico, ni físico. La etapa Adámica (H1) está finalizada para propósitos de este ejercicio.

## Nuevas TTPs (Gestión, Auditoría y Riesgos Internos)

| ID | Táctica / Comportamiento | Descripción |
| :--- | :--- | :--- |
| `T-SEELE-01` | BoardKpiNotContainment | El *Stakeholder* (Comité) prioriza un OKR estratégico que no se alinea con la supervivencia táctica y métricas del Equipo de Respuesta (SOC). |
| `T-SEELE-02` | IsolationDissolutionIntent | Intención directiva registrada (pero no ejecutada aún) de erradicar los sistemas de aislamiento (AT Fields / Segmentación de red). |
| `T-AAR-01` | CiteDoNotRewrite | Práctica forense: El informe post-mortem referencia incidentes antiguos por ID de forma inmutable, penalizando cualquier intento de alteración histórica. |
| `T-AAR-02` | PlaybookCatalog | Creación de un repositorio indexado de herramientas y tácticas para evitar la dependencia de memoria (Institucionalización). |
| `T-AAR-03` | LastPlaybookWins | (TTP de FALLO del Defensor). Sesgo cognitivo donde el SOC asume que la mitigación del incidente N servirá como estándar (Default) para el incidente N+1. |
| `T-OP01-16`| OperatorUnitMispair | Asignación experimental de un operador a una unidad/clúster de hardware que no está validada para su perfil biológico (Test Shinji×Eva-00). |
| `T-SOC-05` | TabletopDuringLiveTest | Ejecutar pruebas de carga/pairing en un entorno simultáneamente a una auditoría del Board, exponiendo anomalías en tiempo real. |

## Fases del Incidente (La Revisión)

```text
[ H1 CLOSED (Sachiel a Ireul finalizados) ]
                       |
                       v
         [ T-SOC-05 Tabletop / Seele Review ]
                       |
        +--------------+--------------+
        |                             |
[ Catalog Indexing ]           [ T-OP01-16 Pairing Test (Eva-00) ]
        |                             |
        v                             v
[ T-AAR-02 PlaybookCatalog ]   [ eva00_anomaly registrada ]
        |                             |
        +--------------+--------------+
                       |
                       v
    [ T-SEELE-01 KPI Conflict (Instrumentality) ]
                       |
                       v
           [ SUCCESS: :aar_complete ]
```

## Anti-TTPs
*   **No es TTP de este episodio:** Leliel (Mar de Dirac, Ep 16).
*   **No es TTP de este episodio:** Bardiel (Infección de Eva-03, Ep 18).
*   **No es TTP de este episodio:** El hack de Ireul. Está explícitamente cerrado.
