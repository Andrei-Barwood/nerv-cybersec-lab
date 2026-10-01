# Tutorial 01: Inicio Rápido (El CLI de NERV)

Este repositorio simula un Centro de Operaciones de Seguridad (SOC) utilizando la narrativa de la serie de TV *Neon Genesis Evangelion* (Episodios 01-26). Cada ángel o evento es un "incidente" que nuestro equipo debe mitigar.

## Ejecutando un Episodio

El núcleo interactivo del repositorio es el CLI `bin/episodio`. Este script actúa como un *runner* que evalúa un `Playbook` de seguridad contra la amenaza de un episodio específico y reporta la traza del Sistema de Gestión de Eventos e Información de Seguridad (SIEM).

Para ejecutar un episodio, utiliza el siguiente comando desde la raíz del proyecto:

```bash
ruby -Ilib bin/episodio <numero_episodio>
```

### Ejemplo: Episodio 01 (El Ataque de Sachiel)

```bash
ruby -Ilib bin/episodio 01
```

**Salida esperada:**
```text
NERV lab — ep 01 Angel Attack
siem.pattern_blue
siem.at_field_detected
siem.sortie_melee
siem.at_field_rebound
siem.sortie_sniper
siem.at_field_rebound
siem.n2_mine_drop
outcome=unresolved
```

**¿Qué significa esto?**
* Las líneas que empiezan con `siem.` son eventos registrados en nuestro log.
* Intentamos ataques físicos (`sortie_melee`) y de francotirador (`sortie_sniper`), pero el Escudo AT del atacante los rebotó (`at_field_rebound`).
* Lanzamos una mina N2 (`n2_mine_drop`), pero no resolvió el incidente.
* El `Exit Code` es `2`, mapeado a `:unresolved` (Incidente no resuelto).

### Ejemplo: Episodio 02 (La Bestia)

```bash
ruby -Ilib bin/episodio 02
```

**Salida esperada:**
```text
NERV lab — ep 02 The Beast
--- splice INC-SACHIEL-001 from ep 01 ---
siem.pattern_blue
siem.at_field_detected
siem.eva_deployed
siem.operator_lost_control
siem.eva_berserk
siem.at_field_penetrated
siem.core_destroyed
siem.congratulations_issued
outcome=contained_uncontrolled
```

**¿Qué significa esto?**
* El Eva entró en modo berserk (`eva_berserk`), penetró el escudo (`at_field_penetrated`) y destruyó el núcleo (`core_destroyed`).
* El gobierno/medios emitieron falsas felicitaciones (`congratulations_issued`).
* El `Exit Code` es `1` (`:contained_uncontrolled`). El atacante fue eliminado, pero NERV perdió el control de su propia infraestructura (el Eva) en el proceso.

## Explorando la Serie

Puedes correr cualquier episodio del `01` al `26`. Algunos episodios no tienen ángeles físicos y evalúan desastres lógicos o humanos (como apagones eléctricos, ataques de ransomware a MAGI, o crisis psicológicas de identidad).

**Intenta ejecutar:**
* `ruby -Ilib bin/episodio 11` (El día que Tokio-3 se detuvo)
* `ruby -Ilib bin/episodio 13` (El ataque de Ireul a MAGI)
* `ruby -Ilib bin/episodio 24` (El Insider Tabris)
* `ruby -Ilib bin/episodio 26` (El final del arco)
