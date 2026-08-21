# NERV / Ruby — Ángeles NGE como ciberseguridad

Fanfic de estudio: cada ángel de *Neon Genesis Evangelion* (TV, 26 episodios) es una clase de amenaza, con prevención, mitigación y código Ruby ejecutable.

## Arranque (obligatorio)

Antes de escribir código o prosa de episodio, lee en este orden:

1. `prompts/00_SESION_MAESTRA.txt` — constitución del proyecto y cómo interpretar secciones
2. `prompts/ESTADO.txt` — de dónde retomar
3. `prompts/01_PLANTILLA_EPISODIO.txt` — protocolo reutilizable
4. El archivo `prompts/epXX_*.txt` que indique ESTADO

Si el usuario pega la plantilla con un episodio, obedece eso y actualiza ESTADO. No pidas de nuevo el prompt maestro.

## Reglas cortas

- Canon: serie de TV 1995/96, episodios 01–26. No Rebuild. No mezclar Ángeles de películas.
- Español en docs y prompts. Identificadores de código en inglés.
- Nada de cosplay inejecutable (`puts "AT Field"`). Los tests tienen que morder.
- Un episodio = secciones numeradas. Una sección por turno salvo que pidan el episodio completo.
- No adelantar el berserk de Eva-01 al episodio 01: eso es el 02.
- Tras cada sección: actualizar `prompts/ESTADO.txt`.
