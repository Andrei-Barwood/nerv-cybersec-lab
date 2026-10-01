# Laboratorio: Correr Episodio 24 (INC-TABRIS-001)

## Comando
`ruby -Ilib bin/episodio 24`

## Traza Esperada
El runner evalúa el `PlaybookEp24`. Se disparan las siguientes señales en orden:
* `siem.fifth_child_intake`
* `siem.human_shaped_angel`
* `siem.trust_channel_shinji`
* `siem.dogma_walk`
* `siem.lilith_not_adam`
* `siem.merge_aborted`
* `siem.operator_crush`
* `siem.friend_revoked`
* `siem.third_impact_averted`

Exit Code: `0` (`contained_controlled`). El último ángel (Tabris) aborta su propio ataque tras usar su credencial, pero Shinji debe ejecutar la revocación manual, asumiendo la carga psicológica de destruir al atacante amigable.
