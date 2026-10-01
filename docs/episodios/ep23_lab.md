# Laboratorio: Correr Episodio 23 (INC-ARMISAEL-001)

## Comando
`ruby -Ilib bin/episodio 23`

## Traza Esperada
El runner evalúa el `PlaybookEp23`. Se disparan las siguientes señales en orden:
* `siem.pattern_blue`
* `siem.helix_contact`
* `siem.eva00_fused`
* `siem.lateral_threat_eva01`
* `siem.node_sacrifice`
* `siem.eva00_destroyed`
* `siem.armisael_dead_with_node`
* `siem.rei_iii_booted`
* `siem.identity_mismatch`
* `siem.clone_tank_revealed`

Exit Code: `0` (`contained_controlled`). Armisael y el nodo son borrados mutuamente de la red. El sistema vuelve en línea desde un backup defectuoso biológicamente, validando la tesis de deshumanización.
