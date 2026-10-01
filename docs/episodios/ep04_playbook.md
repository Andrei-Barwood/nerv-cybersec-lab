# Playbook de Recuperación (INC-HEDGEHOG-001)

## Árbol de Ejecución

```text
[ callback_absent detectado ]
       |
       v
[ hedgehog_too_close ]
       |
       v
[ AWOL ( capacity_actual_zero ) ] -> (Lluvia, Tren) -> [ hedgehog_too_far ]
       |
       +---> [ Propuesta Replace (Gendo/MAGI) ] ---> [ Veto Ético (Misato) ]
       |                                                    |
       v                                                    v
[ Retrieval ] <---------------------------------------------+
       |
       +-- (Forzado por Security) ----> [ FAIL: staffing_failed (El tren parte) ]
       |
       +-- (Reemplazo con Backup) ----> [ FAIL: staffing_failed (Rei asume) ]
       |
       v
[ Negociación en Banda (Misato en la estación) ]
       |
       v
[ Tadaima / Okaeri (im_home) ]
       |
       v
[ SUCCESS: staffing_restored_fragile ]
```

## Runbook Numerado
1. **Detectar Silencio:** Se confirma el `callback_absent` y la ausencia física del operador.
2. **Capacidad a Cero:** Se emite `capacity_actual_zero`. Se bloquea la emisión de `pattern_blue` (no hay ataque en curso).
3. **Propuesta Replace:** Liderazgo propone el recambio (`replace_with_backup_proposed`).
4. **Veto Ético:** Misato objeta el recambio, evitando la presión sobre el backup herido (`backup_used_as_leverage`). (Gendo puede hacer override aquí, lo cual dictaría fracaso a largo plazo).
5. **Retrieve:** Misiones de búsqueda. Misato localiza a Shinji en el punto de egress (la estación).
6. **Negociar Banda:** Misato no da una orden; expone sus propias púas y calor, invitando (no forzando) a encontrar la distancia.
7. **Tadaima:** El operador decide no subir al tren, regresando a la jurisdicción operativa.
8. **Marcar Fragilidad:** Se sella el incidente como `staffing_restored_fragile`. El operador regresó, pero las causas del trauma (las batallas y la presión) siguen intactas.

## Condiciones de Terminación
* **Éxito (`:staffing_restored_fragile` / exit 3):** Shinji decide quedarse tras la interacción final. La capacidad vuelve a ser > 0.
* **Fallo (`:staffing_failed` / exit 4):** Si el operador se sube al tren y abandona la ciudad, o si Rei es asignada como piloto primario forzando la degradación del roster.
