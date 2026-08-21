# Ep 01 — After-action y handoff al episodio 02

Incidente: Angel Attack / Sachiel (3º). Outcome de lab: `:unresolved`.
Este AAR es el control preventivo de cara al 02. No cierra el core.

---

## Resumen del incidente (10 líneas)

1. Un blob bípedo aparece en el perímetro de Tokio-3 sin firma conocida (T-SACHIEL-01).
2. La ONU lo clasifica como enemigo y gasta `ConventionalAttack`: AT Field rebota, core intacto (`fail`).
3. NERV nombra Pattern Blue. Alertar no mitiga. No hay operador en sync ni backup sano.
4. Wipe N²: cráter, silencio, aplauso. `siem.wipe_declared` no es victoria.
5. Sachiel regenera y muta (T-SACHIEL-03, T-SACHIEL-04): brazos, ráfagas, lanza. El wipe enseñó el techo.
6. MAGI alcanza mayoría 2/3 para autorización extrema. Gendo empuja el peor plan B (`hidden_agenda`).
7. Rei no está (`backup_unavailable`). Misato despliega Eva-01 con Shinji convocado el mismo día.
8. `sync_rate` 0.25, freeze: la acción de combate no sale. `siem.operator_sync_low`.
9. Primer choque. Sachiel de pie, heading al geofront (T-SACHIEL-05). Eva en superficie.
10. Corte. `:unresolved`. No `:contained`. No `:berserk`. Transferir al 02.

---

## Controles que existían / que faltaban

**Existían (a medias):** sensores capaces de Pattern Blue; un Eva; un stub MAGI que puede votar; un IC (Misato); un wipe pesado; un roster con dos nombres en papel.

**Faltaban (y se notó):** doctrina de core publicada; operador en sync *antes* del first-seen; backup realmente disponible; ejercicios de wipe que midieran `#regenerate!` en vez del flash; perímetro que abortara calibre; autorización sin agenda oculta; higiene de first-seen (escala ≠ clase).

El Eva existía y no era preventivo. El SIEM acertó el nombre y el episodio sigue siendo un fallo de preparación.

---

## TTPs confirmadas

| id | Nombre | Confirmada en el 01 |
|---|---|---|
| `T-SACHIEL-01` | FirstSeenUnclassifiable | Sí. Minuto cero. |
| `T-SACHIEL-02` | PerimeterRebuff | Sí. ONU `fail`. |
| `T-SACHIEL-03` | WipeSurvival | Sí. `#regenerate!` post-N². |
| `T-SACHIEL-04` | AdaptiveMutation | Sí. `#mutate!` tras el wipe. |
| `T-SACHIEL-05` | HighValueApproach | Sí, **abierta**. Marcha al geofront / choque con Eva. Continúa en el 02. |

No hubo C2, ni exfil, ni compromiso de MAGI. No mezclar con el siguiente ángel.

---

## Deuda hacia ep 02

El 02 no es un ángel nuevo. Es la segunda mitad del mismo incidente.

- **Berserk / The Beast.** Eva-01 actúa sin voluntad del piloto. No es un paso del playbook del 01. Modelarlo como pérdida de control, no como victoria recomendable.
- **Aftermath.** Hospital, techo desconocido, ciudad herida, Eva recuperada. El blast radius es público.
- **Revelación.** Civiles felicitan al operador. Él no sabe por qué. NERV no controló el arma que “funcionó”.
- **Sync trauma / pain sync.** El operador sintió el daño. `sync_rate` bajo no se “cura” con el corte; el 02 tiene que medir la resaca, no resetear a piloto fresco.
- **Kill sucio.** Si Sachiel deja de persistir, no es porque el árbol del 01 alcanzara `CoreStrike` con campo bajado a propósito.

Prohibido olvidar: el 01 terminó `:unresolved` a propósito.

---

## Deuda hacia Ireul/MAGI

Nada que romper aún. Solo diseño:

- Tres unidades distintas (`melchior`, `balthasar`, `casper`), voto por unidad, `compromised?` por defecto false.
- `majority?` cuenta los votos **aunque** la unidad esté comprometida (hook: un ángel-software podrá sesgar el quórum sin cambiar la API).
- El 01 usa mayoría para identificar y autorizar. No hay infección. No endurecer MAGI como sistema inmune.

---

## Lección Seele

Cinco viñetas para un SOC que no ha visto la serie.

1. **El first-seen no es el incidente de siempre.** Si no está en el catálogo, no abras el playbook de tanques / de CVE conocido. Nombra la clase nueva.
2. **El wipe espectacular no cierra el ticket.** Restore, reimage, “apagamos el server”: verifica persistencia raíz. El silencio después de la explosión es ceguera, no paz.
3. **Si sobrevivió a tu mejor golpe, asume que volvió más capaz.** Recalcula el perfil. No pelees el minuto cero otra vez.
4. **Tener la unidad de respuesta no es prevención.** EDR, red team, “el senior”, el robot: si el on-call se congela y el backup está de baja, eso es mitigación frágil, no control previo.
5. **Alertar no es mitigar.** Un dashboard que acierta el nombre sin doctrina de kill, sin roster ensayado y sin autorización limpia es el episodio 01. El cierre honesto de ese turno es “unresolved”, no un verde fingido.

---

## Qué deberá contener el archivo del ep 02

No se escribe en este turno. Secciones sugeridas (el 02 las posee cuando se ejecute, no ahora):

1. Briefing: el 02 no es un ángel nuevo; es la segunda mitad de INC-SACHIEL-001.
2. Recreación: aparición del Beast (no de Sachiel).
3. Anatomía del berserk: el control tiene cuerpo propio.
4. Kill sucio: cómo deja de persistir Sachiel.
5. TTPs del defensor y blast radius.
6. Forense: el techo desconocido es el SIEM.
7. Preventivos: evitar *necesitar* al Beast.
8. Playbook: handoff → Beast → corte (berserk no recomendado).
9. Factor humano 2: trauma, felicidades, la ciudad.
10. Contrato Ruby: extender NERV, no reescribir el 01.
11. Laboratorio: correr el episodio 02.
12. AAR y handoff al 03 (Shamshel).
