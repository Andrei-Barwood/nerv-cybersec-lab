# Patrón: Lo Nuestro No Se Inspecciona

## Escena Breve
Un transporte militar cruza el Pacífico llevando el cargamento más caro de NERV: la Unidad-03, fabricada en Massachusetts. Durante el paso por un frente de tormenta denso, los instrumentos registran fluctuaciones eléctricas anómalas (una nube roja). El operador del puente clasifica la alerta como "estática atmosférica" y la descarta. La unidad entra al hangar de Japón sin pasar por cuarentena biológica. Mientras tanto, en Tokio-3, Toji Suzuhara firma un contrato confidencial: pilotará el monstruo si NERV traslada a su hermana lesionada al hospital militar. Shinji Ikari no sabe nada del pacto, solo escucha rumores en la clase de que alguien fue seleccionado. Todo está listo para el encendido oficial.

## Patrón: TRUSTED_INTAKE
El adversario más efectivo es el que usa la burocracia de confianza del defensor. En lugar de perforar el firewall (Ireul) o hacer honeypots (Leliel), el atacante viaja latente dentro del hardware certificado por la propia empresa.
*   **Precondiciones:** Una transferencia de activos interna (sucursal a sucursal). Confianza organizativa ciega ("es de los nuestros").
*   **Síntoma Ignorado (Nube):** Un evento anómalo transitorio registrado en los logs perimetrales, pero inmediatamente cerrado como "falso positivo" o ruido de fondo (`cloud_ioc_ignored`).
*   **Error de Staffing (Palanca y Secreto):** Se recluta talento mediante coerción (la palanca familiar) y se aisla al resto del equipo operativo de la identidad del nuevo ingreso (Need-To-Know mal aplicado).

## Tabla de Métodos en el Episodio 17

| Método de Aprovisionamiento | Resultado Esperado | Justificación |
| :--- | :--- | :--- |
| `Inspección como Tercero` | *(No Ejecutado)* | Habría frenado a Bardiel en la aduana. NERV no lo hace. |
| `Skip-Audit por ser NERV` | **SUCIO (`trusted_intake_recorded`)** | Permite el ingreso del backdoor durmiente. |
| `Contraseña de Jet Alone` | **FAIL** | No aplica, no es un proveedor externo robótico. |
| `Combate Bardiel / Dummy Plug` | **FAIL (Rompe canon)** | Esto ocurre en el Episodio 18. El 17 no pelea. |
| `Ocultar Identidad a Shinji`| **SUCIO (`knows_fourth_child == false`)**| Es el camino canónico, plantando el terreno para la tragedia de comunicación. |

## Analogías de Seguridad
1. **Endpoint Corp-Owned sin EDR:** Entregas una laptop corporativa traída de otra oficina, asumiendo que está limpia. Alguien le enchufó un pendrive infectado en el aeropuerto y como es dominio corporativo, el IPS no la frenó.
2. **On-Call Coercitivo:** Obligar a un desarrollador a tomar la guardia 24/7 amenazando sus bonos de fin de año o su estatus migratorio.
3. **El Telemetry como Beacon:** Ignorar un `GET request` extraño a las 3 AM hacia una IP desconocida asumiendo que es "telemetría de actualización del sistema operativo".

## Fronteras
Este patrón difiere del **Episodio 07 (Jet Alone)** donde sabíamos que el activo era de un contratista dudoso. Difiere del **Episodio 13 (Ireul)** porque aquí el atacante no está en MAGI, está en hardware físico recién llegado. Difiere absolutamente del **Episodio 18 (Bardiel)**, que será la ejecución y detonación letal del código que estamos ingiriendo hoy.
