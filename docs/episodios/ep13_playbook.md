# Playbook: Reverse-Hack de Ritsuko y el Dead End

## Árbol de Ejecución

```text
[ pribnow_contaminant / pattern_blue_micro ]
                       |
                       v
         [ signature_failed (Mutación) ]
                       |
                       v
       [ magi_brain_infected (Melchior) ]
                       |
                       v
      [ magi_brain_infected (Balthasar) ]
         [ majority_owner -> :ireul ]
                       |
                       v
            [ self_destruct_armed ]
                       |
         +-------------+-------------+
         |                           |
    [ eva_sortie ]          [ Aísla Casper (Sano) ]
         |                           |
         v                           v
[ eva_sortie_misapplied ]   [ casper_reverse_hack ]
         |                           |
         v                           v
  [ UNRESOLVED / FAIL ]      [ evolution_dead_end ]
                                     |
                                     v
                       [ majority_owner -> :nerv ]
                                     |
                                     v
                      [ SUCCESS: :contained_controlled ]
```

## Runbook Numerado
1. **Brecha de Laboratorio:** Aparece óxido anómalo en Pribnow. El SIEM marca `pattern_blue_micro`.
2. **Polimorfismo:** Las defensas automáticas fallan (`signature_failed`); Ireul muta.
3. **Escalada a MAGI:** Ireul salta al cerebro principal y compromete a Melchior (`magi_brain_infected: melchior`).
4. **Majority Hijack:** Ireul compromete a Balthasar. El `majority_owner` se vuelve `:ireul`. 
5. **Amenaza Terminal:** NERV entra en alerta de autodestrucción inminente (`self_destruct_armed`).
6. **Desvío de Doctrina:**
   * Si alguien invoca Evas (`eva_sortie: true`), el lab marca error (`eva_sortie_misapplied`) y la base estalla.
7. **Respuesta Ritsuko:** Desconecta/protege lógicamente a Casper (El tercer nodo).
8. **Reverse-Hack:** Usa Casper para forzar un paquete de código suicida en el bucle evolutivo de Ireul (`casper_reverse_hack`).
9. **Dead-End:** Ireul procesa la "Falsa Evolución" y choca contra una pared lógica, deteniendo su ciclo vital y quedando inerte (`evolution_dead_end`).
10. **Recuperación del Quorum:** Melchior y Balthasar quedan liberados; `majority_owner` vuelve a ser `:nerv`.
11. **Victoria:** `contained_controlled` sin un solo disparo.

## Condiciones y Hooks
*   Si `eva_deployed?` es verdadero, el lab debe rechazar el `:contained_controlled` de inmediato, penalizando la falta de adaptabilidad a vectores Lógicos (Capa 7/Código).
*   Si el `dead_end` no se logra, la base colapsa.
*   En los 12 episodios previos, MAGI fue Juez; aquí aprendemos que el Juez puede corromperse (Byzantine Fault).

## Handoff a Episodio 14 (Weaving a Story)
Sobrevivimos al malware divino. Hemos completado el primer arco narrativo y pedagógico de Evangelion / NERV. **El Episodio 14 (Weaving a Story)** no trae un ángel nuevo. Es un *recap* en el canon, y en nuestra metodología será un **AAR / Tabletop General de Mitad de Serie** exigido por la cúpula (Seele). Repasaremos la higiene construida desde Sachiel (Ep 01) hasta Ireul (Ep 13), y prepararemos la arquitectura para los ángeles de la segunda mitad de la serie, quienes abandonarán la fuerza bruta para atacar la mente misma de los pilotos.
