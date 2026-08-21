# Ep 01 — Laboratorio

Cómo correr Angel Attack en el lab. El binario narra el árbol, no un recap de fandom.

## Cómo correrlo

Desde la raíz del repo:

```
ruby -Ilib bin/episodio 01
```

Sin argumentos, corre el 01:

```
ruby -Ilib bin/episodio
```

## Exit codes

| Código | Significado | Este episodio |
|---|---|---|
| 0 | `:contained` — el core cayó | **No.** Reservado para episodios que sí cierran. |
| 1 | uso / episodio desconocido | `bin/episodio 99` |
| 2 | `:unresolved` — el incidente no cerró | **Sí.** Sachiel sigue de pie. |

Cero no significa “el comando funcionó”. Cero significa contenido. El 01 tiene que salir **2**.

Cabecera de `bin/episodio` documenta lo mismo.

## Qué ver en la traza

Una línea de banner, los ids de la sección 06, el outcome. Ejemplo:

```
NERV lab — ep 01 Angel Attack
siem.pattern_blue
siem.wipe_declared
siem.wipe_failed_regen
siem.eva_deployed
siem.operator_sync_low
outcome=unresolved
```

Un extraño tiene que reconocer el wipe fallido: `siem.wipe_declared` seguido de `siem.wipe_failed_regen`. Eso es la mina N². No hay `siem.contained`. No hay berserk.

## Tests

```
ruby -Ilib:test test/test_sachiel.rb test/test_playbook_ep01.rb test/test_magi.rb test/test_siem.rb
ruby -Ilib:test test/test_scenario_ep01.rb
```

El escenario termina `:unresolved`. Si `regenerate!` desapareciera, `test_n2_mine_triggers_regenerate` falla.

## Qué no hace

No resuelve el combate. No pide gems. No pinta un ASCII enorme. El handoff es el AAR (sección 12) y el episodio 02.
