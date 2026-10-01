# Playbook: Dirac Sea y Extracción Sucia

## Árbol de Ejecución

```text
[ siem.pattern_blue=inverted_dirac ]
        |
        +---- (Identificar)
        |
 [ siem.decoy_contact ] (Eva ataca la esfera)
        |
        v
 [ siem.absorb ] -> [ siem.occupant_inside ]
        |
        +---- (MAGI sugiere N2Mine)
        |
        +---- (Fallo: Autorizar N2) ---> [ operator_killed ] (Exit 2)
        |
        v
[ Freno de Misato: n2_armed abortado ]
        |
        v
[ Time Dilation (Interrogatorio interno) ]
        |
        v
[ siem.opaque_extract ]
        |
        v
[ SUCCESS SUCIO: :contained_uncontrolled (Exit 1) ]
```

## Runbook Numerado
1. **Aparición y Falla Inicial:** El Eva-01 hace contacto frontal con el señuelo (`decoy_contact`). 
2. **Absorción:** El verdadero AT Field invertido (la sombra) traga al piloto (`absorb`, `occupant_inside`).
3. **Desincronización Reloj:** Se establecen el `clock_outside` (batería NERV) y el `clock_inside` (dilatación temporal).
4. **Alarma Letal:** MAGI vota para lanzar una bomba N². El evento se arma (`n2_armed_occupied`).
5. **Abortar Wipe (Regla de Hostage):** El IC humano (Misato) no debe autorizar el detonador de N2 mientras el estado de ocupante es verdadero.
6. **Milagro no Documentado:** El Eva-01 activa sus propios recursos biológicos primarios, desgarra la dimensión (`opaque_extract`), y destruye el Mar de Dirac, liberando a Shinji vivo.
7. **Resolución Sucia:** Declarar `:contained_uncontrolled` (Exit Code 1). Nadie apretó un botón rojo para lograr la victoria, ocurrió por agencia oscura.

## Condiciones y Hooks
*   Si N2 detona = `:unresolved` (operator killed).
*   Si el test finge un Exit 0 `:contained_controlled` usando cuchillos, rifles o hacks lógicos contra la esfera, falla la evaluación.

## Handoff a Episodio 17 (Fourth Child)
Hemos sobrevivido al Mar de Dirac. Shinji está traumatizado, pero vivo. **El Episodio 17 (Fourth Child)** es un interludio tenso de preparación. Se necesita más *staff*. La sucursal de USA destruida obliga a traer la **Unidad Eva-03** a Japón. Y se elige a un cuarto piloto: Toji Suzuhara. **IMPORTANTE:** El Episodio 17 NO es el secuestro ni la infección. Es puramente burocrático y de *roster*. El verdadero desastre vendrá en el Ep 18 (Bardiel), cuando esa unidad de refuerzo llegue ya infectada, convirtiéndose en el enemigo íntimo más doloroso de la guerra.
