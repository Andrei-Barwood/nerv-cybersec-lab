# After-Action Report (AAR): INC-BARDIEL-001 (Wipe Forzoso)

## Resumen del Incidente
El INC-BARDIEL-001 marca el peor fracaso orgánico de NERV hasta la fecha. El parásito durmiente importado en el Episodio 17 (`hitchhiker_activated`) tomó control bio-mecánico de la Unidad-03 en el Geofront secundario de Matsushiro (`eva03_hijacked`). En el campo de batalla, el host de confianza superó y mutiló a las defensas estándar (Eva-00 y Eva-02). Frente a la negativa del piloto principal de aniquilar la unidad poseída sabiendo que contenía un rehén humano (`operator_refuse`), la Dirección implementó un Override Administrativo. El `Dummy Plug` suplantó los privilegios del operador (`operator_input_discarded`) y obligó a la Unidad-01 a despedazar al host. El resultado es la muerte del Ángel Bardiel y la Unidad-03, y mutilaciones permanentes para el Cuarto Niño (`occupant_maimed`). Shinji Ikari no consintió la acción. El lab registra un `:contained_uncontrolled` (Exit 1) extremadamente sucio.

## Estado de la Infraestructura y el Roster
*   **Bardiel (13º Ángel):** Eliminado (Core aplastado junto con el host).
*   **Eva-03:** Destruida totalmente (Pérdida del 100% de la inversión extranjera).
*   **Toji Suzuhara:** Maimed (Baja permanente del Roster de pilotos).
*   **Dummy Plug:** Exitoso como prototipo de aniquilación, pero quemó la moral de la tropa.
*   **Shinji Ikari:** En shock traumático severo, a minutos de presentar su renuncia irrevocable.

## Deuda Técnica Cobrada
*   **T-SOC-08 (Need-To-Know False):** La decisión de ocultarle el nombre del piloto a Shinji se cobró hoy de la peor manera posible.
*   **T-SOC-09 (Destroy Occupant):** NERV demostró que su SLA (Derrotar Ángeles) es más alto que su lealtad al empleado.

## Lección Seele para un SOC (Auto-Wipe y Conflictos)
1.  **Wipe con Sesión Viva es un Fracaso:** Automatizar el borrado de discos físicos (`wipefs`) o la destrucción de instancias simplemente porque "tienen ransomware", asumiendo las pérdidas de datos en proceso o a los analistas trabajando dentro, no es higiene de seguridad. Es negligencia.
2.  **La Rebelión del Analista Importa:** Si tu nivel 1 frena un SOAR destructivo, no le saltes el comando (`override`) sin averiguar *por qué* lo está frenando. A veces, ellos ven dependencias que el playbook no tiene programadas.
3.  **Tu Mejor Activo es tu Peor Enemigo:** No hay ataque más destructivo que el que proviene de tus propios servidores con privilegios `root` asumiendo comportamientos hostiles. Zero-Trust debe aplicarse incluso después del Onboarding de hardware corporativo.
4.  **El Dummy no reemplaza la Moral:** Crear herramientas para que "la máquina haga el trabajo sucio que el humano no quiere hacer" disuelve la cadena de responsabilidad.

## Handoff a Episodio 19 (Introjection / Zeruel)
El Dummy Plug acaba de quebrar la moral de NERV. Shinji Ikari abandona el Geofront. Pero la guerra no pausa.
*   El Episodio 19 traerá a **Zeruel**, el Ángel de la Fuerza Bruta.
*   Atacará de frente, no por secuestro.
*   Eva-02 será reducida a chatarra en segundos.
*   NERV intentará usar el Dummy Plug para encender el Eva-01 y repeler el ataque. **El Dummy Plug fallará.** La Unidad 01 rechazará el sistema artificial.
*   Shinji regresará, no por NERV, sino por sí mismo. Y cuando la energía del Eva se acabe a los 5 minutos, despertará el verdadero horror latente: **El Modo Berserk / Beast**, pero esta vez para devorar y asimilar el Motor S² del Ángel.
