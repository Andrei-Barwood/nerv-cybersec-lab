# Anatomía: Rechazar el Merge, Boundaries y Congrats Real

## Partes y Funciones de Seguridad de la Elección

| Componente | Qué Parece | Qué Hace | Analogía de Seguridad (SRE/Sec) | Símbolo Ruby |
| :--- | :--- | :--- | :--- | :--- |
| **Reject Merge** | Shinji negándose a fundirse con los demás y perdonando su propia existencia. | Detiene y cancela la orden ejecutiva del Board (Seele) de fusionar los egos. | El SysAdmin interrumpiendo el `DROP TABLE` o el borrado del Active Directory antes del commit. | `Instrumentality.reject_merge!` |
| **Restore AT-Self** | Shinji recuperando su forma física (I am I). | Vuelve a levantar la pared psicológica. | Restaurar los *Firewalls* y la separación lógica (`Tenant Isolation`) de los usuarios. | `AtFieldSelf.restore!` / `i_am_i` |
| **Congratulations (Others)** | Los demás rodeando a Shinji y felicitándolo. | Reconocimiento mutuo: "Existo yo, por lo tanto existes tú". | Logs que vuelven a tener un `owner` distinto; los sistemas independientes comunicándose por APIs válidas. | `siem.congratulations_of_others` |
| **Take Care (Of Yourself)** | La placa final del episodio. | La advertencia de que la salud del perímetro no es un evento de una vez, sino un mantenimiento continuo. | Parcheo y mantenimiento continuo. Ningún sistema está seguro "para siempre" tras el incidente. | `siem.take_care` |
| **Complete Merge (No usado)** | Océano. Muerte de la identidad. | El objetivo de Seele. | Borrado total sin vuelta atrás. (En este laboratorio debe generar un FAIL). | `Instrumentality.complete_merge!` |

## Diferencias Tecnológicas Críticas
*   **Reject Merge (Ep 26) vs Abort Merge (Ep 24):** Kaworu (Ángel) abortó el ataque a Dogma porque quiso (`abort_merge!`). Shinji (Humano) rechaza la asimilación del proyecto Instrumentality (`reject_merge!`).
*   **Restore AT-Self vs Return to Body (Ep 20):** El Ep 20 sacaba a *un* piloto de *un* Eva. El Ep 26 asegura la existencia de *toda* la humanidad como individuos.
*   **Congratulations of Others vs Issued (Ep 02):** Reutilizar el tag `siem.congratulations_issued` del Ep 02 como marcador de victoria del 26 es un fallo semántico inaceptable. El del 02 era ceguera pública; el del 26 es reconocimiento existencial.
*   **MAGI Tres Cerebros:** Durante el Episodio 25, con todos a punto de fusionarse, MAGI dejaba de ser "tres". Ahora que Shinji reafirma el límite de la individualidad, la diversidad de voces (Casper, Melchior, Balthasar) recobra todo su sentido arquitectónico.

## Implicación
La Respuesta a Incidentes (IR) solo tiene sentido si hay infraestructura separada que valga la pena proteger. Seele ofrecía una arquitectura monolítica inerte ("el LCL") que Shinji rechaza, devolviendo el trabajo a los defensores de la frontera.
