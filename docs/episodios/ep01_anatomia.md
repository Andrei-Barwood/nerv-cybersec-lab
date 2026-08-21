# Ep 01 — Anatomía: cuerpo, máscara, AT Field, core

Episodio: 01 · *Angel Attack* · Sachiel
Alcance: modelo de partes → función de seguridad → símbolo Ruby (nombre solamente). Sin clases, sin mutación post-N².

Cada parte enseña un control. Ninguna es adorno. **AT Field y Core no son sinónimos.**

---

## Tabla

| Parte | Qué parece | Qué hace | Analogía de seguridad | Símbolo Ruby |
|---|---|---|---|---|
| **Cuerpo** | Silueta bípeda enorme, carne/caparazón, brazos largos | Payload que se acerca al geofront. Recibe el fuego. Sigue andando. | Proceso visible: el malware que se ve en RAM / el host que camina hacia el activo. Matar el proceso no borra la imagen. | `Nerv::Angels::Sachiel` (el incidente). `#approach` hacia el activo. Impacto no-core → `#regenerate!` (cuerpo vuelve; core intacto). |
| **Máscara / cráneo** | Careta de hueso, pico de ave, órbitas vacías | Superficie que confunde. Atrae la puntería. **No es la vulnerabilidad.** | Decoy / cara falsa en el perímetro: el analista dispara al banner, al PID ruidoso, al “rostro” del binario. El core no está ahí. | `Sachiel#mask`. Blanco inválido: un `ConventionalAttack` a la máscara es no-evento. No hay `#destroy_mask` útil. |
| **AT Field** | En ep 01 casi no se “ve”: se infiere porque el fuego no importa | Aísla. Las armas que no son el core **rebotan** o no cuentan. Es el perímetro que el atacante trae consigo. | El host llega con su propia red aislada: firewall de bolsillo, air-gap ofensivo. Tus paquetes mueren en el borde que *él* posee. | `Sachiel#at_field` → `Nerv::AtField`. `#rebound(attack)` / `#blocks?`. Estado: `#lowered?`, `#penetrated?`. |
| **Core** | En ep 01 se intuye más de lo que se ve: “algo más hay que romper” | Persistencia raíz. **Condición de kill.** Si no lo tocas, el incidente no termina. | Firmware / imagen / rootkit: la fuente que relanza el proceso. Wipe del disco visible sin tocar el firmware = teatro. | `Sachiel#core` → `Nerv::Core`. `#intact?` / `#destroyed?`. Solo `CoreStrike` (AT Field bajado o penetrado) lo destruye. |
| **Firma del conjunto** | Pattern Blue: no es una pieza, es el nombre de la clase | Declara “esto no es convencional”. Detección, no anatomía interna. | Firma de malware / regla de SIEM sobre el objeto entero. | `Sachiel#pattern_blue?` → `true` si la clase es ángel. Evento futuro: `siem.pattern_blue`. |

**Inventario de nombres (copiar en sección 10; no inventar otro mapa):**

- Clases (aún no escribirlas): `Nerv::Angel`, `Nerv::Angels::Sachiel`, `Nerv::AtField`, `Nerv::Core`, `Nerv::Attacks::ConventionalAttack`, `Nerv::Attacks::CoreStrike`
- Lecturas: `#pattern_blue?`, `#at_field`, `#core`, `#mask`, `AtField#blocks?`, `AtField#lowered?`, `AtField#penetrated?`, `Core#intact?`, `Core#destroyed?`
- Mutación de estado: `AtField#rebound(attack)`, `Sachiel#regenerate!` (cuerpo; core intacto), `Sachiel#approach`
- Kill: `CoreStrike` contra `core` **solo si** `at_field.lowered? || at_field.penetrated?`

`#mutate!` **no pertenece a esta anatomía.** Es TTP post-wipe (sección 04). El cuerpo del 01, antes de la N², no estrena armas nuevas: camina, aísla, persiste.

El fluido de la aparición (sección 02) no es parte ni clase: es evidencia cosmética (`impact.fluid_observed` ≠ `core.destroyed?`).

---

## AT Field

Definición operativa para este repo: **el atacante trae su propia red aislada.**

No es un escudo de videojuego ni un sinónimo de “está vivo”. Es una capa de aislamiento que Sachiel *posee* y despliega alrededor de sí. El defensor cree estar en el mismo perímetro (misma ciudad, misma línea de fuego, mismos paquetes). No lo está. `ConventionalAttack` llega al borde que el ángel controla y `AtField#rebound` lo devuelve: el impacto es ruido, no estado. El cuerpo puede mostrar fluido; el core no cambia.

