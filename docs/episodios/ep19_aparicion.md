# Recreación de Aparición: El Overwhelm y el Ocupante Tragado

## Minuto Cero y First-Seen de Seguridad

| Escena (Minuto Cero) | First-Seen de Seguridad (IoC de Lab) |
| :--- | :--- |
| **El Desgarro del Geofront:** Sin previo aviso, el 14º Ángel (Zeruel), un humanoide negro y blanco con brazos de cintas ultra-afiladas, dispara un rayo en cruz que perfora 18 capas del blindaje de Tokio-3 de un solo golpe. Eva-02 (Asuka) sale a su encuentro disparando todo su arsenal; Zeruel le corta los brazos con las cintas y la decapita (perdiendo toda la armadura, `armor_stripped`). Eva-00 (Rei) irrumpe con una mina N² para un ataque suicida, pero Zeruel la resiste y la lanza a un lado. Gendo ordena que salga el Eva-01 con el Dummy Plug, pero el sistema rechaza la ejecución (`dummy_fail`). Tarde, Shinji sube al Eva-01. En el combate, el Eva pierde la energía y le cortan el brazo. Luego, despierta (`eva_berserk`). A cuatro patas como una bestia, destroza a Zeruel, expone su núcleo rojo (el motor S2) y se lo devora crudo (`s2_ingested`). Al finalizar, el traje de Shinji está vacío. El niño se ha fundido con el LCL del interior del Eva (`operator_introjected`). | **Overwhelm y Fail de Auto-Response:** A nivel de SOC, experimentamos un DDoS con un Zero-Day (Overwhelm) que destruyó las defensas perimetrales y las mitigaciones manuales (Firewalls de Asuka y Rey, `armor_stripped`, `n2_suicide_failed`). Cuando NERV confió en su SOAR corporativo para detener el ataque, la IA se trabó (`dummy_failed`). El analista humano se unió tarde (`late_sortie`) y fue forzado a utilizar un exploit local para absorber el motor del atacante (`s2_ingested`), consiguiendo la victoria táctica. Pero la sobrecarga del sistema causó que el proceso asimilara al propio usuario, disolviendo su identidad en la plataforma (`operator_introjected`, dejándonos con un `plug_empty`). |

## Contraste Inmediato
*   **Sachiel (Ep 01/02):** El Beast del 02 derrotó al ángel, pero no se lo comió ni se tragó a Shinji. Zeruel es el salto de violencia: aquí asimilamos al agresor (S2).
*   **Bardiel (Ep 18):** Bardiel tomó nuestro host por dentro y usamos el Dummy para purgarlo. Zeruel viene de fuera, y el Dummy que ayer funcionó hoy se clava sin arrancar.

## Spec Visual
*   **Zeruel:** Sólido, rostro huesudo. Sus cintas cortan el metal como si fuera papel (Overwhelm).
*   **Armor Stripped (Eva-02):** La unidad 02 se queda sin sus hombreras, brazos y cabeza. Queda expuesto su estado inoperativo, no como póster, sino como bandera de desamparo táctico.
*   **Dummy Fail:** Las pantallas rojas del Dummy Plug parpadean con errores. El Eva-01 rechaza moverse (el patrón de Rei no compila contra la voluntad dormida del Eva-01).
*   **S2 Ingest:** Eva-01, rugiendo sin armadura maxilar, muerde directamente el núcleo de Zeruel y mastica el órgano rojo para asimilarlo.
*   **Shinji y el Vacío:** Al finalizar el evento, Ritsuko y Misato ven la cabina; solo queda el traje LCL flotando, no hay cuerpo.
