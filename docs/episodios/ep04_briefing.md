# Briefing Episodio 04: Hedgehog's Dilemma

## Contrato (INC-HEDGEHOG-001; no hay amenaza externa)
Este episodio trata un subtipo especial de incidente (`TIPO=sin_angel`). Aquí no existe amenaza externa, ni atacante C2, ni un núcleo que destruir. El incidente es que el CONTROL se ausenta de la red de defensa. Un estado `contained_controlled` en el incidente anterior que culmina con la ausencia de una red de soporte (callback absent) actúa como mecha de esta crisis. El laboratorio no "gana" destruyendo nada, sino logrando que el operador clave recupere una distancia funcional y vuelva al sistema voluntariamente.

## Subtipo sin_angel
La "aparición" no es la de un monstruo, sino la observación sensorial de la ausencia (el andén, el cuarto vacío). La "anatomía" es la del Dilema del Erizo (calor vs púas = soporte vs daño). Las TTPs no describen armas, sino patrones de escape humano y tácticas fallidas de recursos humanos (SRE).

## Lo que este episodio enseña
*   **Burnout y SRE (Site Reliability Engineering):** Cómo un nodo (operador) sobrecargado y sin soporte opta por desconectarse del sistema para proteger su integridad.
*   **Retención vs. Recambio:** Por qué intentar forzar a un administrador a volver (o amenazar con usar un recambio herido) destruye la confiabilidad.
*   **La banda habitable:** Encontrar el balance (Hedgehog Distance) entre el aislamiento tóxico y la sobreexposición hiriente.

## Lo que este episodio NO enseña
*   No hay Ramiel ni rifle de positrones.
*   El dilema del erizo no se aborda como un romance, sino como un problema de diseño organizacional y confiabilidad.
*   Instrumentality (esto pertenece al final de la serie).
*   "El trabajo cura": Volver no arregla al operador, solo restablece el control de manera frágil.

## Definición de victoria (lab): staffing_restored_fragile
El incidente se considera contenido y el laboratorio emite el código de salida `3` si la comandante recupera al operador basándose en la confianza y el operador pronuncia "Tadaima" (He vuelto). Esto indica que se halló una distancia en la banda habitable, aunque sigue siendo frágil.

## Definición de derrota (lab): staffing_failed
Si el operador aborda el tren de manera definitiva y deserta, o si NERV Security o Gendo fuerzan su retorno mediante obligaciones o amenazas ("tenemos a Rei, no lo necesitamos"), el código de salida es `4`. Obligar al nodo a operar sin confianza destruye la sincronización a cero.

## Vocabulario nuevo
*   **hedgehog_distance:** Métrica teórica que mide la cercanía emocional/profesional. (0.0 = fusión dañina; 1.0 = aislamiento total).
*   **AWOL (Away Without Official Leave):** Deserción del puesto.
*   **Failover tóxico:** Usar un backup inestable/herido (Rei) como amenaza para forzar al primario a trabajar.
*   **Retention:** Políticas de recuperación de personal clave de forma sostenible.
*   **Recambio:** Ver al operador humano no como un agente, sino como una pieza de hardware intercambiable.
*   **Tadaima / Okaeri:** El reconocimiento mutuo de haber encontrado una banda habitable ("He vuelto", "Bienvenido a casa").
*   **Banda habitable:** Rango de `hedgehog_distance` donde hay suficiente cercanía para operar sin que las púas desangren al individuo.

## Relación con callback_absent del 03
El éxito táctico contra Shamshel dejó a un piloto asustado al que nadie llamó. Ese vacío social es directamente responsable de la deserción que desencadena el incidente de este episodio.

## Lista de las 12 secciones
1.  **Briefing y contrato:** Definición del incidente de staffing.
2.  **Recreación:** El first-seen del silencio y la ausencia.
3.  **Anatomía del erizo:** Calor, púas, distancia y métricas.
4.  **Patrón deserción:** El control huye tras ganar.
5.  **TTPs:** Tácticas de huida y retención forzosa.
6.  **Superficie de detección:** El SIEM midiendo burnout y desgaste.
7.  **Controles preventivos:** Cómo evitar que el on-call se vaya.
8.  **Playbook:** Rama de recuperación vs. reemplazo.
9.  **Factor humano:** Fichas de distancia y roles.
10. **Contrato Ruby:** Implementar al operador independiente y su distancia.
11. **Laboratorio:** Runner de INC-HEDGEHOG-001.
12. **After-action y handoff:** Cierre y pase al episodio 05 (Ramiel).
