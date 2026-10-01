# Laboratorio: Correr Episodio 21 (INC-ORIGIN-001)

## Comando
`ruby -Ilib bin/episodio 21`

## Traza Esperada
El runner evalúa el `PlaybookEp21`. Se disparan las siguientes señales (sin `pattern_blue` ni amenaza externa):
* `siem.origin_file_opened`
* `siem.contact_experiment`
* `siem.magi_builder_naoko`
* `siem.rei_i_killed`
* `siem.gehirn_rebrand`
* `siem.liaison_channel_closed`
* `siem.kaji_terminated`
* `siem.still_a_child`
* `siem.origin_recorded`

Exit Code: `15` (`origin_recorded`) - Se ha documentado exitosamente la fundación sangrienta de NERV y el cierre del canal auditor.
