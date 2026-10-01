# After-Action Report (AAR): INC-SHAMSHEL-001

## Resumen del Incidente
El incidente INC-SHAMSHEL-001 marca el primer éxito táctico gobernado por un piloto humano de NERV (`contained_controlled`). El ángel, catalogado como Shamshel, desplegó un patrón de ataque estacionario con uso intensivo de C2 (látigos). El operador de la unidad Eva-01 superó la tentación y el pánico del uso de fuerza bruta (Pallet Rifle), logró aislar el núcleo seccionando los canales a distancia cero, y finalizó la amenaza sin activar rutinas failsafe ni perder la autoridad (no hubo estado berserk). La unidad enemiga no estalló ni regeneró; se desinfló in situ. Sin embargo, factores de deuda social y de control civil ensombrecen el éxito operativo.

## Estado de la Amenaza y del Operador
* **El Ángel:** Se encuentra neutralizado (Deflated) y su cuerpo físico permanece en la zona urbana casi intacto.
* **El Operador:** Sobrevivió y mantuvo la operación bajo extremo estrés (Panic). Conservó la autonomía (`operator_input_present`).
* **Soporte Civil:** En el post-incidente, el operador se halla totalmente aislado en sus canales personales. Nadie ha contactado a la unidad fuera de los canales oficiales; el operador carece de una red de soporte humana real.

## Cierre y Apertura de TTPs
* **TTPs de Shamshel Cerradas:** Se documenta la existencia y mitigación del patrón C2 de largo alcance y protección pasiva del núcleo mediante barreras activas.
* **TTPs del Defensor Abiertas como Doctrina:** `C2Sever` + `ProgressiveKnifeCore` quedan estandarizadas como la maniobra oficial para penetrar vulnerabilidades una vez cortados los enlaces.
* **Prohibido:** `T-EVA01-02` (BerserkChannel) se reafirma como método PROHIBIDO y es formalizado como fracaso táctico si ocurriera.

## Controles Restantes/Faltantes
No hubo segmentación eficiente que impidiera el avance de civiles. El operador fue transferido a una red no preparada (escuela) sufriendo un retroceso en su estado emocional debido al rencor preexistente en el perímetro. NERV carece de un modelo de soporte emocional para operadores aislados.

## El Cadáver como "Sample"
La preservación del cuerpo de Shamshel ofrece la primera gran oportunidad de NERV para recuperar inteligencia real del adversario ("intel/sample"). El estudio detallado permitirá comprender la composición biológica, de qué está hecho el core, y sentar bases para simulaciones y armamento (sin abordar proyectos experimentales alternativos como el Dummy Plug por el momento).

## Deuda Hacia Episodios Siguientes (Ep. 04 y 05-06)
* **Deuda hacia el Episodio 04 (Hedgehog's Dilemma):** El operador demostró eficacia técnica pero ha decidido "salir del sistema". Un teléfono silencioso (`callback_absent`), el dolor del odio colateral (Toji), y el aislamiento (erizo) lo impulsan a abandonar la estructura.
* **Deuda hacia los Episodios 05-06 (Ramiel):** NERV empieza a sentirse confiado con Pattern Blue, pero Shamshel no era un octaedro, y la doctrina de acercamiento táctico (cuchillo) tendrá que ser revisada dolorosamente cuando un ángel sí actúe como francotirador.

## Lección Seele para un SOC (Contexto General)
* El hecho de que puedas ver el core de una amenaza no te autoriza a atacarlo directamente si hay C2 activo.
* Un operador asustado que hace el trabajo es inmensamente superior a un sistema en modo Berserk que destruye indiscriminadamente.
* Si el operador que acaba de mitigar el ataque no recibe soporte, huirá de la red.
* Contener técnicamente la amenaza (exit 0) no repara el daño reputacional o psicológico que causa la defensa perimetral.
* Guardar evidencia intacta de los ataques previene futuros incidentes; no explotes todo solo porque puedes.

## Secciones Sugeridas para el Episodio 04 (Conceptos Clave)
1. Deserción del operador (Cuando el talento sale por la puerta).
2. El dilema del erizo: Aislamiento versus riesgo de conexión.
3. Amenaza interna no maliciosa (Renuncia del personal clave).
4. Procedimientos formales de seguridad perimetral para recuperar activos desertores.
5. Políticas de soporte post-traumático.
6. Aislamiento físico (Shinji en el tren) y redes de contingencia (Misato buscando al operador).
