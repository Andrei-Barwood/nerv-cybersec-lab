# Playbook: Fusiones y Booteos Incompletos

## Árbol de Ejecución

```text
[ Inicio: siem.pattern_blue / siem.helix_contact ]
        |
        v
[ Armisael.fuse!(eva00) -> siem.eva00_fused ]
        |
        +-- (Fallo: Dummy / Longinus(lost) / Casper) ---> [ Ignorado / Fail de Lab ]
        |
        v
[ Armisael.lateral_to(eva01) -> siem.lateral_threat_eva01 ]
        |
        +-- (Fallo: No Sacrificar / Miedo a perder a Rei) ---> [ Fusión total, Exit 2 ]
        |
        v
[ NodeSacrifice.execute!(eva00, consent: true) ]
        |
        v
[ siem.node_sacrifice + siem.eva00_destroyed + siem.armisael_dead_with_node ]
        |
        v
[ CloneTank.boot_next! (Rei III) -> siem.rei_iii_booted ]
        |
        v
[ siem.identity_mismatch (Hash de memoria < 1.0) ]
        |
        v
[ Ritsuko muestra el DR -> siem.clone_tank_revealed ]
        |
        v
[ SUCCESS COSTOSO: :contained_controlled (Exit 0) ]
```

## Runbook Numerado
1. **Detección Cero:** Hélice detectada; no es Arael, no es Sahaquiel.
2. **Inyección Inevitable:** El ángel llama a `fuse!(eva00)`. La consciencia y los sistemas del defensor quedan comprometidos.
3. **El Salto:** Inicia la amenaza lateral `lateral_threat_eva01` en cuanto Shinji acude como *Failover*. 
4. **Purga Consentida:** Rei II, siendo el nodo atacado, invoca la autodestrucción. NERV procesa `NodeSacrifice` confirmando que hay consentimiento, separando éticamente este kill del desastre del Episodio 18.
5. **Wipe Completo:** Mueren Armisael, el Eva-00, y la instancia Rei II.
6. **Recuperación de Desastres:** Gendo invoca la API oculta de `CloneTank`. Rei III despierta (`rei_iii_booted`).
7. **El Diagnóstico Frio:** Shinji interactúa, el laboratorio mide el `identity_match`. El resultado es `< 1.0` (`identity_mismatch`).
8. **Revelación de Secretos:** Ritsuko destruye el silencio y expone el Tanque de Clones (`clone_tank_revealed`).
9. **Resultado Lab:** La traza termina con Exit Code 0 (`:contained_controlled`). NERV gana la batalla militar y pierde el alma táctica.

## Handoff a Episodio 24 (The Beginning and the End)
Los Evas 00 y 02 no existen operativamente (00 voló, 02 tiene piloto rota). Gendo/Seele despachan un "reemplazo" desde Alemania.
*   **Tabris (17º Ángel) / Kaworu Nagisa:** No es un rayo orbital ni una hélice gigante.
*   Es un **insider humano**. Un *Fifth Child* que entra caminando por la puerta con una credencial válida de NERV.
*   Tabris tiene *Free Will* (Libre Albedrío) y puede usar el Eva-02 vacío.
*   El Episodio 24 será el último ataque. Ya no habrá tácticas de armas masivas, sino una vulnerabilidad de *Zero Trust*.
