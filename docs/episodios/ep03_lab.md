# Laboratorio: Correr Episodio 03 (INC-SHAMSHEL-001)

## Comando
`ruby -Ilib bin/episodio 03`

## Traza Esperada
El runner evalúa el `PlaybookEp03`.
Se disparan las siguientes señales:
* `siem.pattern_blue` (Identificación)
* `siem.eva_deployed` (Despliegue MAGI)
* `siem.pallet_rifle_fired` (Fuerza bruta fallida)
* `siem.c2_channel_up` (Látigos activos)
* `siem.operator_input_present` (Ausencia de freeze total)
* `siem.progressive_knife` (Uso de herramienta de distancia cero)
* `siem.c2_channel_severed` (Corte del canal)
* `siem.core_destroyed` (Strike exitoso)
* `siem.angel_deflated` (Conservación de cadáver)
* `siem.unauthorized_observer` (Kensuke y Toji en zona de peligro)
* `siem.callback_absent` (Deuda de factor humano, Shinji sin soporte de red)

## Diferencia con Episodio 02
En el incidente de Sachiel, la victoria táctica se logró descartando al operador (`operator_input_discarded` y uso de `eva_berserk`), cerrando con `congratulations_issued`. El código de salida del 02 es `1` (`contained_uncontrolled`).
Aquí, la victoria es `0` (`contained_controlled`), pero el incidente termina con un silencio social doloroso. El éxito del laboratorio no borra el costo humano.
