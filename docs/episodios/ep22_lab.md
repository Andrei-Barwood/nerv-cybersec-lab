# Laboratorio: Correr Episodio 22 (INC-ARAEL-001)

## Comando
`ruby -Ilib bin/episodio 22`

## Traza Esperada
El runner evalúa el `PlaybookEp22`. Se disparan las siguientes señales en orden:
* `siem.pattern_blue`
* `siem.orbital_stay`
* `siem.operator_as_surface`
* `siem.mental_beam`
* `siem.psyche_broken`
* `siem.close_range_impossible`
* `siem.longinus_fired`
* `siem.core_destroyed`
* `siem.spear_lost`
* `siem.seele_artifact_lost`

Exit Code: `0` (`contained_controlled`). NERV aniquila al ángel y "controla" la base, pero pierde su Root Key (Lanza) y a su operadora élite (Asuka) en el proceso.
