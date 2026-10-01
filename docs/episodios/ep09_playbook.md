# Playbook: Ensayo y Golpe Simultáneo (INC-ISRAFEL-001)

## Árbol de Ejecución (Dos Actos)

```text
==== ACTO 1 ====
[ Pattern Blue (Israfel) ] -> [ Primer Sortie (Sin Ensayo) ] -> [ angel_split ]
                                                                        |
                                                                        v
   [ siem.desync ] <------------------------------------------- [ core_pair_alive ]
         |
         v
[ UNRESOLVED (Fallo Operacional) ] -> [ Lanzar Mina N² ] -> [ n2_stun_window ]

==== ACTO 2 ====
[ rehearsal_started ] -> [ rehearsal_done (El Baile) ]
                                      |
                                      v
[ Segundo Sortie (Eva-01 + Eva-02) ] -> [ simultaneous_strike (Δt ≤ epsilon) ]
                                      |
       +------------------------------+------------------------------+
       |                                                             |
   SI (asuka_lead_override = true)                             NO (Tempo perfecto)
       |                                                             |
       v                                                             v
 [ Δt > epsilon ] -> [ rejoin ] -> [ UNRESOLVED ]        [ core_destroyed (Ambos) ]
                                                                     |
                                                                     v
                                                   [ SUCCESS: :contained_controlled ]
```

## Runbook Numerado
1. **Acto 1 (Despliegue y Split):** Los Evas se despliegan de inmediato sin preparación. Israfel emite `angel_split`.
2. **Fallo de Primer Sortie:** Se detecta asincronía (`desync`) y `core_pair_alive`. El Playbook registra obligatoriamente un intento fallido (Acto 1).
3. **Stun Window:** NERV lanza una mina N² para paralizar a Israfel. El SIEM registra `n2_stun_window`.
4. **Ensayo (Tabletop):** Se inicia la rutina de igualación de relojes (`rehearsal_started`).
5. **Validación:** Se verifica que el ensayo se completó (`rehearsal_done`).
6. **Acto 2 (Segundo Sortie):** Se re-despliegan los dos Evas en fase.
7. **Simultaneous Strike:** Los Evas ejecutan su ataque (`simultaneous_strike`).
8. **Validación Epsilon:**
   *   Si alguien (ej: Asuka) rompe el ritmo para liderar (`asuka_lead_override = true`), el `epsilon` se rompe y el ángel hace `rejoin`.
   *   Si el ataque es atómico (dentro de `epsilon`), ambos cores son destruidos (`core_destroyed`).
9. **Cierre:** Se alcanza `:contained_controlled`.

## Condiciones y Hooks
*   El acto 1 (desync) debe ocurrir para el flujo pedagógico. Un flag `skip_rehearsal = true` provocaría que el Acto 2 falle directamente en `rejoin`.
*   El uso de `DualPlug` no satisface los requisitos de este playbook, porque un Eva no puede golpear ambos núcleos.
*   Sandalphon (magma) no pertenece a esta operación.

## Handoff a Episodio 10 (Magma Diver)
El reloj de equipo (pair sync) está validado. En el Ep 10, la amenaza será completamente diferente: un *Hunt* prenacimiento. El ángel (Sandalphon) es un embrión en magma extremo. No hay que sincronizar el reloj de combate, hay que usar equipo térmico extremo y decidir entre capturar o matar.
