# Patrón: El Infierno es por Diseño (ORIGEN_DEL_CONTROL)

## Escena Breve
No suena la alarma de ángel, pero Misato recibe el mensaje más doloroso en su buzón de voz. Mientras llora la muerte de Kaji, los archivos desclasificados revelan el origen de todo. Vemos a Fuyutsuki unirse a Gendo en 1999, sobrevivir al Second Impact y fundar Gehirn. Vemos a Yui Ikari, esposa de Gendo, ofrecerse al "Contact Experiment" y desaparecer en la Unidad-01, sembrando el "alma" en la máquina para proteger a Shinji en el futuro. Vemos a Naoko Akagi crear MAGI particionando su propio cerebro, y volverse loca de celos estrangulando al primer clon de Yui (Rei I) antes de suicidarse tirándose al vacío. El mismo día en que Naoko limpia el suelo con su sangre, Gehirn cambia su letrero a NERV, cerrando el expediente. En el presente, Kaji es asesinado por husmear en estos cimientos. Shinji escucha a Misato llorar desde su cuarto, demostrando que ver el archivo no lo hizo adulto, solo lo aisló más.

## Patrón: ORIGEN_DEL_CONTROL
Cuando un auditor intenta entender por qué el sistema actual de la empresa es tan tóxico (Evas que comen gente, MAGI que falla por emociones, pilotos tratados como basura) y descubre que no son "bugs" de los ángeles, sino "features" (especificaciones) fundacionales. El C-Level (Gendo/Seele) diseñó el ecosistema a base de sacrificios humanos (Yui, Naoko, Rei I, Kaji).
*   **Precondiciones:** El P0 global (Second Impact) que permitió que la moral corporativa desapareciera en favor de "la supervivencia".
*   **Síntoma:** Apertura de expedientes forenses y cierre repentino de canales de *whistleblowers* (Auditores).
*   **Error (El Rebrand Higiénico):** Asumir que "NERV es distinto de Gehirn" solo porque cambiaron el logo. Es la misma organización criminal con un departamento de RRHH nuevo.

## Tabla de Métodos en el Episodio 21

| Método de Respuesta | Resultado Esperado | Justificación |
| :--- | :--- | :--- |
| `Sortie/Combate (Arael)` | **FAIL (`origin_denied`)** | No hay ángel. Disparar defensas aquí es un error de diagnóstico. |
| `Ireul Hack (MAGI)` | **FAIL** | Nadie está hackeando MAGI; estamos leyendo el PRD de su autora. |
| `Yui Beast` | **FAIL** | Yui no es un arma aquí; es una investigadora disuelta en un Contact Experiment. |
| `Ignorar el Asesinato (Skip Kaji)` | **FAIL** | El encubrimiento de Seele requiere borrar al auditor. |
| **`Origin File + Liaison Terminated`** | **Victoria Histórica (Exit 15)**| Se documenta el diseño real del sistema, exponiendo la arquitectura tóxica y el costo humano de mantener el secreto. |

## Analogías de Seguridad
1. **IAM Modelado como el C-Level:** En vez de hacer roles limpios de RBAC (Role-Based Access Control), copias la personalidad y los miedos del CEO y los hardcodeas en la IA de votación. A veces aprueba presupuestos por culpa, otras deniega accesos por celos (MAGI-Naoko).
2. **Rebrand ≠ Remediation:** Una empresa sufre una brecha masiva (Gehirn / Naoko / Rei I). En lugar de auditar sus fallos, se cambian el nombre a "NERV" y lanzan una nota de prensa diciendo que el SOC ahora es seguro de fábrica.
3. **Whistleblower Terminated:** El ingeniero de QA (Kaji) descubre que el firewall principal contiene código espía que manda datos a Rusia (Seele). A la mañana siguiente, RRHH le quita el acceso y lo despiden fulminantemente en un pasillo, silenciándolo.

## Fronteras
*   **Episodio 13 (Ireul):** Allá MAGI falló por software externo. Aquí sabemos que MAGI es defectuosa por hardware emocional.
*   **Episodio 15 (Shadow Graph):** El grafo oscuro de Kaji encontró el 100% de la verdad; por eso lo matan en este episodio.
*   **Episodio 20 (Oral Stage):** Esa `maternal_presence` que salvó a Shinji en el Ep 20, ahora sabemos que es la Dra. Yui Ikari, que hizo exactamente lo mismo que Shinji pero eligió *nunca volver* (`Contact Experiment`).
