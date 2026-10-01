# Briefing Episodio 07: A Human Work (INC-JETALONE-001)

## Contrato
El incidente INC-JETALONE-001 introduce un subtipo `sin_angel` (Vendor). A raíz del coste inaceptable de la Operación Yashima, el gobierno presiona a NERV con un competidor: Jet Alone, un robot autónomo impulsado por un reactor nuclear, libre del drama de los pilotos humanos. No hay amenaza adámica, no hay AT Field, y no debe emitirse `pattern_blue`. El incidente real es el sabotaje interno (insider threat) que descontrola al robot durante su demo.

## Subtipo sin_angel-vendor
A diferencia del incidente de staffing (AWOL) del Episodio 04, aquí la amenaza proviene de la incorporación apresurada de tecnología de terceros (Supply Chain) y de las maniobras políticas (Sabotaje Interno) para mantener un monopolio operativo.

## Lo que este episodio enseña
*   **Defensa de Terceros No Auditada:** El peligro de reemplazar una arquitectura dolorosa pero funcional por un producto autónomo no probado.
*   **Supply Chain / Insider Threat:** El virus que toma el control no es mágico; fue plantado por NERV (`virus_origin_nerv`).
*   **On-Box Break Glass:** Cuando el control remoto (`remote_kill`) falla, la mitigación física (trepar e introducir un password en consola) es la única salida.

## Lo que este episodio NO enseña
*   No hay infiltración de ángel digital (Ireul es el Ep 13).
*   No hay Dummy Plug ni asimilación del piloto.
*   El sabotaje ejecutado por Ritsuko no se celebra como una táctica de seguridad legítima.

## Definiciones de Victoria y Derrota
*   **Victoria (Lab):** `third_party_stopped` (Exit 5). Lograda al ingresar el password físicamente (`on_box_password`), tras registrar obligatoriamente el origen interno del virus (`virus_origin_nerv`).
*   **Derrota (Lab):** `third_party_runaway` (Exit 6) si el reactor no se detiene. También es derrota metodológica emitir `pattern_blue`, clasificar a JA como subclase de `Angel`, o resolver el incidente enviando un Eva a destruirlo.

## Vocabulario Nuevo
*   **Jet Alone (JA):** El producto/competidor. Un mecha nuclear.
*   **Vendor:** El proveedor gubernamental/privado que desarrolla JA.
*   **Demo:** Demostración de producto tratada irresponsablemente como entorno de producción.
*   **Kill-Switch Ajeno:** Control de emergencia remoto en manos del proveedor.
*   **On-Box Password:** Credencial de apagado de emergencia introducida físicamente en el activo.
*   **Reactor:** La fuente de energía de JA; representa un Blast Radius propio (amenaza de meltdown).
*   **Virus Humano:** Malware plantado por humanos, no por formas de vida adámicas.
*   **Monopolio:** El objetivo político detrás del sabotaje de NERV.

## Relación con Yashima (Ep 06)
El apagón de Japón y el sacrificio de Rei en Yashima generaron pánico político. Jet Alone es la respuesta del mercado: "Queremos la mitigación sin el coste de los niños ni el apagón". Esto impulsa a NERV a cometer fraude para proteger su relevancia.

## Lista de Secciones
1.  **Briefing:** Definición de un incidente sin ángeles.
2.  **Aparición:** La demo industrial y el paseo con el reactor.
3.  **Anatomía:** Kill-switches remotos y físicos, y el virus.
4.  **Patrón Tercero No Auditado:** Sabotaje como política.
5.  **TTPs:** Fases del fallo del vendor.
6.  **Detección:** Logs de producto en lugar de señales adámicas.
7.  **Prevención:** Evitar cajas mágicas post-incidente mayor.
8.  **Playbook:** Procedimiento manual de apagado.
9.  **Factor Humano:** Misato trepa, Gendo conspira.
10. **Contrato Ruby:** Implementación no heredada de `Angel`.
11. **Laboratorio:** Configuración para `third_party_stopped`.
12. **After-Action:** Cierre turbio de un incidente interno.
