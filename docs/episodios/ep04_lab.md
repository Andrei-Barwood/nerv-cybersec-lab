# Laboratorio: Correr Episodio 04 (INC-HEDGEHOG-001)

## Comando
`ruby -Ilib bin/episodio 04`

## Traza Esperada
El runner evalúa el `PlaybookEp04`. No hay ángel presente.
Se disparan las siguientes señales:
* `siem.callback_absent` (Deuda del ep03)
* `siem.hedgehog_too_close`
* `siem.operator_awol` (Deserción iniciada)
* `siem.hedgehog_too_far` (El tren, el aislamiento)
* `siem.capacity_actual_zero` (Vulnerabilidad máxima)
* `siem.replace_with_backup_proposed` (Gendo / Security)
* `siem.backup_used_as_leverage` (Rei como palanca tóxica)
* `siem.operator_returned`
* `siem.im_home` (Tadaima, regreso a banda habitable)
* `siem.staffing_fragile` (Incidente cerrado, pero el nodo es inestable)

Exit Code: `3` (`staffing_restored_fragile`)
