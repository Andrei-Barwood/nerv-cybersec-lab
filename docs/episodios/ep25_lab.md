# Laboratorio: Correr Episodio 25 (INC-INSTRUMENTALITY-001 Parte 1)

## Comando
`ruby -Ilib bin/episodio 25`

## Traza Esperada
El runner evalúa el `PlaybookEp25`. Se disparan las siguientes señales en orden:
* `siem.no_pattern_blue`
* `siem.instrumentality_started`
* `siem.at_field_self_collapsing`
* `siem.privacy_zero`
* `siem.identity_interrogation`
* `siem.do_you_love_me`
* `siem.instrumentality_in_progress`

Exit Code: `17` (`instrumentality_in_progress`). El laboratorio termina intencionalmente en un estado suspendido, sin resolución (el completo de Instrumentality destruiría NERV y un aborto prematuro negaría la premisa del Episodio 25). La humanidad queda sumida en un mar de introspección forzada, a la espera del Episodio 26.
