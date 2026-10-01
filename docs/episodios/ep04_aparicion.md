# Aparición de la Ausencia (INC-HEDGEHOG-001)

## Minuto Cero y First-Seen de Staffing

| Escena (Minuto Cero) | First-Seen de Seguridad (SIEM de Staffing) |
| :--- | :--- |
| La puerta del departamento de Misato permanece cerrada. Adentro, la cama no ha sido desecha. Una bolsa de viaje y el SDAT no están. Afuera llueve sobre la ciudad, y un andén de tren vacío espera a un chico que huye de su responsabilidad. | Ausencia de telemetría del operador. El SIEM no emite alertas de Pattern Blue, sino una falta crítica de disponibilidad humana (`operator_awol`). No hay reporte de guardia ni check-in. La capacidad instalada real ha caído a cero, independientemente del estado del hardware (Eva). |

## Lo que NERV cree que es
El mando corporativo (Gendo, Security) percibe este silencio como capricho infantil, cobardía o una falla de disciplina ("ya volverá o lo traeremos"). Asumen que el hardware sigue estando disponible y que el problema es una simple falla de obediencia.

## Lo que realmente es
Es un fallo de capacidad a nivel 0. Sin operador, la red de respuesta está inactiva y ciega. No hay amenaza atacando en este instante, pero NERV es absolutamente vulnerable. La ausencia es la amenaza interna.

## Spec Visual de la Ausencia
*   **Lluvia y soledad:** El ambiente es gris, constante lluvia que aísla los sonidos.
*   **SDAT (Reproductor de cintas):** Un dispositivo de aislamiento. Cancela el ruido exterior (púas) pero confina al usuario (frío).
*   **El Andén:** El perímetro final antes de que el nodo se desconecte de la red permanentemente (Egress point).
*   **Plug vacío:** El hardware multimillonario (Eva-01) en inactividad, inútil sin el human-in-the-loop.
*   **Cama vacía:** La confirmación doméstica de la ruptura de la red de confianza primaria.

## Spec Visual del Falso Perímetro
*   Kensuke Aida acampa en las montañas, solo, con camuflaje militar jugando a la supervivencia. Representa a la población civil fascinada con la tragedia militar, ignorante de la pesadilla real, emulando la guerra mientras el soldado real deserta.

## Firma SIEM
No hay locomoción enemiga. La firma principal es `capacity_actual_zero` detonada por un silencio total y no autorizado en el canal de control.

## Prompt de imagen (opcional, no ejecutar)
"Genera una imagen fotorrealista y melancólica de una estación de tren japonesa bajo una lluvia persistente. Un tren está detenido con las puertas abiertas. En el andén gris y solitario, un chico cabizbajo con una pequeña bolsa deportiva mira hacia el piso. La imagen debe transmitir profundo aislamiento y silencio. Ningún elemento de ciencia ficción masivo debe ser visible."
