# Briefing Episodio 10: Magma Diver (INC-SANDALPHON-001)

## Contrato
El incidente INC-SANDALPHON-001 cambia radicalmente el paradigma de combate: no nos enfrentamos a una entidad agresiva con una TTP de ataque formada. Detectamos un "Hunt" prenacimiento. El 8º ángel, Sandalphon, es un embrión contenido en la profundidad del magma de un volcán (`:volcano_magma`). NERV intentará extraerlo vivo con una jaula (`CaptureCage`) por motivos de inteligencia. Si el espécimen inicia su desarrollo acelerado (`hatch_progress`), el cazador deberá abortar la misión científica y neutralizarlo antes de que alcance la madurez de combate.

## Lo que este episodio enseña
*   **Caza Embrionaria (Staging Hunt):** Neutralizar una amenaza *antes* de que termine de armarse o hacer `beacon`.
*   **El Entorno es el Enemigo (Dwell Time):** El cazador no opera en un entorno neutral. El magma agota el equipo de refrigeración de la Unidad 02. El reloj (`cooling_remaining`) matará al piloto si se agota.
*   **Kill Criteria vs Greed (Abort to Kill):** La recolección de muestras ("Threat Intel") nunca debe comprometer la contención. Si el huevo eclosiona, se mata. Perder la muestra (`sample_lost`) es un resultado exitoso si se neutraliza el riesgo.

## Lo que este episodio NO enseña
*   No hay tácticas de baile o sincronización. Shinji no será un clon en espejo; es estrictamente una grúa de soporte (`SupportRescue`).
*   No es el `Yashima` de larga distancia. 
*   No hay `DualPlug` ni mentes compartidas.
*   No se aborda la lucha contra un ángel adulto caminante.
*   (Tampoco se evaluarán los viajes de aguas termales/onsen como variable táctica).

## Definición de Victoria y Derrota
*   **Victoria (Lab):** `contained_controlled` (Exit 0). Se logra al ejecutar un aborto y ataque letal (`abort_to_kill`) ANTES de que `hatch_progress` alcance `1.0`, y ANTES de que el `cooling_remaining` del Eva-02 llegue a `0`. Se asume `sample_lost`.
*   **Derrota (Lab):** `unresolved` (Exit 2). Ocurre si Sandalphon completa su eclosión (`hatch_progress >= 1.0`), si Asuka intenta atraparlo sin abortar el *greed* a pesar del riesgo, o si el Eva se cocina (`eva_cooked`). `Beast` mode resulta en `contained_uncontrolled`.

## Vocabulario Nuevo
*   **Embrión (Embryo):** El estadio latente del 8º ángel.
*   **Hatch Progress:** Medidor (0.0 - 1.0) del estado de eclosión biológica de la amenaza.
*   **Magma / Cooling:** El entorno hostil y el presupuesto (budget) de supervivencia térmica del traje tipo-D.
*   **Magma Diver:** Rol del cazador buceando en el entorno perjudicial.
*   **Capture Cage:** Herramienta científica de extracción en vivo.
*   **Sample Lost / Abort-to-Kill:** El fallo de la retención de la muestra como pre-requisito obligatorio para salvar la misión mediante un *kill* agresivo de contingencia.

## Relación con incidentes anteriores
*   **Ep 03:** Allí se obtuvo un cadáver inerte tras el combate. Aquí se intenta una captura "en caliente" antes del combate, con consecuencias desastrosas.
*   **Ep 09 (Baile):** Las herramientas de sincronización desarrolladas con Israfel (`pair_sync`) no sirven de nada en un entorno donde solo cabe un buceador solitario aislado térmica y físicamente.

## Lista de Secciones
1.  **Briefing:** Contrato de caza embrionaria y teatro volcánico.
2.  **Aparición:** El primer "Pattern Blue" que no es un monstruo adulto, es un staging log.
3.  **Anatomía:** El embrión, el magma que cocina, la jaula y el timer.
4.  **Patrón Hunt:** Cazar temprano y sacrificar la muestra por la supervivencia.
5.  **TTPs:** Fases del buceo, el intento de captura y el aborto de la misma.
6.  **Detección:** El progreso de *hatch* visible al SIEM.
7.  **Prevención:** Evitar el KPI burocrático sobre la contención letal.
8.  **Playbook:** Procedimiento abort-to-kill y el rescate de soporte.
9.  **Factor Humano:** Asuka buza por ego; Misato manda el *abort*; Shinji asiste de soporte.
10. **Contrato Ruby:** Implementación del *cooling*, la jaula y el progreso de eclosión.
11. **Laboratorio:** Run exitoso validando que el ángel no nació.
12. **After-Action:** Cierre del Hunt y pase al apagón absoluto del Episodio 11.
