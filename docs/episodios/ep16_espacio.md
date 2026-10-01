# Patrón: Entras al Sandbox del Atacante

## Escena Breve
El radar marca "Ángel 12". Misato autoriza a Shinji: "No tenemos datos, actúa con precaución". Shinji, frustrado y presionado por la memoria táctica, dispara su rifle y avanza agresivamente (*Rush*). La sombra se traga al Eva-01. La batería dura 5 minutos. En el mando táctico, Misato ve cómo el reloj vital del piloto baja de 16 horas. Los MAGI recomiendan arrojar la totalidad de las minas N² restantes al centro de la sombra, asumiendo la muerte aceptable del ocupante. En el último segundo, la esfera Zebra se desgarra desde adentro. El Eva-01 emerge sin órdenes ni consentimiento del piloto. El ángel muere, pero la doctrina de control y mando se hizo pedazos.

## Patrón: ESPACIO_DEL_ATACANTE
El adversario no irrumpe en tu perímetro para destruir un servidor; irrumpe para invitar a tu analista a conectarse a *su* perímetro, donde él controla la física y la telemetría.
*   **Precondiciones:** Falsa confianza. El defensor asume que todo *Pattern Blue* se combate igual (acercándose).
*   **Síntoma (Absorb):** Pérdida súbita e inexplicable de comunicación. El host desaparece de la red sin dejar cadáver.
*   **Error de Respuesta (IR-as-Entry):** Creer que pivotar a la infraestructura del atacante ("voy a hackear al hacker" o "voy a entrar a ver") es gratuito. Te conviertes en rehén (`occupant`).

## Tabla de Métodos en el Episodio 16

| Método de Respuesta | Resultado Esperado | Justificación |
| :--- | :--- | :--- |
| `Rush a la Esfera / Knife` | **FAIL (Absorb)** | Atacar un Honeypot. Activa el AT Invertido. |
| `Inyección Lógica (Casper)`| **FAIL** | Leliel no es un nodo de software. |
| `Intercept / Yashima` | **FAIL** | Sin target válido. |
| `N2_Mine mientras hay ocupante`| **FAIL (`operator_killed`)**| Bombardear el Data Center mientras tu compañero está dentro (Hostage). |
| **`Wait + Opaque Agency`**| **SUCIO (`:contained_uncontrolled`, 1)**| La tecnología militar falló; un "milagro" de hardware rescata al piloto, pero la victoria no la reclamas tú. |

## Analogías de Seguridad
1. **Malware Sandbox Invertido:** Tienes una alerta de C2 en la red. En vez de aislar el binario en tu propia VM, usas la laptop del Administrador de Dominio para hacer RDP directo a la IP rusa, exponiéndote. Te "tragaron".
2. **Hostage Playbook (Ransomware Extremo):** Un empleado está literalmente amenazado. El protocolo general dicta "desconectar internet", pero si desconectas internet matas al empleado (la mina N²). Hay que frenar la respuesta automática.
3. **El Honeypot Fotogénico:** El atacante deja un pendrive tirado en la recepción (Decoy Sphere) para que lo metas al puerto USB y descubras su payload (Sombra).
