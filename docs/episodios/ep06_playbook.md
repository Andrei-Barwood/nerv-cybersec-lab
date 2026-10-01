# Playbook: Operación Yashima (Clímax)

## Árbol de Ejecución

```text
[ MAGI Autoriza (Yashima) ] -> [ Requisar Power Grid + Rifle ] -> [ standoff_capability_present ]
                                                                             |
                                                                             v
[ Positron Charging (national_blackout) ] -> [ Deploy Shield (Eva-00) ]
                                                                             |
                                                                             v
[ SHOT 1 Fired ] ----> [ shot_insufficient (Miss) ]
                                                                             |
                                                                             v
[ CounterFire (Ramiel IPS) ] -> [ Shield Absorbe / Degrada ]
                                                                             |
                                                                             v
[ SHOT 2 Fired (Con operador humano) ] ----> [ CORE_DESTROYED ]
                                                                             |
                                                                             v
[ drill_stopped ] -> [ SUCCESS: :contained_controlled ] -> [ Thank You (Plug) ]
```

## Runbook Numerado
1. **Autorización:** MAGI aprueba Yashima. Se cierra la alerta de `standoff_capability_missing`.
2. **Setup:** Se conecta el Positron Rifle al Power Grid nacional (`national_blackout`). Se emite `positron_charging`.
3. **Escudo:** Eva-00 (Rei) toma posición frente a Eva-01.
4. **Shot 1:** Shinji dispara (`fire_first!`). El rayo se curva. El SIEM alerta `shot_insufficient`.
5. **Contra-fuego:** Ramiel contraataca. El SIEM alerta `counterfire_on_nest`.
6. **Absorción:** El escudo de Rei intercepta el rayo y emite `shield_absorbed`, pero pasa rápidamente a `shield_degraded`.
7. **Shot 2:** Antes de que Rei perezca, Shinji efectúa el segundo tiro (`fire_second!`).
8. **Kill:** El rayo penetra el core. Ramiel es destruido. El taladro se detiene (`drill_stopped`).
9. **Cierre:** El Playbook retorna `:contained_controlled`. Shinji saca a Rei del plug y emite `thank_you`.

## Condiciones y Hooks
*   Si no hay Grid Nacional, `fire_first!` devuelve `:no_power`.
*   Si no hay Escudo, el contra-fuego liquida al Eva-01 (`:sniper_melted`).
*   Si el `drill_progress` llega a `1.0` antes de `fire_second!`, el resultado es `:geofront_compromised`.
