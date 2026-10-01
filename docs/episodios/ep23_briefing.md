# Briefing Episodio 23: Fusión y Sacrificio del Nodo (INC-ARMISAEL-001)

## Contrato
El incidente INC-ARMISAEL-001 introduce al 16º Ángel, Armisael. A diferencia del ángel anterior (que se quedó en órbita atacando de lejos), Armisael desciende y entra en contacto directo, pero no mediante impactos cinéticos. Es una hélice de luz que busca *fusionarse* biológica y lógicamente con el activo defensor (Eva-00) y su piloto (Rei II), para luego intentar un salto lateral (`lateral`) hacia la Unidad-01. La mitigación para detener este *worm* in-process exige aislar el nodo comprometido y destruirlo, lo que se traduce en un auto-sacrificio consentido por parte de Rei II. El intento de NERV de hacer un *restore* desde sus backups biológicos (Clone Tank) arrancará a Rei III, pero la copia no posee la misma identidad o sesión de memoria que la original.

## Subtipo: Fusión y DR Humano
Este no es un ataque que se repele empujando al agresor fuera del perímetro. El enemigo *se convierte* en el sensor que estás usando para defenderte. Además, NERV revela su arquitectura de *Disaster Recovery* más macabra: una granja de clones idénticos que sirven tanto de núcleo para el Dummy Plug como de *hot standbys* para el puesto del piloto.

## Lo que este episodio enseña
*   **Aislar y Sacrificar el Nodo:** Cuando el *Endpoint Detection & Response* (EDR) o el host principal es asimilado por un malware polimórfico y empieza a pivotar hacia el resto de la red, no intentas limpiarlo; aislas el servidor y lo borras (`node_sacrifice!`).
*   **Consentimiento vs Override:** En el Episodio 18 (Bardiel), NERV activó el Dummy Plug y borró al piloto del Eva-03 en contra de su voluntad. Aquí, el piloto (Rei II) consiente en la autodestrucción, haciendo la diferencia ética fundamental.
*   **Los Snapshots no son la Sesión Viva:** Restaurar una máquina virtual comprometida a un backup de ayer es higiénico; restaurar a un *empleado* desde una copia de memoria sin los últimos meses de experiencia (`identity_match < 1`) es un desastre humano. Rei III no es Rei II.

## Lo que este episodio NO enseña
*   No hay Lanza de Longinus; se perdió en el episodio anterior (Ep 22).
*   No hay Dummy Plug para matar al ángel; el tanque de clones explica de dónde *salió* el Dummy, pero no lo usamos como respuesta de combate táctica.
*   No es un "hijack" parasitario controlable como Bardiel (Ep 18). El ángel se funde con la consciencia de Rei.
*   Tabris (Kaworu) no aparece aún, ni hay Third Impact.
*   Rei II y Rei III NO son la misma persona a nivel de datos y estado.

## Definición de Victoria y Derrota
*   **Victoria (Lab):** `:contained_controlled` (Exit 0). Eva-00 se sacrifica consintiendo la detonación; el salto lateral hacia Eva-01 se detiene; Armisael muere. Rei III arranca con pérdida de memoria (`identity_mismatch`).
*   **Derrota (Lab):** `:unresolved` o errores si se intenta mantener a Armisael vivo, si salta a Shinji (Eva-01), o si Rei III se codifica como un clon perfecto con 100% `identity_match`. Usar Dummy o Longinus aquí resultará en FAIL en el test suite.

## Vocabulario Nuevo
*   **Armisael:** El ángel en forma de doble hélice de luz polimórfica.
*   **Fuse:** La asimilación de la identidad del ángel con el defensor.
*   **Lateral Threat:** La intención del malware de saltar a otro host (Eva-01) estando dentro de Eva-00.
*   **Node Sacrifice:** Destrucción intencionada del sistema comprometido.
*   **Clone Tank:** La infraestructura de almacenamiento de *backups* biológicos de Rei.
*   **Rei II / Rei III:** Versiones secuenciales de un mismo hardware con firmware corrupto.
*   **Restore Incompleto:** La pérdida de *cache* y estado en el backup.

## Relación con incidentes anteriores
*   **Ep 13 (Ireul):** Allá se infectó el clúster. Aquí se infecta el endpoint biológico.
*   **Ep 16 (Leliel):** En el 16 el niño entró al vacío. En el 23, el vacío se fusiona con su compañera de equipo.
*   **Ep 18 (Bardiel):** El Dummy usó un Clon de Rei para matar; hoy vemos la fábrica de esos clones.
*   **Ep 21 (Origin):** Se mencionó `rei_i_killed`. Hoy arranca Rei III.
*   **Ep 22 (Arael):** No tenemos lanza; Asuka es inútil (psyche broken).

## Lista de Secciones
1.  **Briefing:** Contrato (INC-ARMISAEL-001; fusión; nodo).
2.  **Aparición:** Hélice, aguja, fusión, cruz y tanque de clones.
3.  **Anatomía:** fuse!, lateral_to, node_sacrifice!, identity_match.
4.  **Patrón Fusión con Defensor:** El worm eres tú; borra el sensor.
5.  **TTPs:** HelixForm, FuseWithDefender, ReiIIINotReiII.
6.  **Detección:** eva00_fused, node_sacrifice, identity_mismatch.
7.  **Prevención:** Aislar EDR, consent vs wipe, identity farms.
8.  **Playbook:** Fuse, amenaza lateral, sacrificar 00, boot III.
9.  **Factor Humano:** Lágrimas, II no es III, Ritsuko y el tanque.
10. **Contrato Ruby:** Implementar `Armisael`, `Fusion`, `NodeSacrifice`, `CloneTank`.
11. **Laboratorio:** Exit 0 pero con mismatch de identidad y tanque revelado.
12. **After-Action:** Handoff a Tabris en el Episodio 24.
