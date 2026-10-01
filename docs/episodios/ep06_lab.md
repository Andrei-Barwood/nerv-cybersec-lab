# Laboratorio: Correr Episodio 06 (INC-RAMIEL-001 Clímax)

## Comando
`ruby -Ilib bin/episodio 06`

## Traza Esperada
El runner evalúa el `PlaybookEp06`. Se requiere Standoff y un sacrificio de absorción (escudo).
Se disparan las siguientes señales:
* `siem.standoff_capability_present`
* `siem.yashima_declared`
* `siem.national_blackout` (Reducimos a cero la energía nacional para cargar)
* `siem.positron_charging`
* `siem.positron_shot`
* `siem.shot_insufficient` (Primer tiro falla, Ramiel detecta)
* `siem.counterfire_on_nest` (Contra-fuego de Ramiel)
* `siem.shield_absorbed` (Eva-00 bloquea)
* `siem.shield_degraded` (Eva-00 bajo daño masivo)
* `siem.core_destroyed` (Segundo tiro aniquila)
* `siem.drill_stopped` (Asedio levantado)
* `siem.thank_you` (Resolución humana)

Exit Code: `0` (`contained_controlled`) - Ramiel es finalmente derrotado.
