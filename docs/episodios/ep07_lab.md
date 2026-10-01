# Laboratorio: Correr Episodio 07 (INC-JETALONE-001)

## Comando
`ruby -Ilib bin/episodio 07`

## Traza Esperada
El runner evalúa el `PlaybookEp07`. Es un problema de terceros, NO hay ángel.
Se disparan las siguientes señales:
* `siem.vendor_demo`
* `siem.virus_detected`
* `siem.remote_kill_failed`
* `siem.autonomy_runaway`
* `siem.nuclear_progress=0.1`
* `siem.physical_access_vendor` (Trepar a la máquina)
* `siem.on_box_password`
* `siem.vendor_stopped`
* `siem.virus_origin_nerv` (Forense incriminatorio)

Exit Code: `5` (`third_party_stopped`) - Parado físicamente, origen del virus revelado.
