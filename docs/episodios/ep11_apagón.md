# Patrón: Incidente en Apagón (Compound Incident)

## Escena Breve
El Geofront está a oscuras. Fuyutsuki menciona que este es el peor momento para que el enemigo ataque; Gendo responde que es el único momento lógico. Afuera, la araña Matarael gotea ácido amarillo sobre el blindaje de las compuertas 1 al 22. En el puente de mando, iluminados por un par de linternas, Aoba informa a gritos que el blindaje 15 ha caído, todo medido rudimentariamente. En lugar de sentarse a esperar que el departamento eléctrico devuelva el poder a MAGI, Misato envía a los pilotos por los túneles del aire acondicionado para arrancar los Evas con llaves manuales (Analog Launch) y dispararle desde abajo.

## Patrón: INCIDENTE_EN_APAGON
La infraestructura que usualmente provee visibilidad, orquestación y control (SIEM, SOAR, IAM) sufre un corte catastrófico, y simultáneamente ocurre una brecha del perímetro. 
*   **Precondiciones:** El Control Plane del defensor está caído (`hq_power = false`, `magi_unpowered? = true`).
*   **Síntoma:** Señales visuales directas o métricas de batería marginales reportando un goteo destructivo en el perímetro.
*   **Error de Playbook (Wait-for-Tools):** "El procedimiento exige que el ticket se cree en JIRA y se lance vía Ansible (MAGI). Esperemos a que IT levante la red." Ese *delay* asegura que el ácido llegue al core.

## Tabla de Métodos en el Episodio 11

| Método de Respuesta | Resultado Esperado | Justificación |
| :--- | :--- | :--- |
| `Wait-For-MAGI` | **FAIL** | El ácido (`acid_progress`) llega al Geofront (1.0) antes de la luz. |
| `Ireul Playbook` (Reimage/Patch) | **FAIL** | MAGI no tiene un virus, simplemente no está enchufado. |
| `Yashima / Positrones` | **FAIL** | No puedes cargar positrones si el HQ no puede prender una bombilla. |
| `Baile Sincronizado` (Rehearsal) | **FAIL** | Matarael no tiene un *split* ni exige epsilon de gemelos, y no hay consolas para medir el sync. |
| **`Analog Launch + Combined Sortie`** | **SUCCESS (`contained_controlled`)** | La resiliencia offline permite lanzar las armas a mano antes de que el ácido perfore el piso final. |

## Restaurar Poder NO es Prerrequisito
El lab califica de victoria (`contained_controlled`) si se neutraliza al atacante (Matarael) vía `analog_launch` **aún si el cuartel sigue sin luz** (`hq_power` sigue `false` en el *assert*). El restablecimiento de la red eléctrica es un evento paralelo de infraestructura, no una condición sine qua non para apretar un gatillo mecánico.

## Analogías de Seguridad
1. **Ransomware en Caída de SSO:** Un atacante consigue credenciales locales mientras el *Okta/ActiveDirectory* global está caído. No puedes esperar a que vuelva Okta para expulsarlo; tienes que conectarte por SSH manual al nodo y matarlo.
2. **SIEM SaaS Down:** Tu proveedor de logs en la nube tiene una caída global, y justo ahí ves conexiones sospechosas de bases de datos. Debes recurrir a logs crudos locales (Analog) en lugar de *dashboards*.
3. **Runbook de Papel:** Operar un incidente físico-cibernético asumiendo que los sistemas de Wiki y repositorios de código están incomunicados, abriendo la carpeta roja impresa de la bóveda.
