# Anatomía: Rebrand, Contact Experiment y el Asesinato del Auditor

## Partes y Funciones de Seguridad

| Parte de la Amenaza/Defensa | Qué Parece | Qué Hace | Analogía de Seguridad (SRE/Sec) | Símbolo Ruby |
| :--- | :--- | :--- | :--- | :--- |
| **Second Impact** | Explosión global masiva documentada. | Fue el desastre pre-existente P0 que motivó la formación de todas estas herramientas. | El *breach* fundacional de una empresa que permitió a los fundadores pedir presupuesto infinito para seguridad draconiana. | `second_impact` |
| **Gehirn a NERV (Rebrand)** | Cambio de logo en la pared tras un doble homicidio/suicidio. | Borra la entidad manchada para crear una entidad "limpia" manteniendo a los mismos directivos. | Rebranding corporativo (Cambiar de nombre tras un escándalo masivo de filtración de datos sin cambiar el C-Level). | `gehirn.rebrand!` / `gehirn_rebrand` |
| **Contact Experiment** | Yui desapareciendo en el prototipo Eva-01. | Funde el alma/código de la investigadora en la máquina. Explica la `maternal_presence`. | Hardcodear al CTO dentro del core del sistema; el producto no arranca si no es con su consciencia. | `contact_experiment!` / `maternal_presence_origin` |
| **MAGI Builder (Naoko)** | La investigadora copiando su propio cerebro en el cluster. | Construye el quorum (Melchior, Balthasar, Casper) basado en sus dilemas personales. | Crear un IAM o sistema de votación basado en las tres personalidades conflictivas del desarrollador jefe. | `magi.builder = :naoko` / `magi_builder_naoko` |
| **Rei I Killed** | La niña clon estrangulada en el cuarto de control. | Primera evidencia de que los clones son piezas descartables para Gehirn. | Destruir un Backup físico en una rabieta de política interna de la empresa. | `rei_i_killed` |
| **Kaji Terminated** | Un disparo en un pasillo oscuro. | Silencia al espía/auditor de forma permanente para frenar un *leak* de datos (shadow graph). | Eliminar el canal del auditor (Whistleblower) que estaba destapando los *secrets* del backend. | `kaji.terminated!` / `kaji_terminated` |

## Diferencias Tecnológicas Críticas
*   **Contact Experiment (21) vs Introyección (19/20):** La introyección de Shinji fue un accidente provocado por el exceso de estrés (Overwhelm y S2). El Contact Experiment de Yui fue un experimento planificado desde el origen (Gehirn). Ella *quiso* entrar.
*   **MAGI Builder (21) vs MAGI Infected (13):** En el 13 vimos cómo un virus (Ireul) forzaba la partición de MAGI a votar distinto. En el 21 aprendemos que MAGI fue diseñada desde el inicio con particiones que *naturalmente* están en conflicto.
*   **Kaji Terminated (21) vs Missing Log (15):** En el Episodio 15, un canal secreto se perdía por latencia de espionaje. Aquí, la instancia de Kaji es apagada (`terminated`) definitivamente.
