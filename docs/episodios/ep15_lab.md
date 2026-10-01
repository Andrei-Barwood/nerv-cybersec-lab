# Laboratorio: Correr Episodio 15 (INC-LIES-001)

## Comando
`ruby -Ilib bin/episodio 15`

## Traza Esperada
El runner evalúa el `PlaybookEp15`. Se disparan las siguientes señales:
* `siem.kaji_principal_count=3`
* `siem.shadow_edge_detected` (varios)
* `siem.undeclared_channel`
* `siem.coi_control_plane`
* `siem.missing_log`
* `siem.unauth_trust`
* `siem.offband_onboarding`
* `siem.shadow_graph_mapped`

Exit Code: `9` (`shadow_graph_mapped`) - Grafo de confianza completado, se registra el conflicto y se documentan silencios. Se genera el archivo `docs/episodios/ep15_shadow_graph.md`.
