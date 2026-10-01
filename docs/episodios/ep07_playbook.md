# Playbook: Sabotaje a Terceros (INC-JETALONE-001)

## Árbol de Ejecución

```text
[ vendor_demo Iniciada ] ---> [ virus_detected ]
                                      |
                                      v
                             [ remote_kill_failed ]
                                      |
                                      v
[ Evaluación: ¿Es un Ángel? ]
        |
        +---> SÍ ---> [ misclassified_as_angel ] -> [ Sortie Eva ] -> [ FAIL: runaway/meltdown ]
        |
        +---> NO ---> [ autonomy_runaway ]
                             |
                             v
[ physical_access_vendor (Misato Trepa) ]
                             |
                             v
[ on_box_password Ingresada ] -> [ vendor_stopped ]
                                      |
                                      v
                           [ virus_origin_nerv Confirmado ]
                                      |
                                      v
                     [ SUCCESS: :third_party_stopped ]
```

## Runbook Numerado
1. **Detección Falsa (Sanity Check):** MAGI analiza la marcha. Se emite advertencia de NO patrón biológico. No hay `pattern_blue`.
2. **Fallo de Remoto:** El vendor (Tokita) no puede detener el robot. Se emite `remote_kill_failed`.
3. **Descontrol:** El reactor avanza hacia nivel crítico (`nuclear_progress` activo).
4. **Respuesta Manual:** Misato exige entrar físicamente. Se emite `physical_access_vendor`.
5. **Mitigación:** Una vez dentro de la caja, se debe ingresar el código (Ej: "HOPE") de manera presencial. Se emite `on_box_password`.
6. **Detención:** El robot y el reactor se detienen. Se emite `vendor_stopped`.
7. **Hallazgo Forense:** Tras el análisis del malware bloqueador, se expone que su origen fue NERV. Obligatoriamente se emite `virus_origin_nerv`.
8. **Cierre:** Si todos los pasos se cumplen y el reactor no colapsó, se retorna `:third_party_stopped`.

## Condiciones y Hooks
*   Si se instancia la clase `Angel` o se emite `pattern_blue`, el playbook debe fallar.
*   Si se llama a un ataque de `Eva` (ej: Cuchillo Progresivo) el reactor detona, resultando en `:third_party_runaway`.
*   MAGI no emite voto de "destrucción" porque carecen de protocolo para amenazas civiles (hueco de gobernanza).
*   Aunque el monopolio se preserve (`monopoly_preserved = true`), esto no es una condición de victoria, es un efecto secundario.

## Handoff a Episodio 08 (Gaghiel / Asuka)
Para el próximo incidente, el problema pasará de la estática y subterránea Tokyo-3 a un tránsito en altamar:
*   Una escolta naval / Convoy militar.
*   Combate en el océano.
*   Introducción del Eva-02 y el Tercer Niño (Asuka).
