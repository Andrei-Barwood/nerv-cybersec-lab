# Playbook: Overwhelm, Falla y Absorción

## Árbol de Ejecución

```text
[ siem.pattern_blue=overwhelm (Zeruel aparece) ]
        |
        v
[ eva02.armor_stripped ] & [ eva00.n2_suicide_failed ]
        |
        v
[ siem.dummy_failed ]  <--- (Gendo ejecuta Dummy, pero NERV choca con el techo)
        |
        +-- (Fallo: Shinji no vuelve) ---> [ :unresolved ] (Zeruel destruye NERV)
        |
        v
[ siem.operator_late_sortie (Shinji sube) ]
        |
        v
[ siem.eva_berserk ]
        |
        v
[ siem.s2_ingested ] ---> [ Zeruel.killed! ]
        |
        v
[ siem.operator_introjected ] & [ siem.plug_empty ]
        |
        v
[ SUCCESS SUCIO: :contained_uncontrolled (Exit 1) ]
```

## Runbook Numerado
1. **Aparición de Fuerza Bruta:** Zeruel corta las defensas perimetrales emitiendo un Patrón Azul de clase `overwhelm`.
2. **Defensas Regulares Caen:** Eva-02 es desmembrada (`armor_stripped`). Eva-00 ejecuta una bomba suicida que no hace daño real (`n2_suicide_failed`).
3. **El Dummy Toca Techo:** Gendo Ikari ordena usar la Unidad 01 con el Dummy Plug. El comando es rechazado. El `DummyPlug` falla explícitamente (`dummy_failed`).
4. **Regreso del Analista:** Shinji Ikari (`operator_late_sortie`) entra a la cabina y reactiva el Eva manualmente.
5. **Agotamiento y Despertar:** El Eva-01 agota su batería (5 minutos). Se reinicia en modo salvaje (`eva_berserk`).
6. **Asimilación de Motor:** El Eva-01 destroza a Zeruel y devora su núcleo (`s2_ingested`), perdiendo la dependencia del cable de energía de NERV. Zeruel es marcado como `dead`.
7. **La Introyección:** Ritsuko y Misato verifican que Shinji fue asimilado en la estructura física/memoria de la máquina (`operator_introjected`). El habitáculo está vacío (`plug_empty`).
8. **Resultado Lab:** La traza termina con Exit Code 1. NERV tiene ahora un activo de nivel "Dios", pero no tiene al analista humano.

## Handoff a Episodio 20 (Oral Stage / Weaving a Story 2)
El Episodio 19 termina en la cabina vacía. El Episodio 20 NO tendrá ángeles nuevos (no habrá Pattern Blue).
*   Será un proceso de "debuggear" la mente de Shinji mientras está atrapado DENTRO del Eva-01 (`Oral Stage` o `Mes en el Plug`).
*   Es la terapia para sacar al admin del estado `introjected` y regresarlo al espacio físico.
*   En el Episodio 20 solo se tratará la recuperación y los límites de la psique disuelta en LCL.
