# Factor Humano: Transfer, Odio Colateral y Silencio

## Fichas de Nuevos Actores

* **Toji Suzuhara (Deuda Colateral):** Su hermana fue herida en el incidente Sachiel. Representa a la población del radio de explosión que sufre las decisiones pasadas de NERV. Su agresividad hacia Shinji no es *bullying*, es la factura de seguridad mal gestionada. NERV no preparó a la escuela para recibir al piloto.
* **Kensuke Aida (Shadow IT / Observador):** Fanático de lo militar. Busca activamente la zona de incidente. Es un espectador no autorizado que añade caos a la contención pero aporta un testigo del esfuerzo.
* **Hikari Horaki:** Mencionada como representante de clase, símbolo del orden menor de la red civil en el que el piloto choca al ser transferido.

## Deltas de Operadores Actuales
* **Shinji (Operador):** Su delta pasa de `no-consent/berserk` a `operator_input_present + panic_level=HIGH`. Opera llorando, en pánico total y bajo estrés, pero NO suelta el cuchillo. No se vuelve "valiente"; simplemente aprende a trabajar asustado.
* **Misato (Comandante de Operaciones):** Deja de ser observadora para hacer *coaching* en vivo. No presiona el botón de pánico, sino que guía.
* **Gendo:** Su delta es casi ausente. Este no es un episodio dictado por sus maniobras; es terreno de IC puro y supervivencia de campo.
* **El Público Civil:** Ahora interactúan cara a cara con el operador, aumentando el estrés post-incidente.

## Métricas (Implementables)
* `panic_level`: Alto durante la ejecución, pero no descarta la entrada.
* `operator_input_present`: Debe ser `true` al final. Si es false, es porque hubo Beast.
* `unauthorized_observer_count`: Mayor a 0 (Toji y Kensuke).
* `collateral_grudge`: El impacto del golpe (físico y emocional) sobre la salud mental de Shinji.
* `callback_absent`: Bandera booleana que se vuelve real post-incidente; el teléfono del operador permanece en silencio.

## Reglas de Laboratorio
Los observadores no autorizados en la zona (`unauthorized_observer_count > 0`) ensucian la traza y emiten advertencias, pero **no invalidan** la victoria táctica (`:contained_controlled`) del ángel. Son clasificados como un incidente paralelo.
La bandera `callback_absent` tampoco cambia el código de salida, pero se transfiere forzosamente como precondición del episodio 04.

## Frontera con el Episodio 04
Aquí, en el ep 03, Shinji descubre que operar de manera controlada bajo pánico y sobrevivir no trae recompensas, ni fama, ni un soporte cálido. Su teléfono **no suena**. En el episodio 04, esta ausencia de callback, sumada a la fricción de la red civil, motivará su deserción de NERV y el dilema del erizo.
