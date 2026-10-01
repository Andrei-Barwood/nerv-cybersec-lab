# Superficie de Detección: Apagón y Contra-fuego

## La Carga Alerta al Enemigo
A diferencia de ataques locales silenciosos, Yashima es una operación escandalosamente ruidosa. El desvío de energía de todo Japón es un evento macro-observable. Asimismo, el disparo (`positron_charging`) genera una firma térmica y energética que Ramiel detecta de inmediato, atrayendo su `particle_beam` al nido del francotirador.

## Ids de SIEM Obligatorios

*   `siem.yashima_declared`: La operación fue autorizada (MAYORÍA de MAGI).
*   `siem.national_blackout`: El grid de poder está offline para la población civil y asignado al rifle.
*   `siem.positron_charging`: Acumulación de poder (Firma térmica crítica).
*   `siem.positron_shot`: Se efectuó el disparo.
*   `siem.shot_insufficient`: El primer tiro falló o rebotó.
*   `siem.counterfire_on_nest`: Ramiel devuelve el fuego al origen.
*   `siem.shield_absorbed`: El Eva-00 bloquea exitosamente el contra-fuego inicial.
*   `siem.shield_degraded`: El escudo está fallando críticamente bajo el rayo.
*   `siem.core_destroyed`: (Reusado de episodios pasados). El núcleo de Ramiel ha colapsado.
*   `siem.drill_stopped`: El asedio al GeoFront ha terminado.
*   `siem.thank_you`: Interacción humana resolutiva (Rompe la opacidad de Rei).
*   `siem.standoff_capability_present`: Cierra el missing alert del Episodio 05.

## Falsos Positivos y Anti-Métricas
*   **Falso Positivo:** Asumir que un apagón en Tokio indica daño a NERV. En este caso, el apagón es voluntario (Yashima).
*   **Anti-métrica:** Festejar el `national_blackout` como éxito. Apagar un país es una falla masiva de redundancia organizativa, no un gol.
