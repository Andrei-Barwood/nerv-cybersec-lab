# Briefing Episodio 18: Ambivalence (INC-BARDIEL-001)

## Contrato
El incidente INC-BARDIEL-001 detona todo lo que preparamos en el Ep 17. No es un invasor que rompe el perímetro desde fuera (Zeruel), ni un espacio extradimensional (Leliel), ni un hack a la infraestructura lógica (Ireul). Es el Hijack absoluto del endpoint de confianza corporativo: el propio Eva-03 es el huésped del ángel Bardiel. El Cuarto Niño (Toji) está atrapado en la cabina (ocupante) y es utilizado como rehén biológico. Shinji se niega a cumplir la orden de destruir la unidad (`refuse-to-burn-friendly`). Ante esto, la Dirección utiliza el **Dummy Plug** (`authorized override`): un sistema automatizado que despoja al humano del control táctico y tritura el host con el compañero adentro.

## Lo que este episodio enseña
*   **Wipe con Sesión Viva:** El horror operativo de utilizar automatización (SOAR/Dummy Plug) para quemar infraestructura de un plumazo, ignorando la alerta crítica de que hay personal humano administrándola en ese momento.
*   **Hijack de lo Nuestro:** Las APIs de tu propio endpoint de confianza (fuerza y velocidad del Eva) son puestas en tu contra. 
*   **Override Administrativo y Ética:** La rebelión moral del analista frente a una directiva inhumana, sofocada brutalmente por permisos de superusuario `root` (Gendo).

## Lo que este episodio NO enseña
*   No es un ataque de fuerza bruta que sobrepasa el perímetro (Eso será el Episodio 19: Zeruel).
*   El Dummy Plug **NO** es una buena práctica de ingeniería ni debe celebrarse como un avance de NERV; es un arma cuestionable que destruye la confianza entre la base y el mando.
*   No hay fanservice gore. Documentaremos el estado `occupant_maimed` como bandera clínica, no como chiste.

## Definición de Victoria y Derrota
*   **Victoria Sucia (Lab):** `:contained_uncontrolled` (Exit 1). La amenaza muere porque la IA tritura a la unidad amiga y lesiona gravemente a su ocupante. El operador (Shinji) no dio consentimiento (`shinji.consent = false`).
*   **Derrota (Lab):** Intentar reportar un `:contained_controlled` (Exit 0) afirmando higiene táctica, o utilizar un `password` o el hack de Casper (Ireul) para resolver el incidente. 

## Vocabulario Nuevo
*   **Bardiel:** El 13º Ángel, un parásito que secuestra ecosistemas cibernéticos y biológicos de confianza.
*   **Dummy Plug:** Producto automatizado de NERV que emula un patrón mental (`Rei Pattern`) para pilotar el Eva saltándose al humano.
*   **Hijack:** Secuestro operativo del activo propio.
*   **Occupant Maimed:** Bandera que indica que el tripulante humano del host destruido sobrevivió, pero con heridas irreparables (amputaciones).
*   **Refuse-to-burn-friendly:** Negativa ética del operador principal a acatar órdenes destructivas sobre compañeros.
*   **Authorized Override:** Gendo asumiendo control absoluto remoto sobre la terminal del Eva-01.

## Relación con incidentes anteriores
*   **Ep 13 (Ireul):** Ireul secuestró MAGI (Plan de Control). Bardiel secuestra Eva-03 (Data Plane / Endpoint).
*   **Ep 17 (Intake):** La aduana fallida y el "Need-to-Know" asimétrico (Shinji ciego) estallan hoy.

## Lista de Secciones
1.  **Briefing:** Contrato de override y wipe sucio.
2.  **Aparición:** El Eva-03 deformado y ardiendo en Matsushiro.
3.  **Anatomía:** El Parásito, el Dummy Plug y el Ocupante.
4.  **Patrón Trusted Hijack:** No hay peor monstruo que tu propio activo.
5.  **TTPs:** Activar, Secuestrar, Negarse, y Automatizar la muerte.
6.  **Detección:** El `cloud_ioc` ahora es un `pattern_blue` del host de confianza.
7.  **Prevención:** Disclose occupant y no usar Dummy Plug para staff.
8.  **Playbook:** El árbol que conduce al Dummy Plug.
9.  **Factor Humano:** Shinji en huelga, Gendo al mando, Toji destrozado.
10. **Contrato Ruby:** DummyPlug `engage!`, `operator_input_discarded`.
11. **Laboratorio:** Exit 1 (Contención incontrolable vía override).
12. **After-Action:** Handoff al terror físico del Episodio 19 (Zeruel).
