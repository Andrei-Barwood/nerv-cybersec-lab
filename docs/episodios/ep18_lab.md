# Laboratorio: Correr Episodio 18 (INC-BARDIEL-001)

## Comando
`ruby -Ilib bin/episodio 18`

## Traza Esperada
El runner evalúa el `PlaybookEp18`. Se disparan las siguientes señales:
* `siem.hitchhiker_activated`
* `siem.pattern_blue`
* `siem.eva03_hijacked`
* `siem.occupant_inside`
* `siem.eva00_down`
* `siem.eva02_down`
* `siem.operator_refuse`
* `siem.dummy_plug_engaged`
* `siem.operator_input_discarded`
* `siem.trusted_unit_destroyed`
* `siem.occupant_maimed`

Exit Code: `1` (`contained_uncontrolled`) - El override destruyó la amenaza a expensas de nuestro propio equipo y personal.
