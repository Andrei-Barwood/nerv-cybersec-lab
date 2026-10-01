# After-Action Report (AAR): INC-LELIEL-001 (Dirac Sea)

## Resumen del Incidente
El incidente INC-LELIEL-001 (12º Ángel) es una falla catastrófica de Triage (Decoy Literacy). El piloto Shinji Ikari atacó el señuelo esférico (`decoy_contact`) activando la trampa gravitatoria principal (la sombra de 680m). El Eva-01 fue devorado hacia un Mar de Dirac (AT Field Invertido). Se detuvo por los pelos una orden de bombardeo masivo N² que habría matado al piloto (`n2_armed_occupied` desarmada por el mando humano). La neutralización del Ángel y rescate del piloto ocurrió únicamente debido a un fallo en el mando y control del hardware: el Eva-01 operó con agencia propia opaca y desgarró la dimensión enemiga desde el interior. El evento se cierra como `:contained_uncontrolled` (Exit 1). 

## Estado de Leliel y de la Unidad
*   **Leliel:** Eliminado violentamente desde dentro de su propia dimensión.
*   **Eva-01:** Extraída ensangrentada, validando nuevamente el anti-patrón de que NERV depende de los milagros biológicos de su hardware cuando la táctica falla (igual que en Ep 02).
*   **Operador (Shinji):** Vivo, pero con trauma psíquico agudo (`time_dilation` + `identity_interrogation`).

## TTPs y Fronteras Abiertas hacia el Ep 17 y 18
*   El T-OP01-08 (CloseRangeReapplied) ha demostrado ser fatal frente a atacantes espaciales, no solo ineficiente.
*   **Handoff a Episodio 17 (The Fourth Child):** NERV tiene una crisis de personal (pilotos destrozados) y recursos. La sucursal número 2 de EE. UU. se desvanece por un experimento fallido. Por ello, la unidad Eva-03 es enviada a Japón, requiriendo el apuro de nombrar al Cuarto Niño: Toji Suzuhara. (El Ep 17 es puramente burocrático, sin infección y sin despliegue táctico real).
*   **Deuda hacia Episodio 18 (Bardiel):** Esa unidad 03 que estamos importando será secuestrada (Hijack) en el trayecto. Nuestro siguiente combate real no será contra formas geométricas o mares de Dirac, sino contra un Eva idéntico al nuestro, pilotado por un civil inocente.

## Lección Seele para un SOC (Honeypots y Rehenes)
1.  **No Ataques el Decoy:** Si ves un Endpoint anómalo haciendo ruido sin encriptar, y todos corren a aislarlo por RDP, estás pisando la Sombra (trampa). Mide el cuerpo completo del evento antes de hacer el Triage.
2.  **El Sandbox Invertido:** Tratar de pivotar hacia la infraestructura del adversario porque crees que tienes mejores herramientas a menudo te vuelve a ti el prisionero.
3.  **Hostage Protocol ≠ Wipe Protocol:** El "N2-Vote" (apagar todo el datacenter perdiendo todos los datos / o lanzar un misil) puede ser sugerido por el software (MAGI), pero un líder humano debe vetarlo si hay vidas en juego.
4.  **No Festejes la Extracción Sucia:** Si el sistema de backups funcionó por arte de magia y te salvó de un ransomware indocumentado (`opaque_agency`), documenta que casi mueres, no que "tu infraestructura es muy inteligente".
