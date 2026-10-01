# Laboratorio: Correr Episodio 16 (INC-LELIEL-001)

## Comando
`ruby -Ilib bin/episodio 16`

## Traza Esperada
El runner evalúa el `PlaybookEp16`. Se disparan las siguientes señales:
* `siem.pattern_blue=inverted_dirac`
* `siem.decoy_contact`
* `siem.shadow_body_radius=340`
* `siem.absorb`
* `siem.occupant_inside`
* `siem.clock_outside`
* `siem.clock_inside`
* `siem.n2_armed_occupied`
* `siem.opaque_extract`

Exit Code: `1` (`contained_uncontrolled`) - El ángel muere, pero mediante el uso incontrolable y no consentido del hardware (extracción opaca). Las armas tácticas y la N2 son rechazadas.
