# Recreación de Aparición: El Embrión en el Cráter

## Minuto Cero y First-Seen de Seguridad

| Escena (Minuto Cero) | First-Seen de Seguridad (Detección de Staging) |
| :--- | :--- |
| **El Entorno:** El volcán Asama en ebullición. El MAGI detecta una anomalía muy leve en el corazón del magma. No hay un mecha gigante azotando la ciudad, solo una "pre-forma" inerte. **El Dive:** NERV viste al Eva-02 con un voluminoso traje rojo de buceo térmico (D-Type Equipment). Asuka desciende sola, asumiendo toda la presión y el calor aplastante de la lava, mientras el Eva-01 aguarda arriba anclado a grúas. **La Eclosión:** Asuka logra depositar la jaula de retención sobre el embrión inerte. Sin embargo, en el instante de captura, la cápsula comienza a romperse. Una criatura con aletas primigenias comienza a formarse y romper la red. **El Abort y Rescate:** Por orden de Misato, Asuka empuña el cuchillo progresivo y apuñala a la bestia a medio cocer directamente en el magma antes de que abra los ojos. El traje térmico cede. Shinji, desde la superficie, debe lanzar cables de rescate para sacarla antes de que muera hervida. | **Alerta Temprana (Hunting):** Los sismógrafos detectan vibraciones que se filtran como ruido volcánico, pero el SIEM correlaciona firmas adámicas residuales y dispara un `pattern_blue_embryonic`. Es el equivalente a encontrar un ejecutable malicioso `staging` subido al servidor web pero que aún no se ha ejecutado. El error clásico del analista perezoso es ignorarlo porque "no está haciendo peticiones maliciosas aún". |

## El Perímetro y el Ruido Geotérmico
Al principio, los técnicos descartan las señales porque no se asemejan al *Pattern Blue* fuerte de un Ramiel o Sachiel. Creen que es ruido geotérmico regular. La amenaza embrionaria se oculta detrás del ruido del medio productivo (el magma). 

## Spec Visual
*   **Embrión (Pre-Forma):** Una masa oscura biológica (similar a un feto ovalado) encapsulada, casi cristalizada, descansando en alta presión.
*   **El Dive (Eva-02):** El Eva-02 está irreconocible. No es esbelto ni atlético. Está acorazado con un D-Type gruesísimo que parece una escafandra de los años 50, torpe, gigante y pesado.
*   **Eclosión a medias:** Sandalphon, al empezar su desarrollo (`hatch_progress > 0`), expone extremidades palmeadas y un rostro ciego inexpresivo que recuerda al Anomalocaris pero acorazado biológicamente. No llega a ser el ángel ágil que dictaría el fin del episodio.
*   **Rescate:** El Eva-01 inclinado desde el cráter sujetando físicamente con cables el pesado traje fundido del Eva-02 para arrancarlo del lago de fuego.

## Tabla de Especificaciones de Amenazas

| Incidente | Tipo | Ubicación | Visual Principal | Táctica Clave |
| :--- | :--- | :--- | :--- | :--- |
| Ep 01 (Sachiel) | Adulto | Geofront | Caminante Negro | Regeneración / Melee |
| Ep 05 (Ramiel) | Adulto | Geofront | Octaedro Azul | Francotirador / Escudo |
| Ep 08 (Gaghiel) | Adulto | Mar | Ictioide Gigante | Mandíbula Gated |
| Ep 09 (Israfel) | Adulto | Geofront | Gemelos Espejo | HA / Split Rejoin |
| **Ep 10 (Sandalphon)**| **Embrión** | **Magma (Volcán)** | **Feto / Pupa** | **Hatch in Hostile Prod** |
