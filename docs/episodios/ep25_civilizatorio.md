# Patrón: Fallo de Contención Civilizatoria (Cero Privacidad)

## Escena Breve
Las pantallas de MAGI no muestran aterradores hexágonos rojos. No hay orden de abordaje, ni Misato gritando coordenadas. Shinji está solo en una silla de la que no puede levantarse. Las voces de Ritsuko, Gendo y Asuka le cuestionan por qué pilota, desnudando que solo lo hace por validación. Asuka está atrapada en sus recuerdos de abandono materno, y Rei en su consciencia fragmentada (Rei I, II, III). Los muros psicológicos (los AT Fields) están cayendo. Todos los secretos de NERV y las miserias personales de los pilotos se vierten en una misma fosa común de pensamientos. Seele observa cómo el plan de unificación avanza, logrando lo que ningún ángel pudo: no destruir el GeoFront con bombas, sino disolver a sus defensores quitándoles su individualidad.

## Patrón: FALLO_DE_CONTENCION_CIVILIZATORIA
El colapso sistémico no ocurre por una brecha en el perímetro exterior (geofront), sino por una orden de desmantelamiento de los límites interiores (el ego, el AT Field) enviada a todos los nodos de la red simultáneamente.
*   **Precondiciones:** Todos los atacantes externos (ángeles) han sido neutralizados. El Board de directores (Seele) tiene el control del *deployment*.
*   **Síntoma:** No hay atacante visible, pero la confidencialidad, la integridad y la disponibilidad de los usuarios han caído a cero. Los usuarios reportan que sus datos personales son públicos para todos los demás (`privacy_zero`).
*   **Error (Rehusarse a entender la amenaza):** Tratar de enviar un parche o un antivirus (Dummy Plug, Sortie) cuando el problema es que el diseño de la arquitectura misma está forzando a los nodos a borrarse. Festejar el proceso prematuramente (`congratulations`) o cerrarlo apresuradamente (`complete_merge`).

## Tabla de Métodos en el Episodio 25

| Método de Respuesta | Resultado Esperado | Justificación |
| :--- | :--- | :--- |
| `Sortie Melee / Sniper / Beast` | **FAIL** | No hay un blanco físico al que disparar. |
| `Dummy Plug / SOAR` | **FAIL** | El bot carece de un ego que disolver, pero no puede detener la disolución de sus dueños. |
| `Tabris Crush (Ep 24)` | **FAIL** | Tabris ya murió. Su sacrificio solo limpió el camino para Seele. |
| `Complete Merge / End Of Evangelion` | **FAIL** | Unir a todos irremediablemente en el Episodio 25 rompe el canon de la TV. El lab exige suspenso. |
| **`Start HIP + Wait (In Progress)`** | **Victoria Narrativa (Exit 17)**| Documentamos la crisis, interrogamos al usuario, y dejamos el proceso corriendo sin cerrarlo. |

## Analogías de Seguridad
1. **SSO sin Sujetos (Data Lake Tíxico):** Un arquitecto nube decide que, para evitar errores de permisos, es mejor que todos los empleados de la corporación lean y escriban en un solo clúster de base de datos sin llaves primarias. "La paz de los datos no estructurados". Es la aniquilación de la gobernanza.
2. **El "Zero Trust" Invertido:** Zero Trust asume que no confías en nada. El Plan de Seele es un "Zero Self": confías en todos porque ya nadie es diferente de ti.
3. **El Apagón de Políticas (IAM Wipe):** Borrar todos los roles y políticas de AWS a medianoche, no para robar, sino "para que todos seamos uno".

## Fronteras
*   **Episodio 14 (KPI) y 20 (LCL):** En el 14 se planeó, en el 20 Shinji experimentó un piloto de este estado (disuelto en el plug). Ahora es producción global.
*   **Episodio 24 (Kaworu):** Kaworu era una amenaza externa con forma humana. El Proyecto de Complementación es una amenaza *interna* y existencial de infraestructura.
*   **Episodio 26 (Choice):** El 26 tomará este estado suspendido y ejecutará el rechazo (devolver los permisos a cada usuario).
