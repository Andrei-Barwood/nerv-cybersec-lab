# Briefing Episodio 11: The Day Tokyo-3 Stood Still (INC-MATARAEL-001)

## Contrato
El incidente INC-MATARAEL-001 es un **incidente compuesto** (*Compound Incident*). La crisis principal no es el agresor, sino la pérdida total del plano de control en NERV: un apagón absoluto (Outage) que deja a la organización a ciegas. MAGI, el SIEM y las jaulas automáticas quedan inoperativos o reducidos a batería. Sobre este cuartel desvalido llega el 9º Ángel, Matarael, una amenaza oportunista que vierte ácido sobre las escotillas. El SOC debe realizar un despliegue analógico (*analog launch*) antes de que el ácido abra el Geofront.

## Lo que este episodio enseña
*   **Compound Incident:** La simultaneidad del peor día de la infraestructura de TI y la llegada de un actor malicioso externo.
*   **Plano de Control Caído (Outage):** Trabajar sin el SIEM, sin *Single Sign-On* y sin la automatización de orquestación (MAGI `unpowered`).
*   **Analog Launch:** Ejecutar un *runbook* de papel, utilizando linternas, escaleras manuales y un *Combined Sortie* rudimentario sin la telemetría usual.

## Lo que este episodio NO enseña
*   **No es el Episodio 13 (Ireul):** MAGI no está hackeado ni infectado por un virus, simplemente está sin corriente eléctrica.
*   **No es el Episodio 06 (Yashima):** Allí, NERV apagó Japón voluntariamente para alimentar un arma. Aquí, NERV es la víctima involuntaria de un apagón que no controla.
*   **No es Magma ni Baile:** El teatro de operaciones es el cuartel oscuro. No hay relojes térmicos y no se exige sincronización perfecta.
*   **No es órbita (Ep 12):** La amenaza camina, no cae desde el cielo.

## Definición de Victoria y Derrota
*   **Victoria (Lab):** `contained_controlled` (Exit 0). Se logra ejecutando un `analog_launch` y abatiendo a Matarael ANTES de que `acid_progress` llegue a `1.0`. No se exige que la corriente (`hq_power`) esté restaurada para vencer, la recuperación eléctrica puede darse después.
*   **Derrota (Lab):** `unresolved` (Exit 2). Ocurre si el SOC opta por *wait-for-MAGI* ("esperemos a que vuelva la luz para lanzar"), lo que causaría que el `acid_progress` perfore el Geofront. Usar el modo `Beast` también falla (`contained_uncontrolled`).

## Vocabulario Nuevo
*   **Outage:** Apagón local involuntario. Caída del *Control Plane*.
*   **Analog Launch:** El procedimiento manual para eyectar Evas usando personal de puente a batería y jaulas sin red.
*   **Acid Progress:** El goteo corrosivo de Matarael, distinto al taladro masivo de Ramiel.
*   **Compound Incident:** Múltiples fallos críticos no relacionados (caída eléctrica + ángel oportunista) ocurriendo en paralelo.
*   **Linterna / Runbook Offline:** Depender del personal de puente y registros manuales en lugar de las consolas de mando.

## Relación con incidentes anteriores
*   **Ep 06 (Yashima):** La infraestructura fue un activo ofensivo. En el Ep 11, la caída de la infraestructura es el primer P1.
*   **Ep 10 (Sandalphon):** En el volcán fuimos al entorno hostil. Aquí, la casa propia se vuelve inoperable.

## Lista de Secciones
1.  **Briefing:** Contrato de incidente compuesto (Outage + Matarael).
2.  **Aparición:** El cuartel a oscuras antes de la llegada del atacante.
3.  **Anatomía:** El apagón, el ácido, y la consola muerta.
4.  **Patrón Apagón:** Incidentes cuando el SIEM está caído.
5.  **TTPs:** Fases del control caído y el ácido oportunista.
6.  **Detección:** Señales SIEM que sobreviven al corte y *runners*.
7.  **Prevención:** Planificación para la caída del plano de mando.
8.  **Playbook:** Procedimiento manual y *Analog Launch*.
9.  **Factor Humano:** Misato y el puente operando a linterna pura.
10. **Contrato Ruby:** Implementación del Outage, AnalogLaunch y Ácido.
11. **Laboratorio:** Run exitoso validando la victoria analógica.
12. **After-Action:** Cierre del apagón y pase a la amenaza de órbita.
