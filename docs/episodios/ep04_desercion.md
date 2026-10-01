# Patrón: Deserción Post-Contención (AWOL)

## Escena Breve
La lluvia cae sobre la ciudad de Tokio-3. En el departamento de Misato, hay una bolsa que falta y un silencio absoluto. El incidente del día anterior no terminó con un desastre masivo, sino con un éxito a puerta cerrada, que no obstante rompió el cable final de resistencia del operador, quien ahora viaja en trenes circulares sin bajarse jamás.

## Patrón: DESERCION_POST_CONTENCION
*   **Precondiciones:** El operador cerró un P1 exitosamente (`contained_controlled`), pero experimentó pánico severo, agresiones colaterales (observadores) y **nadie le proporcionó soporte post-incidente** (`callback_absent`).
*   **Síntoma:** El nodo clave corta las comunicaciones, no asiste a debriefings y abandona físicamente el perímetro de respuesta. No hay atacante externo presente.
*   **Error Humano Común:** Considerar que el on-call es una máquina y que "victoria táctica = bienestar del operador". 
*   **Error de Liderazgo:** Creer que la fuga se soluciona mandando a "seguridad" corporativa a escoltarlo por la fuerza o amenazando con un recambio.

## Tabla de Respuestas a la Ausencia

| Vía de Acción | Estado resultante | ¿Por qué falla / tiene éxito? |
| :--- | :--- | :--- |
| `callback_absent` | **Precondición (Ep 03)** | Deja al operador aislado tras un éxito, propiciando el burnout. |
| `AWOL` | **Incidente Activo** | El operador interrumpe la disponibilidad para no sufrir más daños (`too_close`). |
| `replace_with_backup` | **staffing_failed** | Reemplazar al operador principal con un clon o backup herido ignora el fallo del sistema de retención corporativo. |
| `return_in_band` | **staffing_restored_fragile** | Misato lo intercepta sin forzarlo. El regreso es voluntario, hallando una distancia habitable (`tadaima`). |

## Por qué replace_with_backup es un fallo
Si NERV simplemente borra a Shinji del roster y pone a Rei a pilotar el Eva-01, la corporación técnicamente "sigue operativa", pero a nivel de confiabilidad (SRE) han perdido conocimiento tácito, han abusado de un nodo secundario no apto y el error sistémico de retención de talento persiste. Se registra como derrota del episodio.

## Analogías de Seguridad (SRE)
1. **Renuncia Silenciosa (Quiet Quitting) / Burnout Post-Mortem:** El on-call cierra su laptop tras resolver un incidente masivo y envía su carta de renuncia el lunes siguiente.
2. **Threat Interno no malicioso:** Pérdida de capacidades críticas por abandono voluntario de credenciales o abandono de funciones críticas.
3. **El reemplazo inútil:** Cambiar discos duros fallados sin revisar el servidor que los está quemando por exceso de calor (mala cultura organizacional).

## Señales SIEM y Regla de Laboratorio
*   **Señal SIEM:** "Que no haya un ángel (pattern blue) no significa que no haya un incidente".
*   **Regla de Lab:** En todo el PlaybookEp04, `pattern_blue` debe ser `false` y `playbook.angel` debe ser `nil`.
