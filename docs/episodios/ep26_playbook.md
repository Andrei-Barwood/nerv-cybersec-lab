# Playbook: La Restauración de los Sujetos (Fin de la Serie)

## Árbol de Ejecución

```text
[ Inicio: Instrumentality In Progress (Cargado del Ep 25) ]
        |
        v
[ Instrumentality.reject_merge! -> siem.merge_rejected ]
        |
        +-- (Fallo: complete_merge / EoE Leak / Angel / Dummy) ---> [ Exit 20 o Fail de Lab ]
        |
        v
[ AtFieldSelf.restore! -> siem.at_field_self_on ]
        |
        v
[ siem.i_am_i ]
        |
        v
[ siem.subjects_restored ]
        |
        v
[ MAGI = 3 (Vuelve a haber quórum real) ]
        |
        v
[ siem.congratulations_of_others ]
        |
        v
[ siem.take_care ]
        |
        v
[ FINAL DE ARCO: :boundaries_restored_fragile (Exit 19) ]
```

## Runbook Numerado
1. **Verificación de Estado Inicial:** El proceso asume que `Instrumentality.in_progress?` es *true* (heredado del 25 o forzado para la prueba). Si no hay un atacante ni `complete_merge`, el playbook avanza.
2. **Rechazo (Reject Merge):** Shinji decide que la fricción y el dolor son mejores que la nada. `Instrumentality.reject_merge!` frena el impacto psicológico.
3. **Restauración Perimetral:** `AtFieldSelf.restore!` activa de nuevo la privacidad lógica (`at_field_self_on`) y la identidad individual (`i_am_i`).
4. **Respuesta del Entorno:** Con los límites restaurados, vuelven a existir los sujetos (`subjects_restored`). Y como son entidades separadas, pueden relacionarse y felicitarse (`congratulations_of_others`).
5. **Advertencia de Mantenimiento:** El sistema loguea `take_care`. No es un *patch* permanente, es un proceso continuo.
6. **Resultado Lab:** La traza termina con Exit Code 19 (`:boundaries_restored_fragile`). Seele.kpi fracasó definitivamente en la continuidad de TV.

## Handoff a Episodio 27
Ninguno. **FIN DE LA SERIE.** La televisión cerró. Este proyecto ha terminado. No se creará archivo para un Episodio 27.
