# Recreación de Aparición: El Activo Nuevo y la Nube Omitida

## Minuto Cero y First-Seen de Seguridad

| Escena (Minuto Cero) | First-Seen de Seguridad (IoC de Lab) |
| :--- | :--- |
| **La Llegada:** No suena la alarma de Patrón Azul en el Geofront de Tokio-3. El Eva-03, pintado de negro y morado oscuro (una unidad puramente de combate), es transportado por vía aérea. Mientras cruza una formación de nubarrones oscuros, se ve un fenómeno eléctrico rojizo, que la escota clasifica como un frente de tormenta. El Eva llega a Matsushiro, el centro de pruebas secundario de Japón. Mientras tanto, en Tokio-3, la Directora Misato Katsuragi revisa los archivos escolares para nombrar al "Cuarto Niño". Elige a Toji Suzuhara (el bravucón del colegio) ofreciéndole a cambio el traslado médico premium para su hermana herida en la batalla de Sachiel. A Toji le ponen el traje, pero Shinji Ikari no es informado de la identidad de su nuevo compañero. | **Host Managed Nuevo + IoC Dormido Mal Clasificado:** NERV está ejecutando un aprovisionamiento (Onboarding). El `trusted_intake` confía ciegamente en la sucursal de EE.UU. La anomalía atmosférica en el trayecto (`cloud_ioc_ignored`) no se investiga porque el protocolo de aduana no requiere escaneo biológico profundo para activos "First-Party". Hemos cargado en la red un binario con un troyano durmiente de cadena de suministro sin que salte una sola alerta. A nivel humano, tenemos a un `fourth_child_selected` bajo coerción y a nuestro principal operador ciego (`occupant_unknown_to_peers`). |

## Contraste Inmediato
*   **Gaghiel (Ep 08):** Atacó directamente a la unidad 02 mientras viajaba en el barco. Fue un combate frontal.
*   **Jet Alone (Ep 07):** Un activo robótico que no confiábamos por ser de un *Third-Party vendor*.
*   **Eva-03 (Ep 17):** Esta es NUESTRA unidad. Su onboarding se agiliza por la confianza corporativa (`trusted_unit_flag`).

## Spec Visual
*   **Eva-03:** Negra, esbelta, de hombros anchos y mirada apagada. Apariencia letal pero inactiva, sujeta a grúas en un hangar exterior.
*   **Nube (IoC):** Una tormenta en la estratosfera con un relámpago rojizo que acaricia el fuselaje del transporte de la Unidad-03. NERV dice: "nada".
*   **Matsushiro:** Base de pruebas rodeada de bosques y lagos. Un *Off-site* donde la IA de MAGI no tiene control total.
*   **Toji y el Hospital:** Pasillos blancos, luz fluorescente. Toji viendo a su hermana en yesos y tubos; la cara tensa de aceptar un chantaje con sello corporativo.

## La Firma del SIEM
No hay firmas de combate. Veremos eventos burocráticos: `siem.eva03_intake`, `siem.cloud_ioc_ignored` y `siem.sister_leverage`.
