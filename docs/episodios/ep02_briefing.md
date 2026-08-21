# Ep 02 — Briefing y contrato

Episodio: 02 · *The Beast* / Unfamiliar Ceiling · Sachiel (mismo 3º ángel)
Incidente: **INC-SACHIEL-001** (continuación; no hay ángel nuevo)
Clase de amenaza: contención no autorizada / defensor con agencia / blast radius / divulgación pública
Canon: TV 1995/96. El 01 cortó con Eva-01 en superficie y Sachiel en pie. Este capítulo abre en la resaca y reconstruye el pelea como forense.

---

## Contrato (mismo incidente, nueva clase de fallo)

Este episodio no es un segundo Pattern Blue. Es la **segunda mitad** de INC-SACHIEL-001. El lab hereda `:unresolved` y lo mueve a `:contained_uncontrolled`.

El susto pedagógico **ya no es Sachiel**. Sachiel sigue siendo el objeto que persiste hasta que alguien le aplasta el core. El fallo nuevo es **Eva-01**: la unidad de respuesta deja de ser máquina con operador y actúa. Contener el ángel no es lo mismo que haber dirigido la contención.

Hechos operativos:

1. MAGI autorizó el **deploy**, no el berserk. No hubo moción de “descartar al humano”.
2. El operador no consiente el canal de kill. Freeze y `sync_rate` bajo del 01 siguen vigentes; el cuerpo de la unidad no espera.
3. El ángel muere por un canal que el playbook del 01 no tenía: fuerza bruta sobre el AT Field + crush del core. No es `CoreStrike` entrenado.
4. La ciudad, el relato público y el cuerpo del piloto quedan dentro del incidente. Un failsafe que “salva” el estate destrozando media ciudad y saltándose al humano es **un segundo incidente**.

**Éxito de NERV en pantalla ≠ éxito del lab.** En pantalla hay aplausos y un ángel que ya no camina. En el lab, Shinji no ganó el primer combate. El Beast sí actuó. NERV no lo controló.

Códigos de salida (heredan el 01 y lo precisan):

| Exit | Outcome | Quién |
|---|---|---|
| **0** | `:contained_controlled` | No aplica a este episodio. Reservado a un cierre con operador, MAGI y playbook alineados. |
| **1** | `:contained_uncontrolled` | **Este episodio.** El ángel deja de persistir; el defensor abre otro caso. |
| **2** | `:unresolved` | **Ep 01.** Sachiel en pie, Eva desplegada, sin berserk. Los tests del 01 tienen que seguir saliendo así. |

(El `bin/episodio` del 01 usa hoy `1` para uso/desconocido. La sección 11 del 02 alinea el runner a esta tabla. No se toca el binario en 01–04.)

---

## Lo que este episodio enseña

- **IR no lineal.** Techo desconocido → convives con el daño → entonces armas el timeline. El capítulo *es* el proceso: el SOC entra al turno con el ticket ya “resolved” y la ciudad rota.
- **Contener ≠ haber dirigido.** Un kill que funciona puede ser un segundo incidente (failsafe opaco, SOAR sin humano, wiper interno).
- **El defensor emite firma.** El SIEM del 02 no re-emite Pattern Blue como first-seen. Lo nuevo es Eva-01 fuera de perfil.
- **Pain sync.** El humano es el sensor de integridad de la unidad. Acoplamiento peligroso: el operador se lesiona con el activo.
- **Agencia opaca.** La unidad tiene voluntad no inventariada. Existe como flag. No se explica la fuente.
- **Disclosure.** Civiles felicitan. El relato público contradice `operator_non_consent`.
- **Sachiel cierra persistencia por crush, no por N².** La regla Conventional/N2/CoreStrike del 01 sigue vigente; se añade un canal sucio.

---

## Lo que este episodio NO enseña (ep 03+, Dummy Plug, Yui, erizo)

Prohibido adelantar, implementar o “resolver de paso”:

