# Controles Preventivos: Mapeando la Sombra

## Preventivo vs. Solo Mitigable

| Controles PREVENIBLES (Higiene de Canales) | Controles SOLO MITIGABLES (Factores Humanos) |
| :--- | :--- |
| **Registro de Conflictos de Interés (COI):** Exigir declaraciones proactivas cuando operadores críticos (Ritsuko) mantienen vínculos personales con la cúpula directiva (Gendo). Si está declarado, el riesgo se asume y audita. | **El Anhelo / La Soledad:** Ningún firewall puede evitar que el personal aislado busque conexión emocional (`unauth_trust`). Es naturaleza humana; el SOC solo puede aspirar a mapearlo cuando se desvía a lo profesional. |
| **Inventario de Principals:** Exigir transparencia a los enlaces (Liaisons como Kaji). Si sabemos que responde a NERV y a Seele simultáneamente, sus reportes se calibran con el sesgo correspondiente. | **Silencio Cómplice:** Cuando los operadores veteranos deciden protegerse mutuamente omitiendo reportar infracciones menores (`missing_log`). Las auditorías automáticas (Shadow Graph) mitigan esto parcialmente. |
| **Onboarding Centralizado (In-band):** Prohibir que agentes externos al liderazgo directo extraigan a los operadores (Shinji) para darles doctrina extraoficial. | |

## Anti-patrones Preventivos (Lecciones)
1. **Org-Chart-as-Graph:** Creer ciegamente el PDF de Recursos Humanos y asumir que el flujo de aprobación técnico respeta exactamente la jerarquía dibujada.
2. **Kaji-as-Blue:** Tratar un problema interno de espionaje o mala segregación de deberes como si fuera un ataque de denegación de servicio (Kaiju) al que se le dispara.
3. **Ignorar el "Filler":** Asumir que los periodos sin incidentes técnicos mayores son vacaciones (Episodio 15). Generalmente, los atacantes internos preparan sus infraestructuras (`Shadow Edges`) durante el silencio perimetral.

## Higiene de Canales Humanos en un SOC Real
*   Monitorea quién habla con quién por Slack. A veces, las decisiones técnicas de Capa 1 se toman en un canal privado entre dos ingenieros que no pertenecen al mismo equipo.
*   No castigues el *Shadow IT* ciegamente, ilumínalo. Si un operador creó un canal *off-band* para trabajar mejor, formalízalo.
*   Entiende que el "Silencio" en el SIEM (*Missing logs*, agentes caídos repentinamente) suele ser un indicador mucho más fuerte de que un *insider* está actuando, en comparación con una sirena de 10,000 alertas.
