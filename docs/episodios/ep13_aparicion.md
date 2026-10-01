# Recreación de Aparición: Lilliputian Hitcher

## Minuto Cero y First-Seen de Seguridad

| Escena (Minuto Cero) | First-Seen de Seguridad (IoC de Lab) |
| :--- | :--- |
| **La Infección Micro (Pribnow):** En las instalaciones profundas de ensayo (Sigma/Pribnow Box), un operario reporta manchas anaranjadas (similar al óxido o coral) en las placas del pasillo. Intentan quemarlas con láser y gas ozono. Las manchas mueren por dos segundos, mutan (`evolve!`), desarrollan inmunidad (AT Field), y se multiplican a la velocidad de la luz. **El Salto a MAGI (Lateral Movement):** Como el laboratorio no tenía un *Air Gap* físico correcto, el óxido migra por los conductos directamente al núcleo de las supercomputadoras. Melchior y Balthasar caen. Ritsuko está en la consola, tecleando a ciegas para evitar que Casper firme la autodestrucción del HQ. | **Alerta Fantasma:** No hay alarma satelital. Las cámaras muestran "corrosión". De pronto, un escáner emite el peor SIEM del sistema: `pattern_blue_micro`. No es suciedad, es un monstruo de tamaño molecular atacando en Layer 7. Las defensas de infraestructura (`signature_failed`) alimentan al atacante dándole datos sobre cómo evadirlas. El SIEM de negocio empieza a gritar `magi_brain_infected` cuando Melchior vota a favor del enemigo (`majority_owner: :ireul`). Es el equivalente a ver que tu *Active Directory* Domain Controller acaba de promover a *Domain Admin* a un script desconocido. |

## Un Pattern Blue sin Silueta
En los incidentes de Matarael y Sahaquiel, la amenaza era una gran masa física (araña, ojo-orbital). Ireul no se "ve". Ireul se "lee". Hasta que MAGI es tomada, la burocracia de NERV cree que es un error de mantenimiento ("Jet Alone otra vez"). Pero Jet Alone era un robot tonto con un disquete; Ireul es una red neuronal biológica aprendiendo a *crackear* a MAGI en vivo y en directo.

## Spec Visual
*   **Colonia (Óxido/Coral):** Manchas naranjas fractales moviéndose como *Slime Mold* por los ductos de enfriamiento, devorando hardware y fusionando silicio con tejido biológico.
*   **MAGI (Los 3 Cerebros Físicos):** Tres enormes esferas flotantes cubiertas de cables y cerebros orgánicos gigantes (Melchior 1, Balthasar 2, Casper 3). Los tubos se llenan del naranja corrosivo de Ireul.
*   **La Sala de Control:** Ritsuko sudando sobre un teclado mecánico. Pantallas rojas muestran el consenso de MAGI cayendo (VOTOS: MELCHIOR (Saboteado), BALTHASAR (Saboteado), CASPER (En disputa)).
*   **La Muerte Estéril:** No hay Evas apuñalando. Cuando Ritsuko corre el código de `reverse-hack`, la biomasa naranja se detiene de golpe, se vuelve grisácea y queda inerte (`dead_end`), incapaz de seguir procesando.

## Tabla de Especificaciones de Amenazas

| Incidente | Naturaleza | Método de Kill | Vector Principal |
| :--- | :--- | :--- | :--- |
| Ep 07 (JA) | Robot Humano | Password Local (On-box) | Sabotaje Humano |
| Ep 11 (Mat) | Apagón Físico | Manual Sortie / Fuerza | Oportunismo |
| **Ep 13 (Ireul)**| **Biológica/Código** | **Casper Reverse-Hack**| **Control Plane Hijack** |
