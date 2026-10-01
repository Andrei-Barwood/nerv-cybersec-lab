# Briefing Episodio 25: El Perímetro de Identidad (INC-INSTRUMENTALITY-001 Parte 1)

## Contrato
El incidente INC-INSTRUMENTALITY-001 (mitad 1 de 2) no involucra a un 18º Ángel, no implica un combate táctico, y no se neutraliza disparando armas o Dummy Plugs. Es el inicio del *Human Instrumentality Project* (HIP), el colapso a escala civilizatoria de la privacidad y del límite entre las personas, modelado aquí como el colapso del AT Field en su modo `:self`. El atacante no es una criatura, sino el KPI corporativo de Seele llevado a ejecución. La definición de "incidente" pasa de ser una violación perimetral a ser una disolución de los sujetos mismos.

## Lo que este episodio enseña
*   **Sin aislamiento no hay yo:** El AT Field, que hasta ahora se consideraba un escudo de combate (`:wall`), es en realidad la frontera psicológica de la identidad individual (`:self`).
*   **Privacy to Zero:** El Proyecto de Complementación (Instrumentality) busca consolidar todas las almas en un solo *data lake*, eliminando el dolor del aislamiento, pero al costo de borrar la individualidad.
*   **El Board es el Incidente:** Seele no está repeliendo un ataque, está ejecutando su propio `KPI` disruptivo a expensas de la infraestructura humana.
*   **La Pregunta Fundamental:** "Do you love me?" no es romance; es la validación de si puede existir una relación con "el otro" sin fusionarse completamente con él.

## Lo que este episodio NO enseña
*   No hay 18º Ángel ni Pattern Blue de siluetas de kaiju.
*   No ocurre "End of Evangelion" (EoE): no hay asalto militar de las JSSDF, ni Evas de Producción en Masa (MP Evas), ni Lanza lunar, ni LCL gore. Estamos modelando el escenario introspectivo de la serie de TV (Episodios 25-26).
*   No usamos el Dummy Plug.
*   No hay resolución (Congratulations / "I am I") en este episodio. Esa es la elección del Episodio 26.
*   `complete_merge` no se invoca como método de victoria.

## Definición de Victoria y Derrota
*   **Victoria (Lab):** Exit Code `17` (`:instrumentality_in_progress`). El laboratorio confirma que el proceso ha iniciado (`start!`), los límites están colapsando, y la ejecución queda *en pausa* interrogando al operador. NO se cierra el incidente.
*   **Derrota (Lab):**
    *   Exit `18` (`:instrumentality_denied_skip`): Si se intenta correr `complete_merge` como un éxito definitivo.
    *   Fallo de tests: Si se asume la presencia de un ángel, si se usa un Dummy Plug, o si se emite prematuramente `congratulations`.

## Vocabulario Nuevo
*   **HIP:** Human Instrumentality Project.
*   **Instrumentality:** El proceso de unificar a la humanidad eliminando las barreras (AT Fields).
*   **AT Field-as-self:** El límite de privacidad e identidad de una persona.
*   **Privacy Collapse:** Cuando los secretos, memorias y emociones se comparten indiscriminadamente en un solo plano.
*   **Do you love me:** La interrogación existencial de los límites del yo.
*   **In Progress:** El estado de un incidente civilizatorio masivo que aún no recibe una resolución humana.

## Relación con incidentes anteriores
*   **Ep 14 (Seele KPI):** Allá era una junta sobre el plan. Aquí es el despliegue a producción.
*   **Ep 20 (Return to Body):** Shinji se disolvió en el LCL y NERV usó herramientas forenses para recuperarlo. Ahora *todos* se están disolviendo psicológicamente.
*   **Ep 24 (Kaworu Abort):** Tabris tenía la llave física para un Impacto y abortó. El Episodio 25 toma el camino abstracto hacia la Instrumentación sin necesidad de la cruz de Dogma.

## Lista de Secciones
1.  **Briefing:** Contrato (INC-INSTRUMENTALITY-001 mitad 1 de 2).
2.  **Aparición:** Interiores abstractos, preguntas, cero ángel en el radar.
3.  **Anatomía:** AT Field-as-self, HIP start, no majority vote.
4.  **Patrón Fallo de Contención Civilizatoria:** Sin perímetro no hay sujeto.
5.  **TTPs:** InstrumentalityStart, PrivacyToZero, DoYouLoveMe.
6.  **Detección:** instrumentality_started, at_field_self_collapsing, no_pattern_blue.
7.  **Prevención:** El SOC que solo veía kaijus falló; es tarde para mitigar.
8.  **Playbook:** start HIP, no salida de Eva, suspender con Exit 17.
9.  **Factor Humano:** Shinji vacío, Asuka rota, Rei mismatch, Misato cuestionada.
10. **Contrato Ruby:** Implementar `Instrumentality`, `ATField(:self)`, exit 17.
11. **Laboratorio:** Comando retorna 17, el mundo en pausa.
12. **After-Action:** Handoff a Ep 26 para la elección final.
