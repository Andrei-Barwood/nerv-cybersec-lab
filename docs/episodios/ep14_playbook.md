# Playbook: Tabletop, Auditoría y Test Cruzado

## Árbol de Ejecución

```text
[ tabletop_started ]
        |
        v
 [ seele_review ]
        |
        +---- (Fallo: new Angel creado) ----> [ aar_failed ]
        |
        +---- (Fallo: rewrite history) -----> [ aar_failed ]
        |
        v
[ catalog_entry (INC-01 a 11) ]
        |
        v
[ catalog_complete (11/11 listados) ]
        |
        v
 [ kpi_conflict (Seele KPI != Containment) ]
        |
        v
 [ pairing_test (Shinji x Eva-00) ]
        |
        +---- (Fallo: Eva-00 Wins / Berserk) -> [ aar_failed ]
        |
        v
 [ eva00_anomaly ]
        |
        v
[ SUCCESS: :aar_complete (Exit 7) ]
```

## Runbook Numerado
1. **Inicio de Auditoría:** NERV abre sesión sin disparar alarmas de *Pattern Blue* (`tabletop_started`).
2. **Presentación al Comité:** Seele toma la llamada (`seele_review`). Queda prohibida la instanciación de un objeto de combate.
3. **Indexación:** Iterar la biblioteca de incidentes H1 (Sachiel a Ireul). Por cada uno, emitir `catalog_entry=<ID>` indicando el Playbook victorioso.
4. **Completitud:** Asegurar que los 11 eventos están listados (`catalog_complete`).
5. **Conflicto Institucional:** Registrar de manera explícita que Seele busca la "Unidad" (Instrumentality), mientras NERV depende de los Campos AT (Aislamiento). Emitir `kpi_conflict`.
6. **Stress Test:** En el laboratorio secundario, aislar a Shinji en el Eva-00 (`pairing_test`).
7. **Registro de Fallo Operativo:** La unidad rechaza la sincronización o se desestabiliza. Emitir `eva00_anomaly`. No celebrar como victoria de combate.
8. **Finalización Segura:** Con el catálogo guardado y la auditoría finalizada pacíficamente, declarar `aar_complete` (Exit Code 7).

## Condiciones y Hooks
*   El menor intento de abrir `File.open(..., "w")` sobre `ep01` a `ep13` fuerza `:aar_failed`.
*   Si `Seele.kpi == :containment`, el test falla. Su KPI es un riesgo sistémico.
*   MAGI no se apaga ni se hackea aquí. Está "en producción", siendo consultada normalmente.

## Handoff a Episodio 15 (Relaciones, Silencio y Kaji)
Hemos sobrevivido la auditoría del AAR. NERV entra en la segunda mitad. **El Episodio 15** no traerá combate. Se enfoca en una pausa "humana", de relaciones, bodas, traiciones de Kaji (espionaje interno), y labios. Aún no aparecerá Leliel (El Mar de Dirac), eso queda para el Ep 16. Debemos recordar que después de compilar Playbooks perfectos, la falla más grande del sistema suele ser el operador humano interactuando (y rompiendo lazos) con sus compañeros.
