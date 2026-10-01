# After-Action Report (AAR): INC-MATARAEL-001

## Resumen del Incidente
El incidente INC-MATARAEL-001 representó un P1 Compuesto (*Compound Incident*): un asalto oportunista de un ángel (Matarael) concurrente a un colapso masivo involuntario de la infraestructura local del HQ (`hq_power_lost`). Ante la indisponibilidad total del plano de control automatizado (SIEM ciego, jaulas selladas, MAGI en estado `unpowered`), NERV optó por no demorar la contención. El puente de mando transicionó a modo analógico (`analog_mode`) y mediante el esfuerzo manual se forzó la eyección de las unidades (`analog_launch`). El despliegue de fuego combinado destruyó el núcleo de la amenaza mucho antes de que el corrosivo `acid_progress` perforara la ciudad y el Geofront. La luz fue restaurada horas después de asegurar el cadáver. Exit 0: `:contained_controlled`.

## Estado de Matarael vs Infraestructura
*   **Matarael (El Ángel):** Destruido fácilmente. Las TTPs de goteo oportunista (`T-MATARAEL-*`) quedan neutralizadas. Un espécimen tácticamente pobre que casi gana el *match* por la coyuntura, no por mérito bélico.
*   **MAGI y el Outage:** La higiene de depender de `MAGI.majority` queda observada. Si MAGI hubiera sido prerrequisito estricto, NERV habría caído derretido. La red fue reiniciada y se comprobó que no hubo infección de virus en este incidente.

## Higiene Operativa Preservada (T-OUTAGE)
Las TTPs de `T-OUTAGE-*` y `T-ANALOG-*` (Lanzamientos bypass de emergencia, runners humanos con linternas) quedan abiertas en la biblioteca de SOC como controles perennes a ejercitar (`Game-Days`).

## Deuda Hacia Episodio 12 (Sahaquiel y la Órbita)
*   En este incidente la amenaza era lenta, torpe, local, en un ambiente donde nos arrastramos por los túneles a oscuras.
*   El próximo incidente reportado es un **Payload Orbital (Sahaquiel)**. La electricidad no faltará y MAGI funcionará, pero la amenaza no es un combate de a pie; es una bomba cinético-espacial que se desploma desde el cielo hacia Tokio-3. La respuesta ya no dependerá de forzar cajas con linternas, dependerá de frenar, físicamente con los escudos AT de los tres EVAs, un impacto astronómico. Cero ceguera, pura matemática e intercepción aérea.

## Lección Seele para un SOC
1.  **Compound Incidents:** El atacante casi siempre golpeará cuando tus defensas de monitoreo están caídas. Esa es la naturaleza del oportunismo.
2.  **Analog IR:** Si tu procedimiento de respuesta a incidentes (tu SOC, tus alertas, tu botón de apagado de VPN) requiere usar la misma red que está indisponible o comprometida, no tienes respuesta a incidentes.
3.  **Bypass Físico:** Debes poder lanzar el *Kill Switch* o bloquear el servidor con una llave manual/local, independiente del SSO y del pipeline de CD/CI.
4.  **No esperes al SIEM:** Si el techo gotea ácido (o los clientes te llaman quejándose de cifrado masivo), y Datadog marca verde o no carga, asume que es P1 y dispara ciego.
5.  **MAGI (Plano de Control):** Una herramienta superpoderosa apagada vale menos que un analista Junior (Aoba) con una linterna y un lápiz.
