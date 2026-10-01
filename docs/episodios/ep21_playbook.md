# Playbook: El Archivo Histórico y el Cierre de Kaji

## Árbol de Ejecución

```text
[ Inicio: Leer Archivo Histórico (Origin File Opened) ]
        |
        +-- (Fallo: siem.pattern_blue detectado) ---> [ :origin_denied ]
        |
        v
[ Documentar Gehirn y Second Impact ]
        |
        v
[ Contact Experiment (Yui genera maternal_presence) ]
        |
        v
[ MAGI Builder = Naoko ] ---> [ Naoko mata a Rei I ]
        |
        v
[ Gehirn.rebrand! => NERV ] (Rebrand sin sanidad)
        |
        v
[ Presente: Kaji es Asesinado (kaji.terminated!) ]
        |
        +-- (Fallo: skip-Kaji / kaji sigue alive) ---> [ :origin_denied ]
        |
        v
[ siem.still_a_child (Shinji asimila el trauma pasivamente) ]
        |
        v
[ SUCCESS HISTÓRICO: :origin_recorded (Exit 15) ]
```

## Runbook Numerado
1. **Filtro de Ruido (Cero Ángeles):** El Playbook comienza bloqueando explícitamente cualquier aparición de Ángel (Arael, Ireul) o armas (`DummyPlug`, `YuiBeast`).
2. **Apertura de Expediente:** Se inicializa `OriginFile`, parseando la época pre-NERV.
3. **Gehirn y Yui:** Se registra a `Gehirn`. Se ejecuta `ContactExperiment`, explicando que Yui no es un "modo berserk", es el origen de la `maternal_presence_origin` del LCL.
4. **Tragedia de Naoko:** Se especifica que `magi.builder` es `:naoko`. Se dispara el evento histórico donde ella ejecuta a la niña (`rei_i_killed`).
5. **Rebranding:** `Gehirn` cambia su nombre a NERV en un intento banal de borrar la historia (`gehirn_rebrand`).
6. **Muerte de Kaji (Liaison):** Volvemos al presente (2015). El objeto `Liaison` Kaji es ejecutado (`terminated!`), cerrando el `shadow_graph` que mantenía a Misato informada.
7. **El Niño Ciego:** Shinji no "madura" por todo esto, simplemente se encoge de hombros psicológicamente (`still_a_child`).
8. **Resultado Lab:** La traza termina con Exit Code 15 (`:origin_recorded`). 

## Handoff a Episodio 22 (Don't Be / せめて、人間らしく)
El Episodio 21 cierra el misterio fundacional y remueve a Kaji del mapa. El Episodio 22 devuelve a la guerra, pero rompe las reglas tácticas de nuevo.
*   El Episodio 22 **traerá a Arael**, un ángel orbital inalcanzable.
*   **No hay combate cuerpo a cuerpo.** Arael disparará un rayo psíquico/luz directo a la mente.
*   El objetivo será **Asuka Langley** (Eva-02), destrozando todos sus traumas infantiles y su orgullo.
*   El *Origin File* aquí leído no servirá de nada contra Arael. Se requerirá un milagro forzado: la Lanza de Longinus (pero no adelantaremos eso todavía).
