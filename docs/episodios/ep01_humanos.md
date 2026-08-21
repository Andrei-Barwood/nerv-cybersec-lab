# Ep 01 — Factor humano (el control más frágil)

Episodio: 01 · *Angel Attack* · Sachiel
Las personas son controles y modos de fallo. No memes. Métricas implementables.

---

## Fichas

### Shinji — operador en frío
- **Función de control.** Único par de manos en Eva-01. La efectividad de la unidad es la suya: `sync_rate`, y si la acción de combate **sale**.
- **Modo de fallo.** Freeze: la acción no se envía en la ventana. Sync bajo: aunque enviara, no hay `CoreStrike` útil. Obediencia bajo chantaje emocional: está a bordo, no está listo.
- **Métrica.** `sync_rate` ≈ 0.25 (0.0–1.0). `action_frozen?` = true en el primer contacto del 01.
- **Analogía SOC.** Analista junior convocado al canal `#incident` el día D, primera vez en la consola de producción, se queda sin pulsar el playbook. No es “lloró”: es freeze + skill insuficiente.

### Rei — backup no disponible
- **Función de control.** Failover de operador. El secundario del roster.
- **Modo de fallo.** Lesionada. El nombre existe; el teclado no.
- **Métrica.** `backup_unavailable` = true. No hay `Operator` de reemplazo que pueda `deploy!`.
- **Analogía SOC.** Senior on-call de baja. El organigrama dice que hay secundario. PagerDuty no lo va a despertar.

### Gendo — autorización con agenda
- **Función de control.** Firmante humano de la autorización extrema (junto a MAGI). Puede bloquear o empujar el deploy.
- **Modo de fallo.** `hidden_agenda`: usa el incidente para su objetivo, no para el menor blast radius. Autoriza el peor plan B (el niño, ahora) y se ausenta del loop táctico.
- **Métrica.** `hidden_agenda` = true. No altera `Magi#majority?` por sí sola; corrompe *qué* se lleva a voto y quién queda como operador.
- **Analogía SOC.** Liderazgo que declara break-glass porque el incidente le conviene políticamente. No es “villano de anime”: es conflicto de interés en la autorización.

### Misato — incident commander
- **Función de control.** IC: orquesta el árbol de la 08 una vez NERV toma el mando. Sabe más que el operador, menos que el director. Tiene que lograr un `deploy!` con la gente que hay.
- **Modo de fallo.** Improvisa staffing (anti-patrón A-05). No puede fabricar sync. No puede curar al backup. Su fallo no es ignorancia del ángel: es IC sin roster sano.
- **Métrica.** Rol `:incident_commander`. No tiene `sync_rate` (no está en el Eva). Éxito de IC en el 01 = deploy ejecutado + abort honesto, no kill.
- **Analogía SOC.** IC que hereda un on-call vacío y un VP con agenda. El trabajo es hacer el peor deploy posible *sin mentir* que está contenido.

### ONU — actor externo
- **Función de control.** Perímetro. Primer respondedor con playbook de ejército.
- **Modo de fallo.** Clasifica mal (enemigo, no Pattern Blue). Escala calibre (A-02). Usa `N2Mine` como talismán. Aplauso post-cráter.
- **Métrica.** No es `Operator`. Sus acciones son `ConventionalAttack` y el trigger político de `N2Mine`. Resultados: `fail`, `regen`.
- **Analogía SOC.** Equipo de red/IT que trata un implant de firmware como malware de usuario y formatea. Dueños del wipe inútil.

---

## Métricas

Todas son estado de lab, no psicología.

| Métrica | Tipo | Rango / valor ep 01 | Efecto |
|---|---|---|---|
| `sync_rate` | Float | 0.0–1.0; Shinji **0.25** | Degrada la efectividad del Eva. **No** dispara berserk (eso es ep 02). Por debajo del umbral, `core_strike_possible? == false`. |
| `action_frozen?` | Boolean | true en el choque del 01 | Freeze = **acción no enviada** en la ventana. `attempt_core_strike` → `:freeze`; el ángel no recibe `CoreStrike`. Distinto de sync bajo: sync bajo podría enviar un golpe inútil; freeze no envía. |
| `backup_unavailable` | Boolean | true | Prohíbe failover a Rei. El árbol no tiene rama “despierta al secundario”. |
| `hidden_agenda` | Boolean | true (Gendo) | Corrompe la autorización: se vota el peor plan B. MAGI puede seguir en mayoría. |

**Umbral de sync (lab):** `Nerv::Eva::SYNC_THRESHOLD = 0.5`.  
`sync_rate < 0.5` → `siem.operator_sync_low` y no hay `CoreStrike`.  
El berserk no es un valor de `sync_rate`. No hay `sync_rate < 0` mágico. El 02 modelará otra cosa.

**Freeze, definición operativa:** si en la ventana del paso 8 el operador no envía comando, el lab registra freeze y trata el intento como no ocurrido. No es un timeout de red del ángel; es el control humano que no actuó.

---

## Tabla fallo humano → impacto en el árbol de la sección 08

| Fallo | Quién | Paso del runbook | Impacto |
|---|---|---|---|
| Clasificar como ejército | ONU | 1 | Rama `fail`; retrasa Pattern Blue |
| Wipe como victoria | ONU / política | 3 | `regen` + mutación; enseña el techo |
| `hidden_agenda` | Gendo | 4 | Se autoriza deploy con operador en frío, no un roster sano |
| `backup_unavailable` | Rei (estado) | 5 | Sin failover; un solo nombre |
| Staffing el día D | Misato (IC forzada) + Gendo | 5–6 | `deploy` con Shinji |
| `sync_rate` 0.25 | Shinji | 7 | `siem.operator_sync_low`; rama CoreStrike cerrada |
| `action_frozen?` | Shinji | 8 | `:freeze`; Sachiel no recibe kill; corte `unresolved` |
| IC sin mentir el cierre | Misato | 8 ABORT | Handoff al 02 en vez de `:contained` falso |

Ninguna fila es berserk. Si el árbol “se gana” por un humano que se rompe, el test está mal y el alcance también.

---

## Reglas de lab

Implementables. Citan el árbol de la 08.

1. **Si `sync_rate < Eva::SYNC_THRESHOLD`, el Eva no contiene.** `core_strike_possible?` es false. El playbook del 01 no emite `CoreStrike` efectivo. Core intacto.
2. **Si `action_frozen?`, la acción no se envía.** `attempt_core_strike` retorna `:freeze` y no llama `sachiel.receive(CoreStrike)`.
3. **Si `backup_unavailable`, no hay failover a Rei.** Un test que ponga a Rei en el Eva en el 01 está inventando roster.
4. **`hidden_agenda` no finge mayoría MAGI, y no la sustituye.** Dos de tres votos siguen haciendo falta. La agenda cambia el *plan* (quién sube), no el quórum.
5. **`PlaybookEp01#run` termina `:unresolved`.** Nunca `:berserk`. Nunca `:contained` por sync, freeze o “el piloto se esforzó”.
6. **Shinji es `Operator` con freeze y sync bajo**, no un string de lore. Gendo es `hidden_agenda`, no un comentario de villano.

---

## Nota ética breve

Este repo no glorifica mandar a un menor a un Eva. Lo nombra como **anti-patrón de staffing** (A-05 del doc de prevención): convocar al único nombre disponible el día D, con el backup caído y la autorización torcida, no es un rito de paso. Es un fallo de roster que el lab tiene que poder medir (`sync_rate`, `backup_unavailable`, `hidden_agenda`) y que el AAR tiene que poder condenar. El episodio 01, en pantalla, lo hace. El laboratorio no lo recomienda.
