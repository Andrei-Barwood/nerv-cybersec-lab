# Playbook: Salvage, Choice y S2 Persistente

## Árbol de Ejecución

```text
[ INC-ZERUEL-001 Aftermath: plug_empty + S2 Ingested ]
        |
        v
[ siem.dwell_inside (Pasan 30 días) ]
        |
        +-- (Fallo: Dummy Plug intenta Rescue) ---> [ siem.dummy_salvage_rejected ]
        |
        v
[ Salvage Protocol Started (Ritsuko) ]
        |
        +-- (Elección: stay / lost) ---> [ Exit 14: :operator_lost_in_control ]
        |
        v
[ Return To Body (Shinji elige los límites y el dolor) ]
        |
        v
[ siem.boundaries_restored ] & [ siem.operator_recovered ]
        |
        v
[ siem.s2_still_in_prod (El Eva retiene el órgano enemigo) ]
        |
        v
[ SUCCESS FRÁGIL: :operator_recovered_fragile (Exit 13) ]
```

## Runbook Numerado
1. **Verificación de Herencia:** El Playbook hereda un estado donde el ángel está muerto, el Eva tiene el S2 (`s2_present`), y el asiento del piloto está vacío (`plug_empty`). Si aparece un Ángel Nuevo, el playbook levanta error inmediato.
2. **Período de Latencia (Dwell):** Transcurre un mes de inactividad de red (`dwell_inside`), donde la mente del piloto está expuesta al núcleo asimilado y a una *maternal_presence*.
3. **Bloqueo del Dummy:** Se documenta que el Dummy Plug no sirve para salvar, sino para matar. No emite `salvage`.
4. **Inicio de Rescate:** Ritsuko lanza el protocolo biométrico de rescate (`salvage_started`).
5. **Decisión del Ego (Return To Body):** Aislado en el líquido sin fronteras, el piloto debe decidir. Elige rechazar la fusión con la plataforma omnipotente y vuelve a tener forma física (cuerpo con límites) y vuelve a aparecer en la cabina vacía (`return_to_body`, `boundaries_restored`, `operator_recovered`).
6. **Validación de Persistencia:** Aunque el humano vuelve, el implante enemigo no se va de Producción (`s2_still_in_prod`). NERV ahora aloja poder ilegítimo.
7. **Resultado Lab:** La traza termina con Exit Code 13 (`:operator_recovered_fragile`).

## Handoff a Episodio 21 (He was aware that he was still a child / Nerv, Birth)
El Episodio 20 recupera a Shinji. El Episodio 21 se aleja de él temporalmente.
*   En el Episodio 21 **tampoco habrá combate de Ángel**.
*   El foco cambia al espionaje de **Kaji**, el secuestro de Fuyutsuki, y un largo **volcado histórico (Dump)** sobre el origen de NERV (Gehirn), Naoko Akagi, MAGI y Yui Ikari.
*   El 21 mostrará por fin el *Contact Experiment* que puso a esa `maternal_presence` dentro del LCL del Eva en primer lugar.
