# Ep 02 — Laboratorio

Cómo correr The Beast. El binario continúa INC-SACHIEL-001: hereda el unresolved del 01, dispara el Beast, sale 1.

## Cómo correrlo

```
ruby -Ilib bin/episodio 02
```

El 01 sigue existiendo y **sigue saliendo 2**:

```
ruby -Ilib bin/episodio 01
```

Sin argumentos, el runner sigue defaultando al 01 (exit 2), no al 02.

No hace falta dos procesos: el escenario del 02 reconstituye el unresolved internamente (`Scenarios::Ep01` y luego `PlaybookEp02` con `skip_ep01: true`). La traza marca el empalme.

## Exit codes

| Código | Outcome | Quién |
|---|---|---|
| 0 | `:contained_controlled` | No aplica. Reservado. |
| **1** | `:contained_uncontrolled` | **Ep 02.** |
| **2** | `:unresolved` | **Ep 01.** |
| 3 | uso / episodio desconocido | `bin/episodio 99` |

Cero no significa “el comando funcionó”. El 02 tiene que salir **1**.

## Qué ver en la traza

Banner, línea de splice, ids del 01 (wipe fallido) y del 02 (Beast / crush / bravo vs no-consent):

```
NERV lab — ep 02 The Beast
--- splice INC-SACHIEL-001 from ep 01 ---
siem.pattern_blue
siem.wipe_declared
siem.wipe_failed_regen
siem.eva_deployed
siem.operator_sync_low
siem.operator_pain_sync
siem.magi_berserk_unauthorized
siem.eva_berserk
siem.operator_non_consent
siem.at_field_shattered
siem.core_destroyed
siem.collateral_recorded
siem.public_disclosure
siem.congratulations_issued
outcome=contained_uncontrolled
```

Se tiene que leer el wipe fallido **y** el crush. `congratulations_issued` junto a `operator_non_consent` es el olor. No hay Shamshel. No hay `:contained_controlled`.

## Tests

```
ruby -Ilib:test test/test_sachiel.rb test/test_playbook_ep01.rb \
  test/test_berserk.rb test/test_playbook_ep02.rb \
  test/test_collateral.rb test/test_disclosure.rb

ruby -Ilib:test test/test_scenario_ep02.rb
```

Los tests del 01 siguen `:unresolved`. Si MAGI autoriza berserk por omisión, `test_deploy_majority_does_not_authorize_berserk` falla.
