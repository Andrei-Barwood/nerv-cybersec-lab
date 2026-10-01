# Briefing Episodio 12: She said, "Don't make others suffer..." (INC-SAHAQUIEL-001)

## Contrato
El incidente INC-SAHAQUIEL-001 trata sobre una amenaza masiva, el 10º Ángel Sahaquiel, que no camina ni se esconde: es un inmenso cuerpo biológico estacionado en órbita, actuando como un **payload cinético**. El aterrizaje no es el comienzo de una pelea; el aterrizaje es la destrucción absoluta de Tokio-3. Para sobrevivir, NERV no puede aplicar un Playbook terrestre. Debe usar las supercomputadoras MAGI para predecir el impacto y usar los Evas para interceptar la bomba viva en el aire (AT Fields como freno simultáneo) antes de que toque el suelo.

## Lo que este episodio enseña
*   **Payload Cinético (In-flight mitigation):** Cuando el ataque no se puede "pelear" una vez ejecutado; la intercepción en tránsito es la única defensa.
*   **Visibilidad Sin Acción es Inútil:** Ver el ETA (*Estimated Time of Arrival*) y calcular el impacto con MAGI sirve de poco si no alineas físicamente tus defensas en el milisegundo final.
*   **Milagro Geométrico (Copa AT):** Se requieren 3 campos AT superpuestos formando un "colchón" de rebote para disipar una energía cinética inmensa. Si falta uno, se rompe.

## Lo que este episodio NO enseña
*   **No es el Episodio 13 (Ireul):** MAGI funciona perfectamente aquí como calculadora balística. No está hackeado, no tiene un virus, y está fully-powered. 
*   **No es el Episodio 06 (Yashima):** Yashima fue francotirador de energía hacia una fortaleza inmóvil en el piso. Aquí la fortaleza te cae encima.
*   **No es Combate Cuerpo a Cuerpo (Analog Melee):** El combate analógico en el cráter de impacto no existe. Si Sahaquiel aterriza, todos mueren. 
*   **No es el Apagón (Ep 11) ni Baile (Ep 09):** NERV tiene luz, consolas y telemetría. La solución no es sincronizar música ni prender linternas.

## Definición de Victoria y Derrota
*   **Victoria (Lab):** `contained_controlled` (Exit 0). Se alcanza únicamente interceptando la masa en vuelo (`intercept_ok`), lo cual requiere a los 3 Evas en superposición (`overlapping_at_fields`) para lograr el *brake* y apuñalar el núcleo con `impact_progress < 1.0`. 
*   **Derrota (Lab):** `unresolved` (Exit 2). Ocurre si el `impact_progress` llega a `1.0` (la bomba cae), lo cual destruye la ciudad (`city_destroyed`). Intentar mandar a 1 o 2 Evas, usar Positrones o modo Beast (`contained_uncontrolled`) también resulta en falla.

## Vocabulario Nuevo
*   **Órbita:** El dominio exo-perimetral desde el cual se origina la amenaza.
*   **Payload Cinético:** Una bomba de masa y gravedad; el impacto físico es el vector de ataque principal.
*   **Impact Progress / ETA:** El reloj descendente calculado por MAGI (0.0 a 1.0).
*   **Intercept / AT Field-freno:** Detener un ataque en tránsito. El AT Field del defensor se usa para amortiguar/frenar masa, no para rebotar láseres.
*   **Geometría de Captura:** La necesidad estructural de $n=3$ puntos de apoyo para repartir el daño cinético de manera que no rompa las defensas individuales.

## Relación con incidentes anteriores
*   **Ep 05-06 (Ramiel):** Ramiel era una fortaleza inamovible que taladraba. Sahaquiel es el proyectil en sí mismo.
*   **Ep 11 (Matarael):** MAGI estaba inerte. Aquí, MAGI funciona perfectamente y su capacidad de computación es obligatoria para adivinar las coordenadas del milagro.
*   **Ep 13 (Ireul - Frontera):** En el siguiente incidente, MAGI dejará de ser la herramienta salvadora para convertirse en el rehén de un virus; pero en el 12, MAGI está sana.

## Lista de Secciones
1.  **Briefing:** Contrato de interceptación cinética y el cráter prohibido.
2.  **Aparición:** El cielo ocupado por un ojo y el cálculo de MAGI.
3.  **Anatomía:** El ETA, el modo :brake de los Evas y el core in-flight.
4.  **Patrón Cinético:** Detener el malware en el gateway, no en el endpoint.
5.  **TTPs:** Fases del payload orbital y el triple campo AT.
6.  **Detección:** El countdown visible y los misiles inútiles.
7.  **Prevención:** El radar temprano, MAGI sano y la arquitectura de a 3.
8.  **Playbook:** Runbook del intercept y el milagro del vuelo.
9.  **Factor Humano:** Tres operadores confiando su vida a un cálculo.
10. **Contrato Ruby:** Implementación de Sahaquiel, ImpactClock, AtFieldBrake.
11. **Laboratorio:** Run exitoso validando que el ángel no aterrizó.
12. **After-Action:** Cierre del evento orbital y pase a la infección de MAGI.
