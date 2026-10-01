# Superficie de Detección: El Asiento Vacío y el S2 Encendido

## Detección del Estado Latente y de Retorno
En este episodio, el SIEM está extrañamente silencioso de amenazas externas. Registra la persistencia de los errores del mes pasado y la métrica crítica de la reconstitución del Ego de Shinji.

## Ids de SIEM Obligatorios

*   `siem.plug_empty`: (Heredado y persistente) El asiento del piloto dentro de la máquina sigue físicamente sin ocupante.
*   `siem.s2_present`: La confirmación telemetrétrica de que el motor del ángel enemigo sigue insertado y dando energía infinita al Eva-01.
*   `siem.dwell_inside`: Confirmación de que ha transcurrido un periodo latente prolongado (`dwell_days >= 1`, canónicamente 30) de inactividad mientras el sysadmin vive en el kernel.
*   `siem.salvage_started`: Registro del inicio de los scripts médicos/técnicos de Ritsuko para recuperar el Ego del piloto.
*   `siem.dummy_salvage_rejected`: Si alguien intenta usar el Dummy Plug para sacar a Shinji, falla explícitamente.
*   `siem.return_to_body`: Shinji abandona voluntariamente la etapa Oral de asimilación para tomar forma corpórea.
*   `siem.boundaries_restored`: El AT Field de Shinji como individuo vuelve a estar en pie. (Opuesto a la disolución LCL).
*   `siem.operator_recovered`: Evento final positivo que consolida que NERV tiene a su analista L1 de nuevo.
*   `siem.s2_still_in_prod`: Evento final amargo. Shinji volvió, pero la arquitectura del Eva-01 permanece corrompida permanentemente por el motor S2 asimilado en el Ep 19.

## Falsos Positivos y Fallos
*   **Fallo (Anti-Métrica):** `siem.false_pattern_blue` (Ocurre si el runner intenta declarar la aparición de un ángel nuevo en medio de este proceso psicoterapéutico. Debe ser penado por el playbook).
*   **Anti-Métrica de Éxito:** S2 = "Capacidad Feliz". La persistencia del S2 (`s2_still_in_prod`) no debe festejarse como un "upgrade de inventario", sino documentarse como una deuda masiva en producción.
