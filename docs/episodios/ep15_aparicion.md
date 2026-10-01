# Recreación de Aparición: El Grafo Sombra

## Minuto Cero y First-Seen de Seguridad

| Escena (Minuto Cero) | First-Seen de Seguridad (IoC de Lab) |
| :--- | :--- |
| **Canales en la Penumbra:** Misato Katsuragi se reencuentra a solas con Ryoji Kaji tras una boda. Comparten un beso que reactiva un vínculo de confianza personal, rompiendo los esquemas de segregación (él es inspector especial, ella es comandante táctica). En las profundidades, Gendo Ikari y Ritsuko Akagi discuten planes operacionales frente a MAGI, con un subtexto de exclusividad que Misato desconoce. Shinji Ikari visita sorpresivamente el departamento de Rei Ayanami. Y Kaji invita a Shinji a un cultivo de sandías secreto para darle consejos (*onboarding*) fuera del radar de su supervisora. | **Edge No Declarado:** El SIEM oficial de NERV está tranquilo. No hay incidentes tácticos. Pero un auditor avanzado detecta alertas pasivas: `shadow_edge_detected`. El organigrama dice A -> B -> C. La realidad es que A se salta a B, y C reporta a D (Seele) mientras finge trabajar para A. El log de acceso del departamento de Misato a medianoche no se envía (`missing_log`). Esto no es un `pattern_blue` ni un ángel. Es el establecimiento de confianzas no autorizadas (`unauth_trust`). |

## El Silencio como Log
A diferencia del Episodio 11, donde MAGI no generaba logs por falta de electricidad, el silencio en el Episodio 15 es una **política intencional**. Las mentiras (título canon: "Lies and Silence") son paquetes caídos a propósito. Misato sabe que Kaji oculta cosas; Kaji sabe que Misato lo sabe. El silencio no es la ausencia de datos; es una transmisión de alta fidelidad que el SIEM no puede *parsear*.

## Spec Visual
*   **Los Canales:** Pasillos oscuros, el departamento desordenado de Misato, la habitación estéril de Rei, el cultivo de melones subterráneo. Son los "Cables" de red física no documentados en los planos de NERV.
*   **La Tumba y el Gafas:** Gendo, Shinji y Rei en el cementerio; la referencia a Naoko Akagi (la madre de Ritsuko y constructora de MAGI). Vínculos históricos y conflictos de interés (COI) fosilizados.
*   **El Silencio:** Planos estáticos, ascensores cerrados, bocas que no terminan de hablar. 

## La Diferencia de "No hay Ángel"
Kaji NO es Jet Alone (una bomba de vendor) y NO es Ireul (un hacker biológico). Kaji es un analista que simplemente tiene más llaves de las que declara y habla con servidores a los que no debería rutear. Atacarlo como si fuera un monstruo anula el laboratorio (Exit 10: `:shadow_graph_denied`).
