# After-Action Report (AAR): INC-SANDALPHON-001

## Resumen del Incidente
El incidente INC-SANDALPHON-001 (Magma Diver) introdujo exitosamente la táctica de *Threat Hunting Embrionario*. NERV desplegó al Eva-02 con blindaje de alta presión en el volcán Asama. El intento inicial de captura científica (`capture_attempt`) falló categóricamente al desencadenar la eclosión reactiva de Sandalphon. Antes de que el proceso biológico llegara a término (`hatch_progress < 1.0`) y ante el inminente agotamiento del reloj térmico, la Comandancia abortó la fase de inteligencia y ordenó neutralización letal in-situ. El embrión fue acuchillado y el Eva-02 rescatado de emergencia por el Eva-01. El saldo es `:contained_controlled` (Exit 0) asumiendo una pérdida lícita de la muestra biológica (`sample_lost`).

## Estado del Ángel vs Muestra vs Entorno
*   **Sandalphon:** Destruido antes de alcanzar la madurez. TTPs `T-SANDALPHON-*` cerradas.
*   **Muestra Científica (Sample):** `sample_lost` confirmado. La inteligencia de amenazas debe supeditare a la supervivencia física del perímetro.
*   **Entorno (Cooling):** El traje térmico rozó la falla catastrófica (T-HUNT-01). El *dwell time* en el teatro hostil demostró ser el recurso más frágil de la operación.

## T-SYNC y Playbooks Pasados
Las capacidades de `pair_sync` y el Baile Sincronizado del incidente de Israfel (Ep 09) resultaron completamente inaplicables e inútiles en este teatro logístico asimétrico. El principio de anular el dogma de *Last-Playbook-Wins* garantizó que el cazador se enfocara en la refrigeración y no en buscar un tempo musical inexistente.

## Deuda Hacia Episodio 11 (Matarael y el Apagón)
*   En este incidente confiamos ciegamente en el traje D-Type, el monitor de temperatura electrónico y las grúas magnéticas del Eva-01. Asumimos que la tecnología de soporte de NERV siempre está activa.
*   El próximo atacante detectado (`Matarael`, Araña de Ácido) capitaliza un **apagón eléctrico masivo**. NERV no tendrá MAGI, ni pantallas térmicas, ni refrigeración, ni puertas automáticas, ni Evas con batería completa. El playbook de "lanzar equipamiento caro al problema" no funcionará cuando no haya voltaje en los enchufes.

## Lección Seele para un SOC
1.  Encontrar un malware inactivo o una shell en *Staging* exige contención rápida (Abort-to-Kill), no monitoreo lúdico. Si esperas a que la amenaza madure (Hatch) para saber cómo ataca, te destruirá desde adentro.
2.  Recolectar artefactos forenses y memoria RAM viva en un servidor comprometido es noble, pero si el servidor está sobrecargándose y cifrando tus volúmenes en el proceso (Dwell hostil), apágalo de inmediato (Sample Lost es aceptable).
3.  El `Greed` científico/técnico de un analista o ingeniero que busca "el informe perfecto" no debe anular al Comandante de Incidentes que busca "el cierre del hueco".
4.  Si funcionó el "Baile en Pareja" ayer, no significa que sirva mañana para cazar *malware* en la base de datos de producción (Last-playbook-wins).
5.  El equipo de soporte no es inferior al analista de caza: el soporte asegura los backups (o el cable de la grúa) para que el cazador pueda operar en la zona de riesgo con garantía de escape.
