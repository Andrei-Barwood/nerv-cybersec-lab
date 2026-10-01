# Briefing Episodio 20: Oral Stage (INC-ORAL-001)

## Contrato
El incidente INC-ORAL-001 es el *aftermath* o secuela directa del Episodio 19. No hay combate, no hay patrón azul, no hay ángel nuevo. La crisis consiste en que el operador de primera línea (Shinji) permanece introyectado/fusionado (`operator_introjected`) dentro de la plataforma principal de defensa (Eva-01) tras haber ingerido el Motor S2 enemigo. El trabajo del SOC es un mes (`dwell_days`) de "Salvage": intentar extraer al humano (restaurar sus fronteras/AT Field) sin destruir la máquina que ahora posee el arma persistente (S2) del atacante.

## Subtipo: Recovery-from-Tool
Distinto del rescate del Episodio 16 (Dirac). En el 16, el atacante mantenía al Eva rehén en un espacio extradimensional. Aquí, el contenedor es *la propia herramienta de la empresa*. El analista fue tragado por los scripts y privilegios que intentó domar, y ha perdido la frontera entre él y el sistema.

## Lo que este episodio enseña
*   **Salvage no es Auto-Response:** Un script agresivo (Dummy Plug) no te sirve para operaciones delicadas de recuperación de identidad.
*   **Volver Frágil (AT Field/Boundaries):** Recuperar al administrador significa obligarlo a asumir de nuevo su forma humana, con las barreras de dolor y límites (AT Field) del mundo real.
*   **S2 Persistente (Deuda en Prod):** El ángel está muerto, el niño regresa, pero el Motor S2 enemigo sigue instalado en el servidor principal de la empresa. Eso no se lava con el *salvage*.

## Lo que este episodio NO enseña
*   No abordaremos el *Contact Experiment* completo ni el nacimiento histórico de NERV (Eso es el Episodio 21).
*   No abordaremos "Instrumentality" ni el fin del mundo (Ep 25-26).
*   El *Dummy Plug* no realiza el Salvage.
*   No hay un nuevo ángel.

## Definición de Victoria y Derrota
*   **Victoria (Lab):** `:operator_recovered_fragile` (Exit 13). Shinji elige recuperar sus límites (return to body), pero el S2 persiste en el Eva (`s2_still_in_prod`).
*   **Derrota (Lab):** `:operator_lost_in_control` (Exit 14). Shinji se queda disuelto en LCL o se intenta usar el Dummy para forzarlo a salir. También es derrota reportar un "Exit 0" de combate de ángel (Zeruel está muerto) o usar `DiracSea`.

## Vocabulario Nuevo
*   **Oral Stage:** Incorporar al otro, disolver límites al ingerir.
*   **LCL:** Líquido primordial donde las formas humanas (y los procesos operativos) pierden sus límites físicos.
*   **Salvage:** Operación de recuperación de personal interno.
*   **Return to body (Boundaries):** Restitución del AT Field, recuperar la individualidad a cambio del sufrimiento del límite.
*   **Maternal Presence:** Nombre permitido para la consciencia subyacente en la máquina defensiva (sin profundizar en su biografía de Contact Experiment aún).

## Relación con incidentes anteriores
*   **Ep 19:** Hereda el `plug_empty` y el `s2_ingested`.
*   **Ep 16:** Rechaza el modelo de `DiracSea`.

## Lista de Secciones
1.  **Briefing:** Contrato (INC-ORAL-001; aftermath; no combate).
2.  **Aparición:** El asiento vacío, 30 días de latencia y diálogo mental.
3.  **Anatomía:** LCL, Salvage, Return, y persistencia del S2.
4.  **Patrón Operador en el Control:** La fusión del analista con la plataforma.
5.  **TTPs:** Dwell, Boundary Dissolved, Return to Body, S2 Persist in Prod.
6.  **Detección:** `plug_empty` crónico y `s2_present`.
7.  **Prevención:** Evitar comer 0-days y no depender de sysadmins en modo dios.
8.  **Playbook:** Árbol de recuperación, rechazo del Dummy y Retorno Frágil.
9.  **Factor Humano:** Shinji eligiendo el mundo de los otros; Gendo valorando el S2.
10. **Contrato Ruby:** Implementar Salvage, ReturnToBody, S2 persiste.
11. **Laboratorio:** Exit 13 (Operator Recovered Fragile).
12. **After-Action:** Handoff a la historia de Naoko y el Episodio 21.
