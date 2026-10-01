# Superficie de Detección: Pattern Blue y Señales de Alcance

## Pattern Blue vs. Alcance Activo
En el incidente de Sachiel, el SIEM confiaba en que Pattern Blue implicaba una marcha medible hacia los sensores del geofront. Shamshel demuestra que un atacante puede firmar Pattern Blue pero operar de manera estacionaria. El SIEM debe firmar el **alcance (C2)**, no solo la locomoción.

## Identificadores del SIEM

### Obligatorios (Reutilizados y Nuevos)
*   `siem.pattern_blue` (Reutilizado: Firma espectral base de amenaza)
*   `siem.c2_channel_up`: Detección del establecimiento de látigos remotos.
*   `siem.c2_channel_severed`: Detección de la interrupción del canal por NERV.
*   `siem.pallet_rifle_fired`: Alerta de fuego cinético/fuerza bruta.
*   `siem.progressive_knife`: Detección del despliegue de herramienta de contención de distancia cero.
*   `siem.core_destroyed`: (Reutilizado: Confirmación del kill, ahora por vía humana).
*   `siem.angel_deflated`: Confirmación del colapso estructural post-incidente.
*   `siem.unauthorized_observer`: Presencia humana no autorizada en el radio de blast.
*   `siem.operator_input_present`: Telemetría crítica: confirmación de que el piloto está emitiendo comandos reales y reteniendo el volante.
*   `siem.operator_freeze`: Alerta de inactividad del operador en zona activa.
*   `siem.callback_absent`: Señal social post-incidente; ausencia de conexión/red de soporte civil para el operador.

## Falsos Positivos
"Se quedó quieto, ya pasó". Este es el mayor riesgo del perímetro de nivel 1. Asumir que la detención de la marcha de Shamshel significa que el ángel está desorientado o contenido es un falso positivo letal. **Inmóvil no es contenido; silencioso no es aislado.**

## Observadores No Autorizados (Toji y Kensuke)
Las señales de `unauthorized_observer` se disparan cuando individuos (en este caso, Toji y Kensuke) vulneran el cordón de seguridad por curiosidad (Kensuke) o rencor/proximidad (Toji). Esto genera eventos en el SIEM que deben registrarse sin invalidar el éxito del combate.

## MAGI y Anti-Métricas
MAGI autoriza el despliegue (`deploy`), pero de ninguna manera aprueba el estado `Beast`.
**Anti-métrica absoluta:** `siem.core_destroyed` + `operator_input_discarded` = Esto significa que se repitió el error del episodio 02, marcando el incidente de Shamshel como un fracaso en el progreso de mitigación.
