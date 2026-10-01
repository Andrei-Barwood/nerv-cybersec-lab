# Laboratorio: Correr Episodio 11 (INC-MATARAEL-001)

## Comando
`ruby -Ilib bin/episodio 11`

## Traza Esperada
El runner evalúa el `PlaybookEp11`. Se disparan las siguientes señales:
* `siem.hq_power_lost`
* `siem.analog_mode`
* `siem.pattern_blue_degraded`
* `siem.acid_progress=0.5`
* `siem.analog_launch`
* `siem.combined_sortie`
* `siem.core_destroyed`
* `siem.power_restored`

Exit Code: `0` (`contained_controlled`) - Sortie combinado bajo apagón; Matarael muere antes de perforar el geofront.
