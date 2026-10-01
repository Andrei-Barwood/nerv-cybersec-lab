# Briefing Episodio 22: Ataque a Distancia (INC-ARAEL-001)

## Contrato
El incidente INC-ARAEL-001 introduce al 15º Ángel, Arael, que no tiene intención de pelear cuerpo a cuerpo. Permanece estático en la órbita (no es una bomba que cae como Sahaquiel en el Ep 12) y utiliza un rayo de energía psíquica para exfiltrar/destruir la mente del operador (Asuka) sin penetrar el blindaje del Eva. Para mitigar esta amenaza inalcanzable, NERV debe gastar su herramienta de último recurso: la Lanza de Longinus, un arma de Dogma que destruirá al objetivo pero se perderá en la órbita lunar para siempre.

## Subtipo: Psyops / Exfil Remoto
La superficie de ataque no es la ciudad ni el clúster (MAGI). Es el propio operador. Al apuntar a la psique frágil y agotada de Asuka (T-OP02-03 de los eventos del Episodio 19), Arael realiza un ataque psicológico directo, saltándose todos los firewalls perimetrales tácticos.

## Lo que este episodio enseña
*   **Psyops a Distancia:** No todos los atacantes quieren entrar a tu red (Dirac/Leliel) o tirarte un meteorito (Sahaquiel). Algunos escanean la red en busca de la debilidad mental del personal en guardia (On-call) y hacen exfiltración/daño de memoria humana (Kyoko/Trauma).
*   **El Costo del "Break Glass":** Quemar una *Root Key* (Lanza de Longinus) para salvar el día destruye al enemigo, pero despoja permanentemente a la organización de su seguro principal, enojando al Directorio (Seele).
*   **El 0 Costoso:** El Exit 0 no significa que todos estén bien. Asuka queda rota (`psyche_broken`).

## Lo que este episodio NO enseña
*   No interceptamos al ángel atrapándolo con las manos (intercept-3 del Ep 12 es inútil).
*   No hay "Dirac Sea" (no entras al ángel).
*   El *Dummy Plug* y el Modo Bestia son inútiles aquí (no tienen rango).
*   Armisael (Ep 23) no aparece todavía.
*   No hay "Yui-kill", Yui no tiene nada que ver con el trauma materno de Asuka (Kyoko).
*   Asuka no se cura.

## Definición de Victoria y Derrota
*   **Victoria (Lab):** `:contained_controlled` (Exit 0). Longinus se dispara (`longinus_fired`) mediante Rei, Arael muere, la Lanza se pierde (`spear_lost`), y Asuka queda rota (`psyche_broken`).
*   **Derrota (Lab):** `:unresolved` o errores si se intenta mantener la lanza, matar a Arael con Dummy/Beast, usar `intercept_3`, o curar a Asuka.

## Vocabulario Nuevo
*   **Arael:** El ángel orbital de luz/halo.
*   **Mental Beam:** Rayo psíquico que no causa daño físico, sino extracción y colapso psicológico.
*   **Kyoko:** La madre de Asuka, el origen de la vulnerabilidad mental específica que explota Arael.
*   **Spear of Longinus:** Artefacto extraído de Terminal Dogma, la única arma de NERV capaz de bypass de AT Field infinito.
*   **Spear Lost / Psyche Broken:** Dos variables *true* indispensables para el éxito de este episodio.

## Relación con incidentes anteriores
*   **Ep 12 (Sahaquiel):** Arael está en el cielo, pero no cae.
*   **Ep 16 (Leliel):** Fue ataque mental *después* de que Shinji cayera en el Dirac. Aquí Arael *es* el ataque mental desde lejos.
*   **Ep 18 (Bardiel):** El Dummy Plug se descarta porque tiene rango cero.
*   **Ep 19 (Zeruel):** El trauma de este episodio construyó la caída de `sync_rate` de Asuka que Arael explota hoy.
*   **Ep 21 (Origin):** La madre de Asuka (Kyoko) no es Yui.

## Lista de Secciones
1.  **Briefing:** Contrato (INC-ARAEL-001; mente a distancia).
2.  **Aparición:** Halo inmóvil, rayo y pérdida de la lanza.
3.  **Anatomía:** Mental beam, órbita y un shot de Longinus.
4.  **Patrón Psyops Remoto:** El ego es el puerto abierto.
5.  **TTPs:** Stay In Orbit, Mental Beam, One Shot From Dogma.
6.  **Detección:** orbital_stay, mental_beam, spear_lost.
7.  **Prevención:** Health-check del operador, redundancy.
8.  **Playbook:** Confirmar órbita, sufrir rayo, autorizar Lanza.
9.  **Factor Humano:** Asuka rota, Rei dispara, Gendo quema artefacto.
10. **Contrato Ruby:** Implementar `Arael`, `MentalBeam`, `SpearOfLonginus`.
11. **Laboratorio:** Exit 0 pero con dolor y sin Lanza.
12. **After-Action:** Handoff a Armisael y la fusión en el Episodio 23.
