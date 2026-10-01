# Factor Humano: Trepando al Reactor del Vendor

## Fichas de un Incidente Político

*   **Misato (IC en el Blast Radius):** Asume el riesgo físico extremo. No ordena a Shinji disparar ni lanza un asalto; trepa y se mete al núcleo humeante. Valida su rol como mando táctico que, ante el fraude corporativo, pone su cuerpo como parche (Break-glass humano).
*   **Shinji:** El "héroe" del Ep 06 queda relegado. Contempla que hay amenazas gigantescas que no son ángeles y aprende que el "trabajo en equipo" a veces implica mirar cómo tu jefe soluciona un problema político.
*   **Ritsuko (Insider Threat):** Ejecuta el sabotaje corporativo (`CompetitorVirus`) con precisión glacial. Muestra por primera vez que la ciencia en NERV está subordinada a la agenda oscura del comandante, rompiendo el mito del "defensor inmaculado".
*   **Gendo (Monopolista):** Orquesta el fallo de JA para preservar el presupuesto de NERV (`monopoly_preserved`). Representa la corrupción del liderazgo que prefiere un desastre civil a perder la relevancia en el mercado.
*   **Shiro Tokita (Vendor):** El vendedor tecnológico arquetípico. Sobre-promete seguridad autónoma, ignora las auditorías (SBOM) y entra en pánico cuando su "Control Remoto Infalible" es denegado. 
*   **La Prensa:** Funciona como métrica falsa. Evalúa el desempeño basándose en apariencias (un desfile) y no en resiliencia de código.

## Reglas y SIEM Humano
*   `inside_vendor_box`: (Asociado a Misato). Mitigar el error remoto requiere coraje y presencia física; el SOC no se salva solo tecleando a distancia si la nube cae.
*   `virus_origin_known`: (Asociado a Ritsuko). Es un requerimiento imperativo para que el lab se resuelva honestamente. El post-mortem no puede esconder la inyección de NERV.
*   `monopoly_preserved`: Aunque la política gana, esto **no** debe mutar el resultado del lab a `contained_controlled`. Sigue siendo un paro de un tercero (`third_party_stopped`).

## Frontera con Episodio 08 y 13
*   En el Ep 08 aparecerá Asuka; la guerra se vuelve más grande y extrovertida.
*   En el Ep 13, NERV sufrirá un hackeo verdadero por parte de un ángel digital (Ireul). A diferencia del virus de Ritsuko (creado por un humano en el Ep 07), el ataque a MAGI en el Ep 13 sí será un *Pattern Blue*.
