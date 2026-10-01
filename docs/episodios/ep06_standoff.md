# Patrón: Standoff Masivo

## Escena Breve
El primer rayo cruza la distancia en un parpadeo, pero se desvía en el último milímetro. Ramiel, detectando la firma energética, dispara inmediatamente de vuelta. El rayo de partículas baña la cima de la montaña. Si no fuera por el Eva-00 interponiendo el escudo, el incidente habría terminado ahí. El escudo se funde alarmantemente rápido. Shinji debe cargar, apuntar y disparar de nuevo mientras el compañero arde frente a él.

## Patrón: STANDOFF_MASIVO
*   **Precondiciones:** La Kill Zone del enemigo es absoluta. Acercarse no es una opción. Se requiere un canal de disparo externo (OOB) desde una zona segura.
*   **Coste:** Consumo total de los recursos operativos (`national_blackout`). La organización no puede hacer nada más mientras dura la operación.
*   **Fallo del Shot1 y Contra-fuego:** El adversario reacciona a la firma del exploit. El standoff no te hace invisible, solo te da distancia.
*   **Shot 2:** El éxito requiere persistencia bajo respuesta agresiva.

## Tabla de Métodos Actualizada (Ep 05 + Ep 06)

| Método de Respuesta | Resultado Esperado | Justificación |
| :--- | :--- | :--- |
| `CloseRangeSortie` | **FAIL (Melt)** | Entrar en Kill Zone. (Del Ep 05). |
| `Yashima (sin Grid)` | **FAIL (Rebota)** | Falta de poder de penetración. |
| `Yashima (sin Shield)` | **FAIL (Melt en origen)** | El contraataque destruye el nido del francotirador tras el `shot1`. |
| `Yashima (Shot 1)` | **Insuficiente** | Desvío geométrico del rayo. |
| **`Yashima (Shot 2 + Grid + Shield)`** | **SUCCESS (`contained_controlled`)** | Perfora el core interno justo a tiempo. |

## Señal SIEM y Regla de Laboratorio
*   **Señal SIEM:** "El apagón nacional no es la victoria; es el precio que se paga para intentar jugar."
*   **Regla de Lab:** Ramiel solo morirá tras invocar `fire_second!` mientras `national_power` es verdadero, `shield_up` es verdadero (aunque esté degradándose), y el input humano está presente.
