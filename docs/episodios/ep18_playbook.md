# Playbook: Override y Mutilación (Dummy Plug)

## Árbol de Ejecución

```text
[ siem.hitchhiker_activated (Detonante del Contaminante Durmiente) ]
        |
        v
[ eva03_hijacked (Bardiel asume el control) ]
        |
        v
[ siem.eva00_down ] & [ siem.eva02_down ]
        |
        v
[ Gendo: "Destruyan el Objetivo" ]
        |
        v
[ siem.operator_refuse (Shinji: "Hay un humano dentro") ]
        |
        +-- (Fallo: Gendo no hace nada) ---> [ :unresolved ] (Bardiel gana)
        |
        v
[ siem.dummy_plug_engaged (Override de Gendo) ]
        |
        v
[ siem.operator_input_discarded (Shinji no puede frenarlo) ]
        |
        v
[ siem.trusted_unit_destroyed ] ---> [ Bardiel.killed! ]
        |
        v
[ siem.occupant_maimed ] & [ shinji.consent == false ]
        |
        v
[ SUCCESS SUCIO: :contained_uncontrolled (Exit 1) ]
```

## Runbook Numerado
1. **Despertar del Parásito:** Se llama al método `activate!` del `DormantContaminant` (que estaba sellado desde el Ep 17). Bardiel secuestra la Unidad-03.
2. **Combate Periférico:** Eva-00 y Eva-02 son despachados rápidamente y marcados como *down*. No son rivales para una Eva-03 corrompida.
3. **El Dilema Ético:** Se ordena a Eva-01 destruir la máquina. Shinji Ikari emite una objeción oficial y se niega a pelear (`operator_refuse`).
4. **Ejecución del Producto (Dummy Plug):** La autoridad militar de Gendo Ikari pasa por encima del teclado físico. El Eva-01 entra en modo autónomo mediante patrones biológicos grabados (Rei).
5. **Aislamiento del Analista:** El operador local ve todos sus inputs bloqueados (`operator_input_discarded`).
6. **Destrucción y Mutilación:** El Dummy Plug tritura la Unidad 03 a fuerza bruta y aplasta el *Entry Plug*, incapacitando de por vida a Toji Suzuhara (`occupant_maimed`).
7. **Resultado Lab:** La traza de SIEM termina con Exit Code 1. NERV ganó tácticamente y perdió organizativamente.

## Handoff a Episodio 19 (Introjection / Zeruel)
El daño de Bardiel y el Dummy Plug no se medirá en servidores, se medirá en lealtad.
*   En el Episodio 19 llega **Zeruel** (14º Ángel).
*   Zeruel no se esconde. Atacará la puerta principal y pulverizará el blindaje de la base con láseres en cruz.
*   **Shinji presentará la renuncia formal y abandonará el cuartel.** La huelga iniciada hoy será un abandono de puesto mañana.
*   Eva-02 perderá la cabeza y los brazos físicos en el combate (Overwhelm).
*   El Dummy Plug se intentará usar, **pero fallará**. La IA probará ser inútil sin el alma de la máquina.
*   Shinji tendrá que volver en el último segundo a la cabina. Y cuando lo haga, el **Modo Beast de la Unidad 01** superará cualquier límite energético conocido, devorando físicamente al ángel Zeruel (El motor S²).
