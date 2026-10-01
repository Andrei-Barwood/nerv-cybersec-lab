# Anatomía de Shamshel (INC-SHAMSHEL-001)

## Tabla de Partes

| Parte | Qué Parece | Qué Hace | Analogía de Seguridad | Símbolo Ruby |
| :--- | :--- | :--- | :--- | :--- |
| **Cuerpo / Torso** | Un insecto acorazado anclado al suelo. | Sirve como punto de despliegue y soporte vital para los látigos. | Implant base, servidor C2, beacon. | `body` |
| **Látigos (Tentáculos)** | Látigos de energía rosa, larguísimos y flexibles. | Cortan a distancia; atacan y defienden sin mover el cuerpo central. | Canales de Comando y Control (C2), RCE remoto, reverse shell. | `whips` |
| **Núcleo (Core)** | Esfera roja brillante en la base del abdomen. | Punto de falla crítica; su destrucción detiene la amenaza. | Proceso padre, base de datos en texto plano. | `core` |

## El Látigo como C2
En la doctrina NERV, un canal C2 (Command and Control) es el medio por el cual un atacante ejerce daño o manipulación a distancia sin exponer inmediatamente su proceso central. Los látigos de Shamshel son físicamente un C2: el daño (corte de edificios) ocurre lejos de la raíz (el torso). Tratar al látigo como un simple "brazo" es un error táctico; es un enlace de datos destructivo.

## Por qué el core visible no autoriza un rush
A diferencia de Sachiel, el core de Shamshel está expuesto visualmente desde el inicio. Sin embargo, su vulnerabilidad es una trampa. Acercarse a intentar un `CoreStrike` sin haber cortado (`sever_c2!`) los látigos primero, implica navegar por el radio de alcance del C2 activo, lo que invariablemente terminaría en la destrucción de la unidad Eva o del piloto.

## Qué NO es Shamshel
Esta amenaza no se basa en el patrón de **Persistencia Post-Wipe** del primer incidente. Shamshel no requiere el uso de bombas N² ni basa su amenaza en regenerarse a partir de tejido. Los métodos `regenerate!` y `mutate!` utilizados por Sachiel no son el centro de este incidente.

## Implicación Táctica
Golpear el cuerpo o el perímetro general con ataques ruidosos y expansivos (como el rifle de paletas) no afecta ni corta el canal. Si el canal sobrevive, el ataque continúa. La desconexión del canal (`sever_c2!`) requiere precisión de distancia cero.
