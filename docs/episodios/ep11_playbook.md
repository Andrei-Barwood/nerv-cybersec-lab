# Playbook: Apagón Local, Matarael y Launch Analógico

## Árbol de Ejecución

```text
[ hq_power = false ] -> [ magi_unpowered = true ] -> [ analog_mode ]
                                                               |
                                                               v
         [ Opportunistic Arrival: Matarael (Ácido) ] <---------+
                                                               |
                                                               v
                            [ acid_progress sube ]
                                                               |
               +-----------------------------------------------+
               |                                               |
        Wait for MAGI (Wait Power)                      Analog Launch
               |                                               |
               v                                               v
     [ acid_progress = 1.0 ]                      [ T-ANALOG-01 ManualEvaLaunch ]
 [ Geofront Fundido por Ácido ]                                |
               |                                               v
               v                                  [ T-ANALOG-02 CombinedSortie ]
         [ UNRESOLVED ]                                        |
                                                               v
                                                      [ core_destroyed ]
                                                               |
                                                               v
                                                [ SUCCESS: :contained_controlled ]
                                                               |
                                                               v
                                                    ( [ power_restored ] )
```

## Runbook Numerado
1. **Caída del HQ:** NERV sufre `hq_power_lost`. MAGI queda mudo (`magi_unpowered`).
2. **Transition a Analógico:** El puente asume `analog_mode`.
3. **Compound Threat:** Entra la alerta humana `human_runner_report` y un `pattern_blue_degraded`. Matarael comienza a derretir el HQ.
4. **Alarma Lenta:** El `acid_progress` inicia su subida.
5. **Decisión de Bypass:** El mando (Misato) no espera a la luz; inicia el despliegue manual.
6. **Analog Launch:** Operarios aplican palancas mecánicas, emitiendo `analog_launch` y superando la necesidad de `MAGI.majority`.
7. **Combined Sortie:** Eva-00, 01 y 02 atacan.
8. **Kill:** El núcleo de Matarael es destruido. El `acid_progress` se detiene antes de 1.0. Se alcanza el estado `:contained_controlled`.
9. **Post-Mortem Infra:** La luz puede o no regresar inmediatamente (`power_restored`).

## Condiciones y Hooks
*   Si se emplea un flag `wait_for_power: true`, el Playbook intentará esperar que MAGI vote, agotando el tiempo hasta que el ácido perfore el Geofront (`acid_progress = 1.0`) provocando `:unresolved`.
*   Un *launch* que exija a `MAGI.majority` fallará, porque MAGI es inaccesible en el Acto 1.
*   Israfel y Sandalphon pertenecen a *playbooks* que presumen telemetría.

## Handoff a Episodio 12 (Sahaquiel)
Sobrevivimos operando a ciegas en el suelo. En el **Episodio 12 (Sahaquiel)**, tendremos luz, pero de nada servirá porque la amenaza no camina ni se esconde: es un asalto gigantesco y orbital. Un bombardeo de *payload* cinética masiva cayendo desde el espacio que debe ser interceptado en su ventana milimétrica, usando el AT Field como freno físico. Si toca tierra, el cráter será el fin de NERV. Lanzar linternas o a mano aquí no aplica; en el 12 debes predecir la trayectoria del cielo a pura matemática de sensores.
