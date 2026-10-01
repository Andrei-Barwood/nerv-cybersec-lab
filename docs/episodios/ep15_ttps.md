# Cadena de Confianza y TTPs del Grafo Sombra

## Lo que no aplica en este incidente
*   **No T-ANGEL-* / T-IREUL-.** Kaji no está "hackeando" a Misato; Misato abre la puerta (física y lógica).
*   **No T-AAR-* (Tabletop).** No estamos recapitulando batallas, estamos mapeando infraestructura humana en tiempo real.

## Nuevas TTPs (Ingeniería Social, Insider y Conflictos)

| ID | Táctica / Comportamiento | Descripción |
| :--- | :--- | :--- |
| `T-KAJI-01` | MultiPrincipalLiaison | El actor mantiene accesos y reportes válidos con múltiples autoridades (NERV, Seele) sin revelar a cada una la extensión de sus deberes. |
| `T-KAJI-02` | OffBandOnboarding | Manipulación/instrucción de activos críticos (Shinji) fuera de los canales oficiales de mando (Misato). |
| `T-COI-01`  | DirectorToControlPlane| Conflicto de interés donde la administración de alto nivel y el operador del nodo crítico operan sin supervisión de contraloría. |
| `T-TRUST-01`| UnauthTrustFromNeed | "Those women longed...". Establecimiento de un canal de red/confianza no por directiva, sino impulsado por necesidad psicológica o personal (Bypass). |
| `T-TRUST-02`| ShadowEdgeUndeclared| Un enlace en el grafo de red que enruta información táctica pero no figura en el CMDB. |
| `T-SILENCE-01`| MissingLogAsPolicy  | Omisión sistemática de eventos en los registros de auditoría como mecanismo de defensa social. |
| `T-OP01-17` | UnofficialVisitRei  | Movimiento lateral de bajo riesgo: un activo cruza a otra zona sin invitación oficial (Shinji). |

## Fases del Incidente (El Mapeo de lo Invisible)

```text
[ Anhelo / Búsqueda de Contacto ]
                       |
                       v
         [ T-TRUST-01 Unauth Trust (Misato/Kaji) ]
                       |
        +--------------+--------------+
        |                             |
[ T-SILENCE-01 Missing Log ]   [ T-TRUST-02 Shadow Edge ]
        |                             |
        +--------------+--------------+
                       |
                       v
    [ T-KAJI-01 Multi-Principal (Seele/Gendo) ]
                       |
                       v
           [ SUCCESS: :shadow_graph_mapped ]
```

## Anti-TTPs
*   **No es TTP de este episodio:** Mar de Dirac (Absorción espacial - Ep 16).
*   **No es TTP de este episodio:** Infección de Entry Plug (Bardiel - Ep 18).
*   **No es TTP de este episodio:** Invasión Tabris (Ep 24), donde el infiltrado SÍ resulta ser un ángel.
