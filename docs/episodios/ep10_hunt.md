# Patrón: Caza Embrionaria y Magma Diver

## Escena Breve
El Eva-02 baja la pesada jaula electromagnética sobre la crisálida del 8º Ángel. Ritsuko, en los monitores del Comando Central, celebra la inminente obtención del espécimen vivo. De pronto, el contador de eclosión en la pantalla salta alarmantemente. Sandalphon comienza a moverse, desgarrando los soportes de la jaula. Al mismo tiempo, las alarmas térmicas del traje tipo-D gritan: el refrigerante se acaba. Misato, viendo la trampa, anula el deseo de Ritsuko y ordena: "Pierdan la muestra, mátenlo ahora." Asuka acuchilla la crisálida mientras hierve.

## Patrón: HUNT_EMBRIONARIO
El asalto no es reactivo contra un adversario desplegado. Es proactivo y en el terreno hostil del adversario.
*   **Precondiciones:** Detección de una anomalía en estado de "semilla", muy vulnerable pero alojada en un entorno altamente inaccesible o letal para el defensor.
*   **Síntoma Fetal:** Patrones biológicos incompletos, ausencia de TTPs de ataque directas.
*   **Error de Playbook Anterior (El Baile):** Creer que el entrenamiento de "clonación de acciones" (`pair_sync`) salvará un buceo en solitario.
*   **Error de Muestra (Greed):** La falsa creencia institucional de que la Inteligencia de Amenazas (Intel / Muestra Viva) es más valiosa que la Contención Letal en una crisis de tiempo.

## Tabla de Métodos en el Episodio 10

| Método de Respuesta | Resultado Esperado | Justificación |
| :--- | :--- | :--- |
| `Baile Sincronizado` (Ep 09) | **FAIL** | El magma y el embrión inerte no soportan esta mecánica. |
| `DualPlug / Yashima` | **FAIL** | Imposibilidad física de doble ocupación o francotirador. |
| `Esperar Forma Adulta` | **FAIL** | Si nace en su medio ideal (magma), NERV pierde de inmediato. |
| `Captura sin Aborto (Cage-Only)`| **FAIL** | La jaula se rompe y el `hatch` llega a 1.0 (Adulto). |
| `Dwell Out` (cooling = 0) | **FAIL** | Eva cocinado; pérdida total del activo. |
| **`Abort-to-Kill` (Cuchillo antes de nacer)** | **SUCCESS (`contained_controlled`)** | La criatura muere prematuramente, se pierde la muestra, el piloto vive. |

## Los Tres Relojes del Magma
1.  **Hatch Clock:** El tiempo biológico hasta que el embrión se vuelva un ángel capaz de matar a Asuka.
2.  **Cooling Clock:** El budget térmico. El tiempo físico hasta que el Eva-02 se derrita a muerte.
3.  **Greed Clock:** El tiempo burocrático que Ritsuko está dispuesta a gastar arriesgando la vida de los pilotos para satisfacer sus deseos científicos.

## Analogías de Seguridad
1. **Kill Process in Staging:** Detectas un troyano bajado a un endpoint que no ha ejecutado. En lugar de aislarlo en una Sandbox sofisticada y arriesgar a que se propague a nivel del Hypervisor, le envías un `SIGKILL` crudo y eliminas el archivo.
2. **Revocar antes de Abuse:** Un analista de la Dark Web nota que los certificados de la compañía han sido leakeados. No espera a ver "qué hace el atacante con ellos" en Prod. Los revoca todos al instante.
3. **Hunt en Producción Degradada:** Ejecutar un script de mitigación de ransomware en un servidor que ya está ardiendo (consumiendo 100% de CPU e I/O). Cada minuto que pasas intentando hacer un *Memory Dump* forense, el ransomware te cifra más archivos. 

## Señales SIEM y Fronteras
*   **Señal SIEM:** "Que no parezca peligroso no significa que no haya un incidente activo en curso." Un `embryonic` no emite alertas rojas clásicas de láseres.
*   **Frontera con Shamshel (Ep 03):** En el 03, obtuvimos un cadáver inerte tras una contención normal. Aquí la captura era el objetivo primario, forzándonos activamente a pivotar al *Kill*. "Muestra viva" difiere profundamente de "levantar los restos".
