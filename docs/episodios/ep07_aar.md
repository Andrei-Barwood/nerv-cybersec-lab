# After-Action Report (AAR): INC-JETALONE-001

## Resumen del Incidente
El incidente INC-JETALONE-001 (A Human Work) se derivó de una falla de producto y sabotaje corporativo, no de una amenaza alienígena (Ángel). Durante una demostración pública para reemplazar a los Evangelions con mechas nucleares autónomos (Jet Alone), un virus denegó el kill-switch remoto del fabricante. El robot descontrolado marchó hacia una zona civil bajo riesgo de *meltdown* inminente. El asalto táctico convencional estaba contraindicado. La resolución requirió acceso físico (`physical_access_vendor`) de mandos tácticos para introducir la contraseña *on-box* e interrumpir la fusión. El incidente se cierra en estado `:third_party_stopped` (Exit 5).

## Estado del Producto, de NERV y Origen del Virus
*   **Jet Alone (Vendor):** Detenido físicamente y el proyecto cancelado públicamente.
*   **NERV:** Mantiene su monopolio operativo, validando ante los inversores que solo los humanos (Evas) pueden manejar estas crisis.
*   **Origen del Virus:** El análisis forense confirma que NERV inyectó el código malicioso (`virus_origin_nerv`). El incidente fue orquestado internamente, manchando irremediablemente la integridad organizativa.

## TTPs Pendientes y Abiertas
*   `T-VENDOR-01` (Unaudited Autonomy) y `T-VENDOR-03` (Remote Kill Illusion) quedan demostradas como fallas fatales en la adquisición de productos de seguridad "mágicos".
*   `T-NERV-01` (CompetitorVirus) y `T-NERV-02` (FalseMarketDecision) **siguen abiertas como deuda ética y organizativa**. Tolerarlas invita a la futura desintegración del mandato moral de la agencia.

## Por qué Exit 5 no es un Exit 0 (Contained Controlled)
El código 0 está reservado para la mitigación exitosa de amenazas externas no controlables (Ángeles). El Exit 5 refleja la detención de un problema de IT y *supply chain* creado por las propias guerras políticas de la organización. Limpiarlo bajo el código 0 sería fraude documental.

## Deuda Hacia Episodio 08 (Asuka Strikes)
*   Las crisis locales están resueltas (Tokio-3). La atención se desvía a la logística marítima: la llegada de una flota militar (convoy), la escolta del Eva-02, el Tercer Piloto (Asuka Langley), y el asalto del sexto ángel (Gaghiel) en un entorno de tránsito fluido (el mar).

## Deuda Hacia Episodio 13 (Frontera)
*   Se registró un virus humano. Cuando un virus *alienígena* y evolucionante ataque la infraestructura raíz (MAGI) en el Episodio 13 (Ireul), los analistas deberán distinguir inmediatamente entre un patógeno biológico digital (`pattern_blue`) y un simple *malware* corporativo.

## Lección Seele para un SOC
1.  Comprar una "caja negra" impulsada por IA o autonomía absoluta para reemplazar un SOC doloroso a menudo añade un riesgo de *Blast Radius* incontrolable.
2.  Si la interfaz de apagado de un producto SaaS (Control Remoto) falla y no posees acceso local de emergencia (On-Box), el proveedor es tu dueño, no tu aliado.
3.  Asumir por defecto que cualquier evento ruidoso en la red es un "Ataque Avanzado/Ángel" arriesga a disparar respuestas (Destrucción) que causan más daño que la falla original.
4.  Resolver problemas operativos saboteando al competidor es corrupción estructural; si el SOC hace wipers para ganar presupuesto, el SOC es el verdadero *Threat Actor*.
5.  Los EDR y proxies que dicen no requerir auditoría deben ser los más auditados.
