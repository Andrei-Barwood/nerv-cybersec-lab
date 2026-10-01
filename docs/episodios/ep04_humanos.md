# Factor Humano: La Distancia del Erizo

## Fichas de Distancia Subjetiva

* **Shinji (Operador AWOL):** Pasa de `too_close` (fricción con Toji y Misato) a `too_far` (fuga al tren). Al final del episodio, regresa a la banda habitable no porque esté curado, sino por pura voluntad de intentar no morir de frío. `awol = true` al inicio, `returned = true` al final.
* **Misato (Comandante de Operaciones):** Muestra sus púas al gritar y su calor al ir a buscarlo a la estación. Su objetivo como manager es hallar y mantener esa banda habitable para su recurso crítico.
* **Ritsuko (Analista):** Nombra el "Dilema del Erizo". Entiende el patrón pero no se involucra en mantenerlo. Es observadora técnica del deterioro humano.
* **Gendo (Liderazgo Desapegado):** Ve el inventario. Mantiene distancia 1.0 permanente. Propone el override para usar a la unidad de respaldo sin importar el costo humano.
* **Rei (Backup como Palanca):** Permanece como un recurso en la sombra. Es herida, callada, y se usa su disposición al sacrificio (`backup_used_as_leverage`) como amenaza velada para que Shinji vuelva. Ella no tiene voz activa aquí.
* **Kensuke (Falso Perímetro):** Juega a la guerra en las montañas. La ironía de un civil envidiando el cargo que está destruyendo mentalmente al titular.

## Reglas de Laboratorio y SIEM
* El evento `im_home` no restablece mágicamente el trauma a cero ni la distancia a "óptima". La deja en banda habitable de forma explícita, pero frágil (`staffing_fragile`).
* Si `backup_used_as_leverage` es la única razón del retorno (por ejemplo, Gendo imponiendo órdenes), el resultado real operativo sigue siendo inestable (registrado en el test de Ruby).
* Este episodio detiene la trama bélica para forzar a NERV a lidiar con su personal.

## Frontera con el Episodio 05 (Rei I)
Aquí Rei solo es mencionada como amenaza de reemplazo. En el episodio 05, Rei pasará al frente como individuo y compañera de sincronización en el asalto masivo (Yashima). El Episodio 07 (Jet Alone) traerá otro problema de reemplazo, pero tecnológico, no humano.
