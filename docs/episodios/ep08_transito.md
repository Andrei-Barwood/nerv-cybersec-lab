# Patrón: Ataque en Tránsito (La Logística Asediada)

## Escena Breve
Un gigantesco ictioide devora a un acorazado de un solo bocado. La alerta se enciende a cientos de kilómetros del cuartel general de NERV en Tokio-3. Mientras las pantallas del Comando Central reportan un silencio mortal en la capital, Asuka Soryu despliega el Eva-02 sobre la cubierta del portaaviones en alta mar. No hay plan formal, no hay infraestructura de apoyo y el cable umbilical (batería) está en el agua, obligándolos a un combate inmersivo.

## Patrón: ATAQUE_EN_TRANSITO
Los asaltos no ocurren solo en el perímetro fortificado. Un atacante motivado impactará los activos valiosos mientras se mueven entre zonas de confianza.
*   **Precondiciones:** Activos pesados (Eva-02) transportados en un teatro no estandarizado (océano).
*   **Síntoma:** Señal de `pattern_blue` originada fuera del área de operaciones, pérdida de activos logísticos/flota de escolta.
*   **Error de Teatro:** Aplicar tácticas locales rígidas. El Positron Rifle (Ep 06) no funciona bajo el agua y no hay red eléctrica de un país. 
*   **Error de Playbook (Close Range):** El Ep 05 instruía que acercarse era suicidio (`CloseRangeContraindicated`). En el mar, y contra Gaghiel, acercarse es el ÚNICO camino; debes forzar el Gate (boca) del adversario.

## Tabla de Métodos en el Episodio 08

| Método de Respuesta | Resultado Esperado | Justificación |
| :--- | :--- | :--- |
| `Yashima (Standoff)` | **FAIL** | Capacidad no transferible al Océano Pacífico. |
| `Jet Alone Password` | **FAIL** | Gaghiel es un ángel biológico, no hay teclado. |
| `Beast Mode` | **FAIL (Uncontrolled)** | Se prohíbe perder a los operadores. |
| `Knife Lunge (Sin Mandíbula)`| **FAIL** | Coraza acuática resistente; core oculto. |
| `Deploy Eva-01 desde Tokio` | **FAIL** | Fuera de rango geográfico operativo en tiempo. |
| **`DualPlug + Jaw Open + FleetFire`** | **SUCCESS (`contained_controlled`)** | Combined arms. El Eva vulnera el gate y la flota dispara al Core. |

## Analogías de Seguridad
1. **Compromiso del Canal de Distribución (Supply Chain In-Transit):** Un adversario compromete un contenedor Docker oficial durante su tránsito por un pipeline inseguro, en lugar de intentar vulnerar el clúster de Kubernetes en producción final (Tokio-3).
2. **Ataque al Backup Físico:** En lugar de atacar el Datacenter endurecido, el atacante roba el camión logístico que transporta las cintas de respaldo a una bóveda fuera de sitio (Convoy).
3. **BGP Hijack:** Desviar el flujo de tráfico (tránsito) atacando rutas de red antes de que lleguen al destino fuertemente auditado.

## Señales SIEM y Fronteras
*   **Señal SIEM:** El silencio en la base no implica que la organización esté segura (`tokyo3_silent`).
*   **Frontera con Ep 07:** Jet Alone era un producto defectuoso autónomo (Vendor). Gaghiel ataca activamente un activo en movimiento que SÍ pertenece a NERV. Son incidentes intrínsecamente opuestos (Fraude civil vs Ataque Alienígena Asimétrico).