En analogía de red: un host que entra a tu VLAN cargando su propio firewall y su propio DNS. Escaneas, disparas exploits de libro, ves “actividad”. Nada alcanza el proceso que importa. Escalar el mismo paquete (más calibre, más CVE del mismo tipo) sigue muriendo en *su* borde.

En Sachiel, el contrato del laboratorio es más duro que un rebote de artillería: el AT Field no solo ignora lo convencional; deja el core intacto incluso ante un wipe pesado. El relato de ese wipe es la sección 04. Aquí basta la regla: **si el ataque no es `CoreStrike` con campo bajado o penetrado, el AT Field hace que no cuente.**

Bajar o penetrar el campo es un estado (`#lowered?`, `#penetrated?`), no un adorno visual. En el ep 01 ese estado **no se alcanza**. El Eva se despliega; el operador no tiene sync para forzar la capa. El campo sigue del lado del atacante.

AT Field ≠ Core. El campo es el aislamiento. El core es lo que el aislamiento protege. Romper uno no es romper el otro, pero sin tocar el primero el segundo no es alcanzable.

---

## Core

Definición operativa: **persistencia raíz. Condición de kill.**

El cuerpo es el proceso. El core es la imagen que puede volver a lanzar el proceso. Golpeas el cuerpo y, si el core sigue `#intact?`, `#regenerate!` es el resultado honesto: el incidente no cerró, solo se apagó la ventana. En firmware: reimage del disco, el implant en SPI sigue. En cuenta cloud: matas la sesión, queda la clave de raíz. En malware: kill del PID, el servicio se respawnea.

`Core#destroyed? == true` es el único “ángel contenido” que el lab va a reconocer más adelante. El vector que puede ponerlo en true se llama `CoreStrike`, y solo aplica con AT Field `#lowered?` o `#penetrated?`. Cualquier otro golpe —máscara, flanco, artillería, teatro— deja `#intact?`.

**En el episodio 01 esto es hipótesis de NERV, no playbook cerrado.** Se intuye porque el cuerpo no cae y el fluido no decide. Nadie tiene aún una doctrina publicada de “apunta al core”. Anotarla aquí como regla de lab no significa que los personajes la ejecuten bien. El 01 termina con el core intacto. Un test futuro que dé por contenido a Sachiel en este corte está mintiendo.

---

## Qué es observable en ep 01 vs qué NERV aprenderá después

| En el 01 se ve / se infiere | Lo que NERV todavía no tiene como doctrina |
|---|---|
| Cuerpo bípedo, máscara, marcha hacia el geofront | Que la máscara es decoy *de diseño*, no “cara de enemigo” |
| Fuego convencional inútil; fluido que no tumba | Que “herida visible” no entra en ningún KPI de contención |
| Algo aísla (el fuego no cuenta) | Cómo **bajar o penetrar** el AT Field de forma deliberada |
| Algo debe ser el verdadero blanco (hipótesis de core) | Playbook cerrado de `CoreStrike`; puntería al core como procedimiento |
| Pattern Blue dispara | Playbook maduro detrás de la alerta; operador en sync; backup sano |
| Eva-01 en superficie, Sachiel de pie | Contención. Eso no ocurre aquí. El 02 recoge el cuerpo del fallo; no lo adelantamos. |

Lo que este archivo **sí** fija para el implementador: nombres, quién rebota, quién es kill condition, quién es decoy. Lo que **no** fija: mutación de armas, berserk, MAGI infectados, ni “ya sabían apuntar al core”.

---

## Implicación: golpear el cuerpo no es contener

Si el lab trata el cuerpo como el incidente, el lab pierde de la misma manera que la ONU. El cuerpo es el payload que se ve. La máscara es donde se va la atención. El AT Field es por qué tus herramientas de libro no llegan. El core es lo único cuya destrucción cierra el caso.

Regla implementable, en una línea:

`ConventionalAttack` (cualquier parte, incluida la máscara) → AT Field rebota → core intacto → `#regenerate!` si hubo teatro de daño → Sachiel sigue.  
`CoreStrike` sin campo bajado/penetrado → igual: no cuenta.  
`CoreStrike` con `at_field.lowered? || at_field.penetrated?` → `core.destroyed?` → incidente contenido. **Esa rama no se toma en el ep 01.**

Golpear el cuerpo es un log. Contener es un estado del core.
