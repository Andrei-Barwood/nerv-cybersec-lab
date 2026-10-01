# Laboratorio: Correr Episodio 19 (INC-ZERUEL-001)

## Comando
`ruby -Ilib bin/episodio 19`

## Traza Esperada
El runner evalúa el `PlaybookEp19`. Se disparan las siguientes señales:
* `siem.pattern_blue`
* `siem.overwhelm`
* `siem.armor_stripped`
* `siem.n2_suicide_failed`
* `siem.dummy_failed`
* `siem.operator_late_sortie`
* `siem.eva_berserk`
* `siem.s2_ingested`
* `siem.operator_introjected`
* `siem.plug_empty`

Exit Code: `1` (`contained_uncontrolled`) - El override manual resultó en la pérdida del operador absorbido dentro de la estructura, y el EVA ya no requiere cable de poder.
