# After-Action Report (AAR): INC-FOURTH-001 (Setup y Ceguera)

## Resumen del Incidente
El incidente INC-FOURTH-001 es un registro de onboarding exitoso con fallas catastróficas subyacentes. La Unidad-03, fabricada *Offshore* en Estados Unidos, llegó a jurisdicción japonesa. A pesar de una anomalía eléctrica registrada en vuelo (`cloud_ioc`), se omitió una cuarentena biológica estricta (`cloud_ioc_ignored`), confiando en el sello *First-Party* de la agencia. Simultáneamente, el staffing del `FourthChild` (Toji Suzuhara) fue ejecutado mediante un contrato coercitivo a cambio de atención médica para un familiar (`sister_leverage`). Finalmente, se impuso un velo de silencio hacia el piloto Shinji Ikari (`knows_fourth_child = false`), estableciendo un silo de información entre los propios compañeros de armas. El evento cierra como `:trusted_intake_recorded` (Exit 11), celebrando un falso aumento de capacidad defensiva.

## Estado de la Infraestructura de Combate
*   **Eva-03:** "Limpia" en papel (`:trusted_intake`), pero aloja un `DormantContaminant` sellado.
*   **Toji Suzuhara:** Seleccionado y mentalmente desgastado por la transacción familiar.
*   **Comunicación:** Totalmente rota por el "Need-to-Know" asimétrico.

## TTPs Abiertas (El Cobro de Deudas en el 18)
*   **T-INTAKE-01 (TrustedUnitSkipAudit):** La puerta trasera que dejamos abierta se cerrará de golpe cuando la caja se active en Matsushiro.
*   **T-SOC-08 (OccupantNeedToKnowFalse):** La bomba de relojería psicológica. Shinji no tirará del gatillo.
*   **Handoff a Episodio 18 (Ambivalence):** La burocracia de hoy es la carnicería de mañana. El contaminante no es Ireul (hack) ni Leliel (espacio). Es Bardiel: un secuestro orgánico del propio Hardware, que lo convertirá en el 13º Ángel usando al Cuarto Niño de rehén. Prepara el `DummyPlug` y prepárate para mutilar a un colega.

## Lección Seele para un SOC (Onboarding Letal)
1.  **Confía, pero Verifica (Aún lo Propio):** Que una AMI o contenedor venga del repositorio de tu equipo corporativo en Londres no significa que el Jenkins que lo empaquetó no estuviera comprometido. No hay "pase libre" en Aduana (Zero-Trust).
2.  **Los "Falsos Positivos" en el Perímetro:** Descartar un log de comportamiento anómalo en un recurso crítico simplemente porque "había mal tiempo en la red" es pavimentar el camino a una brecha.
3.  **Staffing por Coerción:** No puedes tener una postura de seguridad fuerte si tus On-Calls están ahí bajo amenaza (despido, visa, bonos) y no por compromiso con la higiene de la infraestructura. Se quebarán bajo presión.
4.  **Ceguera en la Respuesta a Incidentes (Need-To-Know):** Compartimentar secretos hacia arriba está bien. Compartimentar los datos vitales a tus ingenieros de primera línea (no decirles quién es el dueño de la caja que deben apagar) provoca parálisis decisional durante una crisis.