- Shamshel, látigos, C2, explotación remota (ep 03).
- Dummy Plug formal (Bardiel/Zeruel, más tarde). No hay clase DummyPlug. No hay piloto falso que “explique” el Beast.
- La fuente nombrada de la agencia opaca. **No hay ficha de madre.** Agencia = flag, no lore de posesión.
- Tesis completa del erizo: la cohabitación se puede nombrar; el episodio 04 la posee.
- Ramiel, Yashima, rifle de positrones. Jet Alone.
- Berserk como victoria limpia o como paso recomendado de playbook.
- Rehacer la anatomía viva de Sachiel (ep 01 secciones 03–05). Aquí solo se le ve **dejar de persistir**.
- MAGI infectado (Ireul). El hallazgo del 02 es el contrario: **no hubo voto** de berserk.

El campo SIGUIENTE de la cabecera es el único adelanto lícito: ep 03, otro ángel, otra clase (C2).

---

## Definición de victoria sucia (lab)

El episodio 02 está *bien construido* cuando:

- Un extraño lee este briefing y no puede concluir que Shinji “ganó el primer combate”.
- INC-SACHIEL-001 pasa de `:unresolved` (tests del 01 intactos) a `:contained_uncontrolled` (tests del 02).
- El kill es `BerserkChannel` / crush, no `CoreStrike` con `sync_rate` útil.
- MAGI no autoriza el berserk. Se registra que autorizó el deploy.
- `operator_non_consent == true` al cierre. Las felicidades no cambian el `ContainmentResult`.
- El ángel queda `core.destroyed?`; `#regenerate!` ya no aplica.
- Exit **1**, nunca 0. 0 sería mentir que el cierre fue controlado.

Victoria sucia = el ángel muerto queda demostrado **y** el defensor queda como incidente abierto. No = el robot salvó Tokio-3.

---

## Definición de derrota (lab) — incluye "celebrar el Beast como plan"

El episodio (o una sección) está mal si:

- Se celebra el Beast como plan, playbook, o “así se mata un ángel”.
- El outcome es `:contained_controlled` o el runner sale 0.
- Se atribuye el kill a Shinji, a MAGI, o a un `CoreStrike` del 01.
- Los tests del 01 dejan de terminar `:unresolved`.
- MAGI “autoriza” el berserk por omisión (quórum inventado, voto fantasma).
- Se nombra la fuente de la agencia opaca, o se inventa Dummy Plug.
- Se reescriben `docs/episodios/ep01_*.md` o se reabre la ficha viva de Sachiel.
- Felicidades / disclosure se tratan como métrica de éxito.
- El blast radius (ciudad, piloto, relato) se omite para que el crush se vea limpio.

Derrota de NERV en pantalla (no controlaron el arma) es el resultado *correcto*. Derrota del lab es venderlo como doctrina.

---

## Vocabulario nuevo

| Término | En este repo |
|---|---|
| **berserk** | Modo de la unidad: se descarta el input del operador y el cuerpo actúa. Flag/método (`Eva#berserk!`), no un espíritu. No es estado-victoria. |
| **pain sync** | Acoplamiento de daño: el operador recibe la integridad de la unidad. Métrica + fallo. El humano ES el sensor. |
| **blast radius** | Lo que se rompe que **no** era el ángel: ciudad, unidad, operador, relato público. Se inventaría en la 05. |
| **disclosure** | Filtración a civiles. “Felicidades” es un evento de SIEM, no un cierre. |
| **operator_non_consent** | El canal de kill se ejecutó sin que el operador enviara la acción. Compatible con freeze del 01. Evento `siem.operator_non_consent`. |
| **contained_uncontrolled** | El core del ángel está destruido **y** la contención no fue dirigida. Exit 1. Ángeles-muerto + incidente-defensor-abierto. |
| **failsafe opaco** | Mecanismo que dispara solo, no está en el playbook, y “funciona”. Analogía del Beast. Funcionar no lo vuelve control. |
| **opaque_agency** | Hay una voluntad en la unidad. Existe. No se explica. Flag, no personaje. |
| **operator_input_discarded** | El comando del piloto no entra al actuador. Distinto de freeze (no envía) y de sync bajo (envía y no basta): aquí el cuerpo **ignora**. |
| **BerserkChannel** | Canal de kill del 02. Rompe AT Field por fuerza y aplasta el core. No es `CoreStrike`. |
| **CoreCrush** | El gesto cinético (core en el puño). Efecto: `core.destroy!`. No doctrina de puntería. |

