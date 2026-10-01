# Patrón: Fortaleza, Kill Zone y Taladro

## Escena Breve
Las puertas acorazadas sobre Tokyo-3 se abren. El Eva-01 se eleva hacia la superficie en la plataforma 704. Apenas la cabeza del mecha queda expuesta al cielo, un relámpago de energía masiva envuelve la unidad. La armadura del pecho se derrite, el líquido LCL hierve dentro del *entry plug*, y Shinji grita de agonía. Abajo, el taladro cilíndrico de Ramiel sigue girando, consumiendo una capa de blindaje de acero tras otra de forma lenta, rítmica y matemáticamente inevitable.

## Patrón: FORTALEZA_KILLZONE_DRILL
*   **Precondiciones:** La organización defensiva posee rutas de salida fijas, un Crown Jewel protegido bajo capas geográficas, y carece de armas efectivas de larga distancia (Over-The-Horizon).
*   **Síntoma:** El enemigo se posiciona físicamente sobre el objetivo sin buscar enfrentamiento móvil. Instaura una política estricta de *Zero Trust* hostil: dispara a todo lo que aparezca. Simultáneamente, instala un proceso lento que destruirá la defensa en horas contadas.
*   **Error de Reapropiación del Playbook:** El defensor asume que la respuesta a una alerta crítica siempre es desplegar al nodo principal en combate cercano, resultando en un *melt* inmediato del activo.

## Tabla de Métodos en el Episodio 05

| Método de Respuesta | Resultado Esperado | Justificación |
| :--- | :--- | :--- |
| `ConventionalAttack` | Falla | El AT Field máximo bloquea cinéticas estándar. |
| `N2Mine` | Falla | No logra penetrar la geometría, es mitigada 100%. |
| `PalletRifle` | Falla | El fuego rebota o es dropeado sin alcanzar el core. |
| `ProgressiveKnife` | Falla / Letal | Entrar en la Kill Zone para usarlo activa el `ParticleBeam` y evapora al operador. |
| `C2Sever` (Látigos) | No Aplica | Ramiel no es un nodo que dependa de C2; es la fortaleza. |
| `BerserkChannel` | Letal | Un nodo descontrolado corriendo hacia un rayo de partículas sigue muriendo fundido. |
| `CloseRangeSortie` | **eva_melted** | Un lanzamiento rutinario equivale a asomar la cabeza ante un francotirador. |
| **`Standoff (Yashima)`** | **Deuda Futura** | Aún no existe la capacidad. Es la única mitigación teórica. |

## El Reloj del Taladro
Esperar pasivamente no es una opción de seguridad ("Secure by Default"). El reloj del `drill_progress` avanza constantemente. Si NERV decide atrincherarse y no hacer nada, Ramiel gana por asedio volumétrico. "Esperar" equivale a perder el GeoFront.

## Analogías de Seguridad
1. **Red Air-Gapped bajo asedio local:** La red es inaccesible, pero un atacante instaló un *implant* físico (taladro) en el CPD que quemará los servidores en 10 horas.
2. **WAF hiperagresivo:** Un perímetro de denegación activa que banea y fríe (honeypot letal) cualquier IP de escáner en milisegundos.
3. **Low-and-Slow APT:** Un ataque de fuerza bruta muy lento contra el root/AD que no genera picos abruptos, pero que culminará en un compromiso total si no se erradica la fuente externa.

## Señal SIEM y Regla de Laboratorio
*   **Señal SIEM:** "Que el enemigo no camine hacia nosotros no significa que su ataque no esté avanzando".
*   **Regla de Lab:** Al finalizar el PlaybookEp05, el estado `Ramiel.alive` debe ser `true`, la Unidad 01 debe quedar inhabilitada (`incapacitated`), y el reloj `drill_progress` debe ser mayor a `0.0` y menor a `1.0`.
