# Briefing Episodio 13: Lilliputian Hitcher (INC-IREUL-001)

## Contrato
El incidente INC-IREUL-001 es el corazón de este laboratorio de ciberseguridad. El 11º Ángel, Ireul, NO es un gigante balístico ni una amenaza terrestre; es una entidad biológica microscópica ("Lilliputian") que funciona, piensa y ataca como software. Su objetivo no es el Geofront físico, sino la supercomputadora MAGI: el **Control Plane**. Al infectar a MAGI, Ireul busca adueñarse de la "mayoría" de los cerebros y dictar la autodestrucción del cuartel (`self_destruct`). En este episodio, el Eva es absolutamente inútil. Ritsuko debe ejecutar un `reverse-hack` vía el cerebro Casper para acelerar la evolución de Ireul hasta un callejón sin salida (Dead-End) y esterilizarlo.

## Lo que este episodio enseña
*   **El Ángel como Malware:** Las amenazas no siempre vienen de afuera disparando; a veces escalan lateralmente desde un tanque de cultivo olvidado hasta el servidor *Root*.
*   **Compromiso del Control Plane (Consenso Bizantino):** MAGI no es una sola máquina, es un clúster de tres (Melchior, Balthasar, Casper). Ireul debe infectar 2 de 3 para tener la "mayoría".
*   **Polimorfismo Evolutivo:** Ireul sobrevive a las firmas antivirus (ozono, químicos) adaptándose inmediatamente. Parchear ciegamente solo lo alimenta.
*   **Reverse-Hack (Forced Evolution):** Usar la propia infraestructura infectada (Casper) para forzar al malware a mutar hacia una versión inofensiva o estéril.

## Lo que este episodio NO enseña
*   **No es Jet Alone (Ep 07):** Aquello era un sabotaje humano (`:nerv_sabotage`) con una contraseña *hardcodeada* de un competidor. Ireul es un ataque exótico que usurpa el hardware de NERV desde cero.
*   **No es Apagón (Ep 11) ni Radar (Ep 12):** Aquí MAGI no está `unpowered` ni sirve como una calculadora pasiva `compute_impact`. MAGI es el campo de batalla.
*   **No hay Evas:** Un cuchillo progresivo o un escudo AT no pueden apuñalar a un virus. Sacar a Eva-01 al patio es un fallo crítico.
*   **No es Bardiel (Ep 18):** El secuestro de una unidad Eva será un vector distinto, con otro huésped.

## Definición de Victoria y Derrota
*   **Victoria (Lab):** `:contained_controlled` (Exit 0). Se logra únicamente si la mayoría de MAGI se mantiene como `:nerv`, Ireul llega al `dead_end?`, y el Eva NO se utiliza (`eva_unused`).
*   **Derrota (Lab):** `:unresolved` (Exit 2). Ocurre si Ireul secuestra 2 de 3 cerebros de MAGI dictando la autodestrucción (`self_destruct`), o si el comandante entra en pánico y despliega los Evas (`eva_sortie_misapplied`).

## Vocabulario Nuevo
*   **Pribnow Box:** Entorno aislado de laboratorio (similitud con un *Sandbox* o Red Dev no segmentada) por donde inicia la brecha (Initial Access).
*   **Lilliputian:** Biomasa microscópica que actúa a escala de hardware de silicio.
*   **MAGI Infection:** Transición de estado donde un "Voto" del clúster deja de pertenecer a `:nerv` para responder a `:ireul`.
*   **Majority Hijack:** Control de 2/3 de MAGI, habilitando comandos administrativos nivel NERV.
*   **Dead-End / Casper Reverse-Hack:** El punto terminal de una evolución inducida que neutraliza el *malware*.

## Relación con incidentes anteriores
*   **Ep 01:** Introdujimos a MAGI como el juez supremo. Aquí demostramos por qué depender ciegamente del juez es letal.
*   **Ep 07:** Sabotaje vs. Polimorfismo.
*   **Ep 11 / Ep 12:** MAGI pasó de inútil a salvador. En el 13, es el enemigo.

## Lista de Secciones
1.  **Briefing:** Contrato de Ireul, el Control Plane y el polimorfismo.
2.  **Aparición:** El óxido en el tanque y la infección del silicio.
3.  **Anatomía:** Consenso de 3 votos y forced evolution.
4.  **Patrón Control Plane:** Cuando el IAM/Root es secuestrado.
5.  **TTPs:** Cadena desde la caja Pribnow hasta el Reverse-Hack.
6.  **Detección:** Pattern Blue micro, deriva del voto, falsos positivos.
7.  **Prevención:** Segmentación, Air-Gap y Tabletop Bizantino.
8.  **Playbook:** Runbook de Ritsuko y Casper, prohibiendo a los pilotos.
9.  **Factor Humano:** La IC de código y el milagro lógico.
10. **Contrato Ruby:** Modificación de `magi.rb`, `ireul.rb`, `forced_evolution`.
11. **Laboratorio:** Run exitoso validando la cura y el `eva_unused`.
12. **After-Action:** Cierre del AAR y pase al recap del Episodio 14.
