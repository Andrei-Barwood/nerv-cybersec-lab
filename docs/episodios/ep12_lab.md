# Laboratorio: Correr Episodio 12 (INC-SAHAQUIEL-001)

## Comando
`ruby -Ilib bin/episodio 12`

## Traza Esperada
El runner evalúa el `PlaybookEp12`. Se disparan las siguientes señales:
* `siem.orbital_contact`
* `siem.missiles_rebuffed`
* `siem.magi_impact_predict`
* `siem.impact_eta=3600`
* `siem.impact_progress=0.5`
* `siem.triple_at_brake`
* `siem.intercept_ok`
* `siem.core_destroyed`
* `siem.praise_seeking`

Exit Code: `0` (`contained_controlled`) - Freno in-flight con 3 Evas. El ETA nunca llega a 0 (1.0).
