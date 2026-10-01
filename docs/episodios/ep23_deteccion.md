# Superficie de Detección: El IoC es nuestro propio Eva

## Detección en la Fusión y el Reemplazo
En este episodio el SIEM ve el contacto inicial, pero rápidamente el atacante y el defensor se vuelven el mismo objeto en la pantalla de telemetría, y la verdadera alarma es el `mismatch` del día siguiente en la identidad del operador restaurado.

## Ids de SIEM Obligatorios

*   `siem.pattern_blue`: Alerta base; el enemigo está confirmado.
*   `siem.helix_contact`: Detecta la deformación de Armisael al clavar la aguja en el abdomen del Eva-00.
*   `siem.eva00_fused`: El cruce biométrico de datos. MAGI ya no puede distinguir dónde termina el ángel y dónde empieza la piloto Rei.
*   `siem.lateral_threat_eva01`: Alarma de red crítica. La infección intenta hacer *pivot* (Movimiento Lateral) hacia la Unidad-01 de Shinji.
*   `siem.node_sacrifice`: Confirmación de que se ha disparado la autodestrucción consentida desde adentro del host. (El kill).
*   `siem.eva00_destroyed`: La explosión cruzada. Destrucción total de chasis, núcleo y piloto (Rei II).
*   `siem.armisael_dead_with_node`: Neutralización del 16º Ángel por asimilación al nodo volátil.
*   `siem.rei_iii_booted`: Operación forense/post-incidente. NERV inicializa la siguiente copia desde el tanque.
*   `siem.identity_mismatch`: Alerta humana/HR. El *hash* de memoria de Rei III no encaja con Rei II. No son la misma.
*   `siem.clone_tank_revealed`: Exposición del secreto de la empresa. Ritsuko le muestra a Misato y Shinji de dónde provienen las refacciones humanas de NERV.

## Falsos Positivos y Fallos
*   **Falso Positivo de "Curación":** Un analista podría creer que si Rei aparece caminando en el hospital (`rei_iii_booted`), todo está resuelto al 100%. El SIEM debe imprimir invariablemente `identity_mismatch` y `clone_tank_revealed` en la traza de éxito para dejar claro que es un fraude.
*   **Fallo Categórico (`siem.longinus_fired`):** No tenemos la lanza. Arael se la llevó en el Episodio 22. Si esto aparece en el log, el runner está mintiendo.