Se heredan sin redefinir: Pattern Blue, AT Field, Core, N², Eva, MAGI, playbook, `sync_rate`, freeze (ep 01).

---

## Relación con ep 01 (qué se reusa, qué se prohíbe reescribir)

**Se reusa (ley):**
- Anatomía y TTPs de Sachiel (`T-SACHIEL-01`…`05`). El 02 las cierra o las corta; no las rebautiza.
- Regla de ataques: `ConventionalAttack` y `N2Mine` no-eventos; `CoreStrike` mata solo con campo bajado/penetrado **y** operador capaz. En el 01 eso no ocurre.
- `PlaybookEp01` → `:unresolved`. Eventos `siem.pattern_blue`, `wipe_declared`, `wipe_failed_regen`, `eva_deployed`, `operator_sync_low`.
- MAGI 2/3 para **deploy**. Eva-01 desplegada, Shinji `sync_rate` 0.25, freeze, `backup_unavailable`, `hidden_agenda`.
- Clases: `Nerv::Angel`, `Nerv::Angels::Sachiel`, `Nerv::AtField`, `Nerv::Core`, `Nerv::Eva`, `Nerv::Magi`, `Nerv::SIEM`.

**Se prohíbe reescribir:**
- `docs/episodios/ep01_*.md`.
- Tests del 01 para que “ya gane”.
- AT Field y Core como tipos: el Beast los **usa**; no se reinventan.
- Ficha viva de Sachiel (máscara, marcha, fluido). Aquí solo el estado terminal.
- Convertir el Eva en preventivo. Sigue siendo mitigación, y en el 02 ni siquiera es mitigación dirigida.

El 02 **extiende** NERV (sección 10). No sustituye el contrato del 01.

---

## Lista de las 12 secciones y su entregable de una línea

| # | Sección | Entregable |
|---|---|---|
| 01 | Briefing y contrato | `docs/episodios/ep02_briefing.md` — este archivo: mismo incidente, exit 1, Shinji no ganó. |
| 02 | Aparición del Beast | `docs/episodios/ep02_aparicion.md` — techo desconocido, spec visual Beast/hex-shatter/crush, firma del defensor. |
| 03 | Anatomía del berserk | `docs/episodios/ep02_anatomia_beast.md` — partes Eva normal vs Beast; pain_sync, opaque_agency; nombres Ruby. |
| 04 | Kill sucio | `docs/episodios/ep02_kill.md` — `CONTENCION_NO_AUTORIZADA`; BerserkChannel vs CoreStrike; Sachiel deja de persistir. |
| 05 | TTPs del defensor / blast radius | `docs/episodios/ep02_ttps.md` — ids `T-EVA01-0x`; collateral ≠ disclosure. |
| 06 | Forense / techo = SIEM | `docs/episodios/ep02_deteccion.md` — timeline vivido vs causal; ids `siem.eva_berserk`…; MAGI no votó berserk. |
| 07 | Preventivos | `docs/episodios/ep02_prevencion.md` — evitar *necesitar* al Beast. |
| 08 | Playbook | `docs/episodios/ep02_playbook.md` — handoff → Beast → corte; berserk no recomendado. |
| 09 | Factor humano 2 | `docs/episodios/ep02_humanos.md` — trauma, felicidades, la ciudad. |
| 10 | Contrato Ruby | `lib/nerv/eva/berserk.rb` + extensión mínima; tests del 01 siguen unresolved. |
| 11 | Laboratorio | `bin/episodio 02` — traza forense, exit 1. |
| 12 | After-action | `docs/episodios/ep02_aar.md` — handoff al 03 (Shamshel). |
