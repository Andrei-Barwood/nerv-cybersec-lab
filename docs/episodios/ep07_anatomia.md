# Anatomía: Reactor, Control Remoto y Virus

## Partes y Funciones de Seguridad (Jet Alone)

| Parte de la Amenaza | Qué Parece | Qué Hace | Analogía de Seguridad (SRE/Sec) | Símbolo Ruby |
| :--- | :--- | :--- | :--- | :--- |
| **Reactor** | Motor nuclear interno. | Genera energía pero representa un riesgo de *meltdown* letal si el control falla. | Blast Radius local (un appliance con privilegios de root/admin que puede corromper el entorno si falla). | `nuclear_progress` (0.0 a 1.0) |
| **Control Remoto** | Consolas y antenas del vendor. | Comando y control primario para detener el activo a distancia. | Panel Cloud de un SaaS de terceros, sobre el cual no tienes control directo. | `remote_shutdown!` |
| **Virus de Sabotaje** | Código inyectado. | Deniega el control remoto al vendor, causando el fallo público de la demo. | Insider Threat / Supply Chain Backdoor plantado por NERV para destruir a la competencia. | `VendorVirus` (`origin: :nerv_sabotage`) |
| **Terminal On-Box** | Teclado mecánico dentro del robot. | Consola de administración física irrefutable. | Acceso Break-Glass por puerto serial físico. Requiere Physical Access. | `on_box_password` |
| **Cuerpo Mecha** | Chasis metálico gigante. | Desplazamiento autónomo y blindaje contra intentos de detención externa leve. | Payload autónomo; appliance "caja negra" en producción. | `JetAlone` |

## ¿Por qué NO es un Ángel?
`JetAlone` **no debe** heredar de la clase `Nerv::Angel`.
*   No posee un `Nerv::Core` biológico.
*   No genera un `Nerv::ATField`.
*   No emite una firma de onda de luz azul.
Instanciarlo como un ángel es un error categórico de modelado.

## Controles de Apagado
1.  **`remote_kill`:** El vendor (Tokita) cree tenerlo. Falla catastróficamente porque la consola asume que la caja confía en ella, cuando el `VendorVirus` ha modificado las reglas locales.
2.  **`on_box_shutdown`:** La verdad física. El virus de Ritsuko simulaba un meltdown, pero el comando físico `enter_password!` (código: "HOPE") detiene el proceso de raíz.

## Origen del Virus (`virus_origin`)
El campo `virus_origin` no es un huevo de pascua lore, es el hallazgo forense central de este incidente. Detener la amenaza sin registrar en el post-mortem que NERV inyectó el código (origen `:nerv_sabotage`) resulta en una evaluación incompleta y corrupta.

## Implicación
Yashima (el disparo de positrones) no sirve aquí. Dispararle al reactor destruiría la ciudad. Trepar e introducir una credencial es la única mitigación válida.
