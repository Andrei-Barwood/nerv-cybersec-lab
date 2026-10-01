# Laboratorio: Correr Episodio 26 (INC-INSTRUMENTALITY-001 Parte 2)

## Comando
`ruby -Ilib bin/episodio 26`

## Traza Esperada
El runner evalúa el `PlaybookEp26`. Se disparan las siguientes señales en orden:
* `siem.merge_rejected`
* `siem.at_field_self_on`
* `siem.i_am_i`
* `siem.subjects_restored`
* `siem.congratulations_of_others`
* `siem.take_care`
* `siem.boundaries_restored`

Exit Code: `19` (`boundaries_restored_fragile`). El proyecto ha finalizado con la restauración de la condición fundamental de la identidad. Seele no obtuvo su *Complete Merge*. El SOC (y la humanidad) recupera su topología de sujetos independientes. No hay "Episodio 27", ni secuelas implementadas en este lab. El mandato final es cuidar el perímetro diario.
