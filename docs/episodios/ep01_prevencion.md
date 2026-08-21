# Ep 01 — Controles preventivos (lo que debió existir ANTES)

Episodio: 01 · *Angel Attack* · Sachiel
Prevención honesta: lo que NERV pudo haber tenido **antes** del first-seen. El Eva no entra en esta columna. Varias cosas del 01 no se previenen: se preparan.

Durante-el-incidente es la sección 08. Aquí no hay árbol de decisión de combate.

---

## Columna PREVENIBLE

Mínimo cinco controles que, de haber existido, habrían cambiado el 01. Accionables. Cada uno nombra analogía real y símbolo futuro (nombre solamente).

### P-01 Doctrina de core publicada
- **Qué habría cambiado.** Nadie trata el fluido ni el cráter como KPI. El wipe no se aplaude. `CoreStrike` es hipótesis operativa *escrita*, no una ocurrencia a mitad de incendio.
- **Analogía.** Kill-chain interna publicada: “sesión muerta ≠ cuenta muerta”; el SOC ya sabe qué es persistencia raíz antes del 3 a.m.
- **Símbolo.** Comentario de `Nerv::Core` / guardas de `Playbook` que rechazan `:contained` si `core.intact?`. No es un botón. Es una regla.

### P-02 Operador en sync antes del primer Pattern Blue
- **Qué habría cambiado.** El deploy no depende de un menor convocado el mismo día. `siem.operator_sync_low` no es el estado por defecto.
- **Analogía.** El on-call del incidente grave ya hizo game-day; no se estrena el runbook en producción con la persona que nunca tocó la consola.
- **Símbolo.** `Eva#sync_rate` ≥ umbral *antes* de `siem.pattern_blue`. Staffing, no heroísmo.

### P-03 Backup realmente disponible
- **Qué habría cambiado.** Rei herida no deja el roster en un solo nombre. Hay failover de operador.
- **Analogía.** Secundario de guardia que no está de baja el día del ransomware. “Tenemos backup” en una wiki no cuenta si está en el hospital.
- **Símbolo.** Métrica `backup_unavailable` (sección 09). Si true, el playbook no finge failover.

### P-04 Ejercicios de wipe que miden regeneración
- **Qué habría cambiado.** La N² no se usa como talismán. Existe un drill donde el cráter **no** cierra el ticket. Se instrumenta la ventana post-wipe (`siem.wipe_failed_regen` esperado, no sorprendente).
- **Analogía.** Tabletop de ransomware donde “restauramos el backup” es el *principio* de la verificación, no el final. Se busca el implant, no el aplauso.
- **Símbolo.** Tras `N2Mine`, el escenario *exige* `#regenerate!` + `#mutate!`. Un test verde por “hubo explosión” es un test rojo de doctrina.

### P-05 Perímetro que no gasta el arsenal como si fuera un tanque
- **Qué habría cambiado.** La ONU (o quien sea el SOC de borde) tiene orden de no escalar `ConventionalAttack` al infinito. Pattern Blue corta esa rama en minutos, no tras vaciar munición.
- **Analogía.** Playbook de first-seen: no lanzar todos los IOC-block y todos los reimages “por si acaso” antes de clasificar. El ruido destruye evidencia y enseña el techo.
- **Símbolo.** `ConventionalAttack` contabilizado como no-evento; abort ONU en el árbol de la 08.

### P-06 Autorización extrema sin agenda oculta
- **Qué habría cambiado.** MAGI mayoría + IC deciden el deploy. El director no usa el Pattern Blue para su propio objetivo. El plan B no es “el niño, ahora”.
- **Analogía.** Break-glass con dos personas y registro; el VP no salta el cambio porque el incidente le conviene políticamente.
- **Símbolo.** `Magi.majority?` para identificación y para autorización Eva. `hidden_agenda` (09) corrompe si un voto humano se salta la mayoría.

### P-07 Higiene de first-seen (catálogo + umbral de “no es convencional”)
- **Qué habría cambiado.** T-SACHIEL-01 no se traduce en “enemigo militar” durante una hora. La regla de la 02/06 ya está ensayada: escala ≠ clase.
- **Analogía.** Alertas de malware unknown: el playbook de “binario no visto” es distinto del de “CVE de Apache otra vez”.
- **Símbolo.** Emisión temprana de `siem.pattern_blue`; no esperar al wipe para nombrar.

---

## Columna SOLO MITIGABLE

No hay parche para estas. Se aceptan o se mitigan *durante*. Preparar ≠ prevenir el objeto.

| Qué no se previene | Por qué | Qué sí se puede preparar |
|---|---|---|
| Que exista un ángel / first-seen de clase nueva | Sachiel no entra por un CVE que NERV olvidó parchear. El objeto aparece. | Doctrina de clase nueva (P-01, P-07). No el objeto cero. |
| Que el AT Field rebote lo convencional | Es aislamiento que el atacante **trae**. No es un misconfig del perímetro. | No gastar munición (P-05). Plan de penetrar/bajar campo *con gente lista* (mitigación, 08–10). |
| Que un wipe que no toca el core falle | Ley de persistencia raíz. Si no apuntas al core, no mueres el incidente. | Ejercicios que lo asumen (P-04). No usar N² como preventivo. |
| Que el atacante mute si sobrevive al techo del arsenal | T-SACHIEL-04 es adaptación. No hay parche para “no aprenda”. | Asumir mutación en el modelo (`#mutate!`); no sorprenderse. |
| Que haga falta una unidad de respuesta humana | El Eva es mitigación de último recurso. Llegados ahí, ya se previno mal o la amenaza no era parcheable. | Sync, backup, autorización limpia. Tener el Eva **no** previene a Sachiel. |

