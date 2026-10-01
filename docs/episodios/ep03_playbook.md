# Playbook de Mitigación (INC-SHAMSHEL-001)

## Árbol de Ejecución y Runbook

```text
[ MAGI Deploy ]
       |
       v
[ Pattern Blue (Shamshel) ]
       |
       +---> (Rifle disparado) ---> [ Falla en C2 ]
       |
       v
[ Evaluación de C2 activo ]
       |
       +-- (Piloto en Freeze Total) --> [ FAIL: :unresolved ]
       |
       +-- (Beast Mode Activado) -----> [ FAIL: :contained_uncontrolled ]
       |
       v
[ Sever C2 (Cuchillo corta látigo) ]
       |
       v
[ Close / Distancia Cero ]
       |
       v
[ Progressive Knife (Core Strike) ]
       |
       v
[ Deflate (Cadáver) ] ---> [ Recolectar Muestra ] ---> [ SUCCESS: :contained_controlled ]
```

## Runbook Numerado
1. **Pattern Blue:** Se confirma la firma; el ángel anclado es Shamshel.
2. **Deploy MAGI:** Autorización para lanzamiento del Eva-01.
3. **Rifle (Pallet Rifle):** El operador falla al intentar saturar el campo (se registra el evento, pero no corta el enlace).
4. **Evaluación de C2:** El canal remoto sigue arriba.
5. **Freeze Check:** Misato entrena en vivo (coaching de IC). Se requiere `operator_input_present`.
6. **Sever:** El operador despliega el cuchillo y secciona físicamente los látigos de luz.
7. **Close:** El Eva cierra la distancia, entrando a la vulnerabilidad sin que el canal se lo impida.
8. **Knife (CoreStrike):** Penetración del core con el cuchillo progresivo.
9. **Deflate:** El ángel pierde soporte estructural, colapsa en lugar de explotar masivamente.
10. **Sample:** NERV retiene el cadáver casi intacto.
11. **Observadores:** Se registran eventos del SIEM indicando civiles no autorizados en la zona.
12. **Callback Absent:** Nadie llama al operador. Este evento no invalida la victoria táctica, pero establece un problema sistémico.

## Condiciones de Terminación
* **Éxito (`:contained_controlled` / exit 0):** `operator_input_present` es `true` DURANTE el corte y destrucción. El C2 fue cortado y el core destruido sin Beast.
* **Fallo 1 (`:contained_uncontrolled` / exit 1):** El núcleo fue destruido porque el Eva usó el canal Berserk.
* **Fallo 2 (`:unresolved` / exit 2):** El operador se congeló o el Eva fue destruido antes de cortar el enlace.

## Hooks Ruby (a implementar en la Sec. 10)
* `magi.authorize_deploy!`
* `shamshel.alive?` -> Depende de `whips_active?` || `core_intact?`
* `pallet_rifle.fire!` (no afecta `whips_active`)
* `progressive_knife.sever_c2!`
* `progressive_knife.core_strike!`

## Handoff a Episodio 04
Se pasa a la siguiente fase: un operador que acaba de lograr su primera contención voluntaria bajo estrés puro, que está manchado socialmente (odio de compañeros), y que no cuenta con un sistema de soporte que responda sus llamadas (`callback_absent`).
