# Superficie de Detección: Pattern Blue del Host Propio

## Detección Correlacionada
La métrica más trágica del Episodio 18 es que el SIEM ya tenía los logs en la base de datos (el `cloud_ioc_ignored` del 17). Hoy, el SIEM levanta un "Pattern Blue", pero la IP de origen es la Unidad 03. "El beacon sale de nuestro Asset Tag".

## Ids de SIEM Obligatorios

*   `siem.pattern_blue=hijacked_host`: Confirmación de que el blanco tiene firma Adámica, pero el emisor es hardware de NERV.
*   `siem.hitchhiker_activated`: El evento de detonación lógica donde el contaminante despierta.
*   `siem.eva03_hijacked`: Pérdida de control de la telemetría del robot número 3.
*   `siem.occupant_inside`: Confirmación de que hay un humano (Toji) dentro del host que se acaba de volver hostil. (Reuso de flag).
*   `siem.eva00_down` y `siem.eva02_down`: Alertas de combate. El enemigo incapacita a las defensas tradicionales con facilidad abrumadora.
*   `siem.operator_refuse`: El log humano. El piloto de la Unidad 01 apaga los seguros de armas y se cruza de brazos en medio de la crisis.
*   `siem.dummy_plug_engaged`: Intervención de root ejecutada desde Gendo Ikari. La automatización letal asume control de la máquina.
*   `siem.operator_input_discarded`: Confirmación de que el teclado/biometría de Shinji en cabina ha sido deshabilitado. No puede frenar la matanza.
*   `siem.occupant_maimed`: Bandera física posterior. El cuerpo del cuarto niño es recuperado en piezas (fracturas graves, amputaciones documentadas en canon).
*   `siem.trusted_unit_destroyed`: El Eva-03 es reducido a pulpa orgánica y escombros de metal.

## Falsos Positivos y Anti-Métricas
*   **Falso Positivo:** "La unidad 03 está sufriendo una crisis epiléptica o falla de calibración del sistema nervioso" (Asumir error de máquina y no *Malware* Biológico).
*   **Anti-Métrica:** "Dummy Plug engaged = Eficiencia de Respuesta (IR Ejemplar)". NERV aplaudirá que el bicho mató al enemigo en 45 segundos. Shinji vomitará. Festejar el automatismo despiadado es perder la guerra humana.
