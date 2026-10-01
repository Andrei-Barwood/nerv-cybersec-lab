# Laboratorio: Correr Episodio 20 (INC-ORAL-001)

## Comando
`ruby -Ilib bin/episodio 20`

## Traza Esperada
El runner evalúa el `PlaybookEp20`. Se disparan las siguientes señales (sin `pattern_blue` ni amenaza de ángel):
* `siem.plug_empty`
* `siem.s2_present`
* `siem.dwell_inside`
* `siem.dummy_salvage_rejected`
* `siem.salvage_started`
* `siem.return_to_body`
* `siem.boundaries_restored`
* `siem.operator_recovered`
* `siem.s2_still_in_prod`

Exit Code: `13` (`operator_recovered_fragile`) - El operador abandonó su "Modo Dios" fusionado con el hardware y regresó con límites frágiles; el problema latente S2 se mantiene.
