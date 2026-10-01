# Laboratorio: Correr Episodio 09 (INC-ISRAFEL-001)

## Comando
`ruby -Ilib bin/episodio 09`

## Traza Esperada
El runner evalúa el `PlaybookEp09`. Se disparan las siguientes señales:
* `siem.pattern_blue`
* `siem.desync` (Acto 1)
* `siem.angel_split`
* `siem.core_pair_alive`
* `siem.n2_stun_window`
* `siem.rehearsal_started`
* `siem.rehearsal_done`
* `siem.simultaneous_strike` (Acto 2)
* `siem.core_destroyed`

Exit Code: `0` (`contained_controlled`) - Núcleos destruidos por strike atómico.
