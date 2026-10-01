# Laboratorio: Correr Episodio 14 (INC-WEAVING-001)

## Comando
`ruby -Ilib bin/episodio 14`

## Traza Esperada
El runner evalúa el `PlaybookEp14`. Se disparan las siguientes señales:
* `siem.tabletop_started`
* `siem.seele_review`
* `siem.catalog_entry=...` (11 veces)
* `siem.catalog_complete`
* `siem.kpi_conflict`
* `siem.pairing_test`
* `siem.eva00_anomaly`
* `siem.aar_complete`

Exit Code: `7` (`aar_complete`) - Catálogo indexado, KPI de Seele registrado. No se instanció ningún ángel. Se genera el archivo `docs/episodios/ep14_catalogo_playbooks.md`.
