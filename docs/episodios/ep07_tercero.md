# Patrón: Tercero No Auditado (La Caja Mágica)

## Escena Breve
Tokita pulsa el botón de apagado de emergencia en su consola repetidas veces. La pantalla parpadea con "Access Denied". Jet Alone sigue marchando, aplastando vehículos y acercándose a una zona densamente poblada mientras las alarmas de presión del núcleo rugen. En la sala de observación de NERV, Ritsuko y Gendo se mantienen imperturbables, observando cómo su competidor se autodestruye públicamente tal y como lo habían orquestado.

## Patrón: TERCERO_NO_AUDITADO
Este patrón tiene dos capas inseparables en este incidente:

*   **Capa A (Vendor Fallido):** Comprar e integrar autonomía privilegiada (un mecha nuclear) sin exigir una auditoría profunda de su plano de control, y confiar en que el kill-switch remoto provisto por el vendor funcionará durante un fallo catastrófico en un entorno de demo.
*   **Capa B (Insider NERV):** El uso de tácticas de ataque (inyección de malware/sabotaje) por parte de la propia organización defensora contra un competidor, fingiendo que la falla es una "decisión del mercado" para preservar su monopolio.

## Errores de Clasificación
El instinto de un SOC acostumbrado a ángeles gigantes es asumir que todo gigante es un ángel. Tratar a Jet Alone como tal (y lanzar un Eva a destruirlo) detonaría el reactor.

## Tabla de Métodos en el Episodio 07

| Método de Respuesta | Resultado Esperado | Justificación |
| :--- | :--- | :--- |
| `Sortie_Eva` | **FAIL (Meltdown)** | Disparar o acuchillar un reactor en marcha = explosión nuclear civil. |
| `remote_shutdown!` | **FAIL (Virus)** | El plano de control remoto está comprometido por el sabotaje. |
| `enter_password!` (sin trepar) | **FAIL (Air-Gapped)** | No hay acceso remoto a la consola física; requiere Physical Access. |
| **`enter_password!` (trepando)** | **`third_party_stopped`** | La única mitigación segura es el *override* físico on-box. |
| **Ignorar `virus_origin`** | **AAR Incompleto** | Ocultar que NERV causó el incidente deslegitima la resolución. |

## Analogías de Seguridad
1. **EDR Autónomo Post-Incidente:** El SOC sufre por un ransomware (Yashima), la junta entra en pánico y compra un "EDR de IA Autónoma" (Jet Alone). En la prueba de concepto (Demo), el EDR bloquea todos los servidores de producción y el vendor no puede detenerlo.
2. **Backdoor de Competencia:** Una empresa de ciberseguridad inyecta un *wiper* en la red de pruebas de su principal competidor durante una demo a clientes para asegurar la retención de su propio contrato.
3. **Plano de Control Confiado:** Confiar ciegamente en que el panel web (Cloud) de un proveedor SaaS tercero funcionará durante un apagón local del nodo.

## Señales SIEM y Regla de Laboratorio
*   **Señal SIEM:** "Que no sea un Pattern Blue no significa que no sea un incidente P0."
*   **Regla de Lab:** Para salir con éxito (`third_party_stopped`), `JetAlone.angel.nil?` debe ser verdadero, `pattern_blue` debe estar apagado, la contraseña debe ingresarse, y el `virus_origin` debe registrarse como `:nerv_sabotage`.
