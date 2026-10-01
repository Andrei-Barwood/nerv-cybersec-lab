# Superficie de Detección: El SIEM que ve la luz pero no la mente

## Detección Estática y Pérdida Masiva
En este episodio, MAGI (el SIEM de NERV) es sorprendentemente inútil para medir el daño real, ya que toda la crisis ocurre en un plano psicológico que la telemetría del hardware del Eva-02 apenas traduce como fluctuaciones de sincronización, mientras el radar registra una silueta paralizada en el cielo.

## Ids de SIEM Obligatorios

*   `siem.pattern_blue`: Alerta base; el enemigo está confirmado en radar.
*   `siem.orbital_stay`: Detecta que el objeto celeste no está modificando su altitud; es un escaneo pasivo o de rango extremo (no es Sahaquiel).
*   `siem.mental_beam`: Registro del vector de ataque de luz dirigido, que transmite ruido psíquico en vez de calor o fuerza cinética.
*   `siem.operator_as_surface`: El ataque no está afectando el casco de titanio; la telemetría revela que los datos están penetrando la interfaz cerebro-máquina (A10) del piloto.
*   `siem.psyche_broken`: Alerta roja biométrica. Asuka sufre un colapso. Su ego colapsa, imposibilitando el piloting seguro. (Este evento DEBE estar presente incluso en el camino de éxito del laboratorio).
*   `siem.close_range_impossible`: Flag de control que descarta tácticas inútiles (Dummy, cuchillos, rifles cortos, atrapar).
*   `siem.longinus_fired`: Registro de la escalada máxima por Gendo Ikari. La Lanza ha sido retirada de Terminal Dogma y lanzada por el Eva-00 (Rei).
*   `siem.core_destroyed`: Heredado/reusado de la táctica base de kill: el núcleo de Arael es perforado a distancia.
*   `siem.spear_lost`: Confirmación satelital de que la Lanza cruzó la velocidad de escape terrestre y no regresará.
*   `siem.seele_artifact_lost`: Alarma ejecutiva/corporativa. La directiva alemana (Seele) registra la pérdida inaceptable de su llave principal para el KPI final.

## Falsos Positivos y Fallos
*   **Falso Positivo de Éxito (`core_destroyed` = OK):** Un analista descuidado vería `core_destroyed` y pensaría "Asuka está a salvo, todo volvió a la normalidad". Las banderas `psyche_broken` y `spear_lost` deben asegurar que el "Exit 0" de hoy se sienta como una derrota logística y humana, aunque cumpla el objetivo táctico.
*   **Fallo Categórico (`siem.dummy_plug_engaged`):** Si alguien intentó invocar el Dummy Plug para trepar al cielo y morder a Arael, el runbook debe escupir un error inmenso.
