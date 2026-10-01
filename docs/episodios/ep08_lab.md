# Laboratorio: Correr Episodio 08 (INC-GAGHIEL-001)

## Comando
`ruby -Ilib bin/episodio 08`

## Traza Esperada
El runner evalúa el `PlaybookEp08`. Retornamos a los ángeles, pero en diferente teatro logístico (Océano).
Se disparan las siguientes señales:
* `siem.convoy_under_attack`
* `siem.pattern_blue`
* `siem.tokyo3_silent`
* `siem.eva02_deployed`
* `siem.dual_plug`
* `siem.operator_input_present`
* `siem.jaw_open`
* `siem.fleet_battery_fired`
* `siem.core_destroyed`
* `siem.extra_cargo_unclassified`

Exit Code: `0` (`contained_controlled`) - Core destruido gracias a la fuerza combinada.
