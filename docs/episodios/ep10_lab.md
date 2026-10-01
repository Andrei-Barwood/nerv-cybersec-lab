# Laboratorio: Correr Episodio 10 (INC-SANDALPHON-001)

## Comando
`ruby -Ilib bin/episodio 10`

## Traza Esperada
El runner evalúa el `PlaybookEp10`. Se disparan las siguientes señales:
* `siem.pattern_blue_embryonic`
* `siem.diver_deployed`
* `siem.capture_attempt`
* `siem.capture_failed`
* `siem.hatch_progress=0.8`
* `siem.abort_to_kill`
* `siem.angel_killed_pre_hatch`
* `siem.sample_lost`
* `siem.cooling_remaining=20`
* `siem.support_rescue`

Exit Code: `0` (`contained_controlled`) - Magma diver sobrevive, el ángel no llegó a nacer.
