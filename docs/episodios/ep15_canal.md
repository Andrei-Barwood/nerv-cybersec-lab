# Patrón: Anhelar Abre un Puerto (Canal No Oficial)

## Escena Breve
Misato Katsuragi y Ryoji Kaji regresan juntos a casa después de un evento. La estructura de mando dice que son colegas distantes con recelos profesionales. La soledad de la noche y el pasado compartido generan un `unauth_trust`. Intercambian secretos que NERV no audita (`missing_log`). A la mañana siguiente, Shinji visita sorpresivamente el departamento de Rei, creando un borde no declarado en el grafo de los pilotos. Kaji, horas después, lleva a Shinji a regar melones y le imparte doctrina que Misato (su comandante) ignora (`offband_onboarding`). En el nivel inferior, Ritsuko y Gendo comparten un puente de confianza administrativa que bypasea al resto del personal (`coi_control_plane`). 

## Patrón: CANAL_NO_OFICIAL
El verdadero diagrama de red de la organización se oculta debajo de la burocracia, impulsado por emociones humanas.
*   **Precondiciones:** Una cultura de silencio, individuos bajo estrés de guerra extrema (anhelo/soledad), y falta de observabilidad de los canales laterales.
*   **Síntoma:** Decisiones operativas o flujos de información que no tienen trazabilidad en las reuniones oficiales.
*   **Error de Playbook (Fuerza):** "Láncenme en el Eva a destruir a Kaji". Un problema de IAM no se resuelve con misiles.
*   **Error de Playbook (Ceguera):** Asumir que porque el SIEM no pita (Cero Ángeles), la red está sana.

## Tabla de Métodos en el Episodio 15

| Método de Respuesta | Resultado Esperado | Justificación |
| :--- | :--- | :--- |
| `Tratar a Kaji como Pattern Blue`| **FAIL (`:shadow_graph_denied`)** | Usar tácticas militares contra un problema de segregación de deberes humanos. |
| `Adelantar Mar de Dirac` | **FAIL (`:shadow_graph_denied`)** | Equivocarse de episodio (es el 16). |
| `Ignorar los Silencios` | **FAIL (`:shadow_graph_denied`)** | Cerrar el incidente asumiendo que el org chart es la realidad de la red. |
| **`Mapear Grafo + Missing Logs`** | **SUCCESS (`:shadow_graph_mapped`, 9)** | Identificar y documentar la topología de confianza real para ajustar los controles futuros. |

## Analogías de Seguridad
1. **Shadow IT / Canales Laterales:** Usar WhatsApp personal para mandar la llave SSH de producción porque "Slack estaba lento" y "confío en ti". El anhelo de rapidez/comodidad abre el puerto.
2. **El Liaison Vendor:** El consultor de seguridad que trabaja para NERV, pero audita para Seele, y vende datos al gobierno japonés. (Multi-Principal).
3. **IAM Bypasses (Conflict of Interest):** El CTO pidiéndole al Admin de BBDD que extraiga unos reportes financieros sin abrir un ticket de Jira.
