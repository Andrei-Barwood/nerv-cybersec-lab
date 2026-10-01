# Briefing Episodio 03: A Transfer / Shamshel

## Contrato (incidente nuevo vs INC-SACHIEL-001)
Este documento declara el incidente INC-SHAMSHEL-001. A diferencia del incidente anterior (INC-SACHIEL-001) donde la amenaza marchaba hacia el geofront y se enfrentaba cuerpo a cuerpo, aquí nos enfrentamos a un atacante que se planta y opera a través de canales remotos (C2). Además, este es el primer incidente en el que el laboratorio puede lograr un estado de `:contained_controlled` (exit 0) si y solo si el operador retiene el control de los mandos en todo momento y ejecuta el corte del canal y del núcleo por sí mismo. MAGI autoriza el deploy; el operador debe conservar el volante.

## Lo que este episodio enseña
* La naturaleza de una amenaza de canal de mando y control (C2) de largo alcance.
* La importancia de cortar el canal de ataque remoto antes de intentar alcanzar el núcleo (Sever C2 -> CoreStrike).
* El concepto de operar bajo pánico sin perder el control ni delegarlo a un failsafe.
* El manejo de observadores no autorizados en el área del incidente y el impacto civil de eventos pasados.
* La recolección de muestras (cadáver) para estudio tras una contención exitosa.

## Lo que este episodio NO enseña
* **Beast-as-plan:** Activar el estado berserk (Beast) del Eva está estrictamente prohibido como vía de victoria; de ocurrir, se registrará como fallo táctico (trampa pedagógica).
* El dilema del erizo y sus implicaciones sociales completas (eso pertenece al episodio 04).
* Operaciones conjuntas de tipo francotirador a gran escala como Yashima.

## Definición de victoria (lab): contained_controlled
Para lograr una salida con código `0` (`:contained_controlled`), el operador humano debe estar presente e ingresar comandos (`operator_input_present = true`), se deben cortar los látigos (C2) y luego destruir el núcleo del ángel con la herramienta adecuada, resultando en un cadáver recuperable y un operador consciente al final del combate, sin perder el control de la unidad.

## Definición de derrota (lab)
Cualquiera de los siguientes resultados causará un código de salida `1` (`:contained_uncontrolled`) o `2` (`:unresolved`):
* **Berserk:** Si el Eva despierta y toma el control (Beast), es un fallo del episodio.
* **Core sin cortar C2:** Intentar golpear el núcleo mientras los canales C2 de largo alcance siguen activos.
* **Observadores muertos:** Daños letales a Toji o Kensuke.
* **Freeze total:** El operador entra en pánico y no emite comandos.

## Vocabulario nuevo
* **C2 (Command and Control):** Canal remoto por el cual el adversario ejerce daño y control a distancia sin exponer inmediatamente su proceso padre o cuerpo central.
* **Látigo:** La manifestación física del canal C2 de Shamshel.
* **Sever:** Acción de cortar o interrumpir el canal C2.
* **Cuchillo progresivo:** Herramienta de combate cuerpo a cuerpo utilizada para cortar C2 y destruir el núcleo; requiere distancia cero.
* **Rifle de paletas:** Arma de fuego de uso masivo que no logra seccionar el canal de Shamshel.
* **Observador no autorizado:** Civiles presentes en el radio de blast (ej. Toji y Kensuke) que exponen la operación y son eventos de seguridad por sí mismos.
* **Muestra / cadáver:** Restos de la amenaza conservados post-incidente para estudio analítico.
* **contained_controlled:** Estado de victoria donde la amenaza fue mitigada siguiendo el playbook y bajo total gobierno humano.

## Relación con ep 01–02
* **Qué se reusa:** Clases como ATField y Core, MAGI (para autorizar el deploy), SIEM, y unidad Eva. El susto base persiste, pero evoluciona.
* **Qué se prohíbe como método:** El uso de T-EVA01-* (como el BerserkChannel) y el uso de la regeneración tipo Sachiel para vencer mediante desgaste o failsafe. El operador no puede ser descartado.

## Lista de las 12 secciones
1. **Briefing y contrato del episodio**: Establecer las reglas de victoria y derrota (C2 y operador activo).
2. **Recreación de la aparición**: Definir a Shamshel como amenaza de alcance, no de marcha.
3. **Anatomía**: Desglosar cuerpo, látigos y core en términos de amenaza.
4. **Patrón C2**: Establecer la regla C2_LARGO_ALCANCE (sever -> core).
5. **TTPs de Shamshel**: Definir kill-chain del atacante y métodos operativos.
6. **Superficie de detección**: Firmar detección de C2 y observadores no autorizados.
7. **Controles preventivos**: Separar lo prevenible de lo solo mitigable frente a alcance remoto.
8. **Playbook de mitigación**: Secuencia gobernada desde MAGI deploy hasta cuchillo y desinflado.
9. **Factor humano**: Integrar a Toji, Kensuke y el pánico consciente del operador (Shinji).
10. **Contrato Ruby**: Código con tests que castiguen el uso de berserk y core_strike temprano.
11. **Laboratorio**: Runner de INC-SHAMSHEL-001 que culmine con exit 0 (:contained_controlled).
12. **After-action y handoff**: Evaluación del cadáver y deuda social hacia el episodio 04.
