# After-Action Report (AAR): INC-LIES-001 (Shadow Graph)

## Resumen del Incidente
El evento INC-LIES-001 concluyó exitosamente como una operación pasiva de auditoría interna de riesgos (`shadow_graph_mapped`, Exit 9). No hubo incursiones Adámicas. Se identificó que el organigrama oficial de NERV es engañoso. Se documentó a Ryoji Kaji operando como un actor `Multi-Principal` (Seele, NERV). Se registraron conflictos de interés severos (Ritsuko-Gendo en torno al control de MAGI) y el uso intencional del silencio como mecanismo de evasión de logs (`missing_log`). Las confianzas no autorizadas motivadas por necesidades humanas (anhelos emocionales) abrieron puertos lógicos. Aunque el grafo fue mapeado, la directiva no erradicó los canales sombra, asumiéndolos como un riesgo estructural ineludible.

## Estado de la Infraestructura Humana
*   **Shadow Graph (Mapeado):** Los bordes Misato-Kaji, Kaji-Shinji, Shinji-Rei, y Gendo-Ritsuko están ahora clasificados como vectores de confianza no autorizados.
*   **MAGI (Plano de Control):** Técnicamente íntegra (libre de Ireul), pero comprometida administrativamente por un COI no resuelto.
*   **Seele:** Su KPI destructivo (Instrumentality) ya está influyendo en los liaisons de la base.

## TTPs y Fronteras Abiertas hacia Ep 16
*   `T-KAJI-*` (Liaison Multi-Principal), `T-COI-01` (Directorio a Control Plane) y `T-SILENCE-01` (Missing Logs) se mantienen como tácticas de desgaste que vulneran permanentemente la postura de seguridad de NERV.
*   La salida 9 (`:shadow_graph_mapped`) no es una victoria definitiva (Exit 0) ni burocrática (Exit 7). Es un mero diagnóstico.
*   **Handoff a Episodio 16 (Splitting of the Breast):** Se acabó el descanso y la introspección burocrática. El 12º Ángel (Leliel) romperá la paz táctica. Leliel no es un atacante convencional que cae del cielo; es una sombra bidimensional de 680 metros de diámetro que devora lo que toca, enviándolo a un espacio imaginario (Mar de Dirac). La arrogancia de creer que tenemos todo "mapeado" será destruida en segundos.

## Lección Seele para un SOC (Cultura de Confianza)
1.  **IAM no refleja la Cultura:** El Active Directory (Org Chart) dice quién puede acceder a un servidor. El Shadow Graph dice quién *realmente* le pide los datos a quién por WhatsApp. El atacante interno siempre usará el segundo.
2.  **El Consultor de Doble Filo (Liaison):** Si contratas a un auditor o consultor de seguridad (Kaji) que también tiene contratos activos con tus rivales (o tu Board con agenda oculta), sus informes siempre vendrán sesgados. Documenta cuántos `principals` le pagan.
3.  **Missing Logs como Indicador de Compromiso:** Cuando un operador junior siempre se olvida de llenar el reporte de turno, puede ser torpeza. Cuando tres comandantes simultáneamente dejan de enviar telemetría ("Lies and Silence"), es un `unauth_trust` encubriendo un canal sombra.
4.  **No Automatices la Confianza:** MAGI no puede predecir ni detener el beso de Misato, la visita de Shinji o la lealtad de Ritsuko a Gendo. Ningún *zero-trust firewall* reemplaza el mapeo de dependencias humanas.
