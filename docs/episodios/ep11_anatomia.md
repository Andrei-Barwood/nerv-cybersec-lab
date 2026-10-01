# Anatomía: Apagón, Arácnido y el Lanza Analógico

## Partes y Funciones de Seguridad

| Parte de la Amenaza/Medio | Qué Parece | Qué Hace | Analogía de Seguridad (SRE/Sec) | Símbolo Ruby |
| :--- | :--- | :--- | :--- | :--- |
| **Outage (Control Plane)** | Luces apagadas, MAGI mudo. | Desconecta la automatización y la telemetría de respuesta defensiva. | Caída del Single Sign-On (Okta), del SIEM (Datadog/Splunk) o del vCenter. | `hq_power = false` |
| **Matarael** | Araña biológica de piernas largas. | Aprovecha el estado mudo del blanco para taladrar químicamente. | Script Kiddie oportunista explotando una ventana de mantenimiento o un DDoS previo. | `Matarael` |
| **Acid Progress** | Lágrimas que funden las capas blindadas de la 1 a la 22. | Temporizador lento pero inexorable hacia el núcleo del Geofront (`0.0` a `1.0`). | Data Exfiltration lenta en medio de un caos de logs inobservables. | `acid_progress` |
| **MAGI Unpowered** | Los tres supercomputadores apagados. | Impide la firma criptográfica automatizada del despliegue (MAGI.majority). | Orchestrator/Vault caído. NO infectado. | `magi_unpowered?` |
| **Analog Launch** | Palancas manuales y motores diésel usados por operarios sudados. | Efectúa el despliegue prescindiendo del plano de control central (MAGI). | Break-glass manual, SSH directo usando llaves locales, Runbooks offline impresos. | `analog_launch!` |

## Fronteras Cruciales (Lo que NO ES)

*   **No es Ramiel (`drill_progress`):** Ramiel usaba un taladro geométrico contra un cuartel encendido, y el kill zone era masivo (positrones). Matarael es ácido químico (`acid_progress`) contra un cuartel apagado. La mecánica del `melt` y el *timer* son distintos.
*   **No es Yashima (`PowerGrid`):** En el Episodio 06, NERV tenía la red nacional a su disposición. Aquí, la variable `hq_power` es falsa de manera local e involuntaria.
*   **No es Ireul (`MAGI infected`):** MAGI en el Episodio 11 simplemente no tiene voltaje (`unpowered`). Si un malware (Ep 13) se apropia de MAGI, eso es un `magi_infected`. Son dos TTPs diferentes.

## El Analog Launch (Sortie Manual)
Precondiciones: 
1. Los pilotos deben llegar físicamente bajando a pie/ductos.
2. `hq_power` está apagado.
3. El personal de ingeniería debe empujar físicamente el mecanismo (bypass del plano de control).
Un Playbook que requiera `MAGI.majority` fallará espectacularmente si `hq_power == false`.
