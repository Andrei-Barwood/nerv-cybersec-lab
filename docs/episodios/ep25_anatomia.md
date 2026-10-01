# Anatomía: AT Field (:self), el Proyecto y el Colapso

## Partes y Funciones del Proceso

| Componente | Qué Parece | Qué Hace | Analogía de Seguridad (SRE/Sec) | Símbolo Ruby |
| :--- | :--- | :--- | :--- | :--- |
| **AT Field (Modo :self)** | La personalidad, los secretos, la barrera entre "yo" y "tú". | Mantiene la individualidad separando el alma/psique del entorno. | La encriptación y el control de acceso que separa los datos del Tenant A de los del Tenant B en una nube pública. | `at_field.mode = :self` |
| **Instrumentality.start!** | Un interrogatorio masivo y la disolución de los entornos físicos en un vacío. | Inicia el proceso de apagar todos los AT Fields humanos de forma simultánea. | Un comando administrativo que desactiva todos los firewalls y RBAC de todos los usuarios de la plataforma al mismo tiempo. | `Instrumentality.start!` |
| **Privacy Zero** | "No puedes ocultarte", escuchar los pensamientos de Misato o Asuka en tu cabeza. | La fusión de memorias. | Un volcado de base de datos donde todos los tenants leen y escriben en la misma tabla sin filtros. | `siem.privacy_zero` |
| **Instrumentality In Progress** | El episodio termina en suspenso (Exit 17). | El proceso se ejecuta pero no alcanza el estado de finalización irrevertible todavía. | El script de migración masiva está corriendo al 50%; el sistema está inoperable pero no ha cerrado la transacción (`COMMIT`). | `instrumentality_in_progress?` |
| **Complete Merge (No usado aquí)** | Un océano rojo sin individuos. | La fusión final e irreversible. Sería el "éxito" de Seele pero la derrota de la humanidad. | Completar la eliminación de todos los esquemas de usuarios; ya no hay usuarios, solo *data*. | `complete_merge` |

## Diferencias Tecnológicas Críticas
*   **AT Field de Combate vs AT Field de Identidad:** Hasta el Ep 24, el AT Field se evaluaba en modo `:wall` (detener misiles) o `:brake` (frenar caídas). En el 25 se evalúa en modo `:self` (detener la intrusión psíquica del otro).
*   **HIP vs Fusión de Ángeles (Armisael/Tabris):** Armisael fusionaba un host (Ep 23). Tabris podía detonar Adam/Lilith (Ep 24). El *Human Instrumentality Project* de Seele es un ataque lógico distribuido a la humanidad entera.
*   **MAGI Anti-Quorum:** Normalmente MAGI usa un sistema de votación de 2-sobre-3. En la Instrumentación, el objetivo de Seele es que MAGI y toda la humanidad no sean "tres" votando, sino **uno** (sin disensión).
*   **In Progress (25) vs Complete Merge / Congratulations (26):** En el laboratorio, el Ep 25 *exige* que el estado sea `:instrumentality_in_progress` (Exit 17). Emitir un `congratulations` o un `complete_merge` es un error de continuidad, porque la conclusión ocurre en el siguiente capítulo.

## Implicación
La seguridad defensiva a lo largo de 24 episodios asumió que siempre habría un "sujeto" al cual proteger. Cuando el ataque es apagar la noción misma de sujeto, el *SOC* y el playbook militar se vuelven completamente inútiles.