Sachiel **sí** tenía preparación posible (columna izquierda). Lo que no tenía era un parche que impidiera su existencia. “Algunos ángeles no se previenen, se preparan”: aquí se prepara el first-contact; no se un-inventa el 3º ángel.

---

## Anti-patrones

Mínimo tres. El primero es ley del episodio.

### A-01 “Tenemos un Eva” (el Eva como talismán)
Falso preventivo. Gendo tenía un Eva y un piloto de reemplazo destrozado. Eso es un plan B cruel, no un control que reduzca la probabilidad del first-seen ni la del wipe inútil. En un SOC: “tenemos EDR / tenemos el red team / tenemos al senior” no es prevención si el senior está de baja y el EDR no tiene regla de persistencia. El Eva entra en mitigación, sección 08, con `sync_rate` encima de la mesa.

### A-02 “Más calibre” (escalar el mismo control)
Tras T-SACHIEL-02, insistir en `ConventionalAttack` o saltar a `N2Mine` *sin* criterio de core es el mismo anti-patrón a otra escala. Analogía: el reimage masivo cuando el implant es de firmware; el wipe de disco como identidad.

### A-03 “El backup existe en organigrama”
Rei está herida. El nombre en la lista no es un control. Analogía: el secondary on-call en PagerDuty con el teléfono en avión, o el runbook cuyo dueño dimitió.

### A-04 “El silencio post-wipe es paz”
Declarar victoria por cráter. Anti-patrón de detección (06) y de persistencia (04). Aquí cuenta como preventivo fallido: no se ensayó la ceguera.

### A-05 “Convocar al operador el día D es staffing”
Shinji el mismo día no es un programa de operadores. Es improvisación. Analogía: dar de alta al becario en el canal `#incident` cuando ya hay ransomware en AD.

---

## Relación con TTPs de la sección 05

| TTP | Si los preventivos existieran | Si solo queda mitigar |
|---|---|---|
| `T-SACHIEL-01` FirstSeenUnclassifiable | P-07 nombra pronto; P-05 no dispara el ejército. El objeto igual aparece. | Clasificar. No parchear la existencia. |
| `T-SACHIEL-02` PerimeterRebuff | P-05 aborta el fuego inútil. El AT Field no se “previene”. | Dejar de golpear el cuerpo; ir a doctrina de campo/core. |
| `T-SACHIEL-03` WipeSurvival | P-04 y P-01 impiden el aplauso y el uso naíf de N². El wipe mal apuntado igual falla. | No declarar `:contained`; instrumentar regen. |
| `T-SACHIEL-04` AdaptiveMutation | P-04 asume mutación. No hay control que impida `#mutate!` tras wipe fallido. | Recalcular perfil; no pelear el minuto cero otra vez. |
| `T-SACHIEL-05` HighValueApproach | Segmentar/ensayar el activo ayuda; no detiene la marcha por sí sola. | Deploy *con gente lista* (y eso ya es 08). Interceptar no es prevenir que exista el heading. |

Lectura: las TTPs 01–05 de Sachiel no desaparecen con un parche. Los preventivos cambian **cuánto teatro hay antes de la mitigación útil** y **si el deploy llega con sync**. Un playbook que liste estas TTPs y ponga “subirse al Eva” en la columna PREVENIBLE está mal.

---

## Higiene de primer contacto

Siete viñetas. Sirven para Sachiel y para un first-seen real. Sin robot.

1. **Nombra la clase, no el tamaño.** Un blob enorme no es “el CVE de siempre”. Si no está en el catálogo, es unknown — abre el playbook de unknown, no el de DDoS ni el de tanque.
2. **No escales el control que ya falló.** Segundo, tercer, décimo golpe del mismo tipo es ruido y le enseña tu techo al atacante.
3. **El wipe no cierra el ticket.** Restore, reimage, “apagamos el server”: verifica persistencia raíz (firmware, identidad, implant). El silencio post-wipe es ceguera hasta que un sensor vuelva a ver *o* juréis el core.
4. **Assume mutación si sobrevivió a tu mejor golpe.** El segundo perfil no es el IOC del primero. Recalcula.
5. **El on-call se ensaya antes.** Quien sienta al teclado en el incidente grave ya tuvo game-day. Convocar talento nuevo el día D es un anti-patrón de staffing, no un milagro.
6. **El backup tiene que poder coger el teclado hoy.** Un nombre en el org-chart con baja, sin hardware, o sin sync, no es failover.
7. **Alertar no es mitigar.** Un SIEM que acierta el nombre sin operador, sin doctrina de kill y sin mayoría para break-glass es un dashboard. El preventivo es la preparación detrás de la alerta, no la alerta.

Eso es higiene. El árbol de qué hacer cuando ya está andando hacia el geofront es el playbook de la sección 08.
