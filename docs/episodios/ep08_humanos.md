# Factor Humano: Asuka, el Plug Compartido y Ryoji Kaji

## Fichas de un Incidente Logístico y Social

*   **Asuka Langley Soryu (Second Child):** Operadora hipercompetitiva. Altera el balance social estático del SOC. Reivindica el rol primario (`asuka_lead`) en su primer despliegue real. Es la antítesis de Rei (reservada) y de Shinji (reactivo). Aunque su agresividad logra la victoria, subestima las debilidades logísticas de NERV.
*   **Shinji Ikari (Secondary Input):** Pasa de ser el "héroe" principal al asiento de soporte (`shinji_secondary_input`) dentro de un *Dual Plug*. Esta degradación de rol no es cómoda y el abordaje compartido no consensuado genera roces, pero es vital operativamente. Asuka no podría haber forzado la mandíbula sin el *power input* de los dos.
*   **Misato Katsuragi:** Opera desde el puente de un portaaviones en lugar de su habitual centro de control, demostrando flexibilidad táctica. Se reencuentra con Kaji, lo que desestabiliza su concentración profesional levemente.
*   **Ryoji Kaji:** Oficial de logística de fachada. Aporta información vital para la moral táctica, pero su presencia en el manifiesto es `extra_cargo_unclassified`. Transporta algo (históricamente Adam, pero aquí es irrelevante para el kill condition del ángel) que eleva el riesgo del convoy al nivel de carnada, demostrando las agendas ocultas dentro de NERV.
*   **Rei Ayanami:** Ausente en este teatro logístico, su silencio contrasta con el estruendo de Asuka.

## Reglas y SIEM Humano
*   `asuka_lead`: La aserción de control por parte de Asuka domina la comunicación.
*   `shinji_secondary_input`: Aunque Asuka hable fuerte, la métrica de éxito exige confirmar que el *input* de Shinji estuvo presente. Sin él, el Eva-02 no habría resistido la compresión de Gaghiel.
*   `extra_cargo`: No altera el resultado táctico (`ContainmentResult`), pero subraya una brecha de prevención logística.
*   `apartment_third`: El episodio culmina con Asuka invadiendo el ya frágil hábitat civil de Misato y Shinji (Dilema del Erizo con 3 actores). Esto NO genera un `staffing_failed`, pero anuncia fricción.

## Frontera con el Episodio 09 (Baile Sincronizado)
*   En este incidente (08), los analistas comparten forzosamente una misma consola/plug. Hay jerarquía (Lead y Support).
*   En el Episodio 09, Israfel forzará a dos unidades separadas (Eva-01 y Eva-02) a moverse como un único cuerpo matemático y rítmico. **Un plug de dos ≠ Dos Evas sincronizados**.
