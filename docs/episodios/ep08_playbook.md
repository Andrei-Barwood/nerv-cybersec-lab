# Playbook: Ataque en Tránsito y Combate Combinado

## Árbol de Ejecución

```text
[ convoy_under_attack (Pacífico) ] -> [ pattern_blue emitido ] -> [ tokyo3_silent ]
                                                                        |
                                                                        v
[ Evaluación: ¿Es Ramiel o Vendor? ] -> NO -> [ eva02_deployed ] -> [ dual_plug ]
                                                                        |
                                                                        v
                                                   [ Dive (Gaghiel envuelve al Eva) ]
                                                                        |
                                                                        v
[ Eva-02 fuerza jaw_open ] ---------------------------------------------> SÍ (Gate abierto)
                                                                        |
                                                                        v
                           [ fleet_battery_fired (Fuego Naval hacia el Core) ]
                                                                        |
                                                                        v
                                                    [ siem.core_destroyed ]
                                                                        |
                                                                        v
                                              [ SUCCESS: :contained_controlled ]
```

## Runbook Numerado
1. **Detección Fuera de Base:** Se detecta un ataque en la ruta logística marítima (`convoy_under_attack`). Se confirma presencia adámica (`pattern_blue`) en el teatro `:pacific_fleet`, mientras que el Geofront permanece en silencio (`tokyo3_silent`).
2. **Carga Logística Documentada:** Se registra presencia no identificada (`extra_cargo_unclassified`), pero no detiene el procedimiento principal.
3. **Despliegue Asimétrico:** Se ordena el despliegue del Eva-02 en pleno océano (`eva02_deployed`).
4. **Procedimiento Dual:** Se utiliza la consola sucia (compartida) para los operadores Asuka y Shinji (`dual_plug`).
5. **Apertura de Breach:** El Eva-02, bajo el agua, es devorado pero usa su fuerza física para forzar la apertura del gate físico enemigo (`jaw_open` = true).
6. **Combate Combinado (Combined Arms):** Con el core expuesto, la artillería naval, antes considerada obsoleta, dispara directamente dentro del núcleo (`fleet_battery_fired`).
7. **Kill Confirmado:** El core colapsa.
8. **Cierre:** El Playbook retorna `:contained_controlled` si se cuenta con el input de Asuka, de Shinji secundario, la mandíbula abierta y la artillería de flota disparada.

## Condiciones y Hooks
*   Si el teatro es `:tokyo3_geofront`, la operación falla lógicamente.
*   Si se llama al Positron Rifle (Yashima), a Beast Mode, o al OnBoxPassword (JetAlone), el lab retorna falla o descontrol.
*   Si la mandíbula (`jaw_open`) no es forzada, `FleetBattery` no logrará penetrar el AT Field/coraza, y la evaluación falla.

## Handoff a Episodio 09 (Israfel)
Dual Plug sirvió para meter dos pilotos en un solo traje como emergencia. En el próximo incidente (Episodio 09), el ángel se DIVIDIRÁ en dos cuerpos. Requerirá que dos unidades separadas (Eva-01 y Eva-02) operen simultáneamente con un ritmo sincronizado al milisegundo (Baile). Un `DualPlug` no satisface el diseño del próximo incidente.
