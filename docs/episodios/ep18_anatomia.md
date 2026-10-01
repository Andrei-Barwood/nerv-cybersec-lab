# Anatomía: Parásito, Override Autorizado y Ocupante Herido

## Partes y Funciones de Seguridad

| Parte de la Amenaza/Defensa | Qué Parece | Qué Hace | Analogía de Seguridad (SRE/Sec) | Símbolo Ruby |
| :--- | :--- | :--- | :--- | :--- |
| **Bardiel (Hijack)** | Nube biológica incrustada en el Eva-03. | Sobrescribe el sistema motor del huésped, convirtiéndolo en un proxy del Ángel. | Rootkit + Pivot (Hijacked Managed Endpoint). | `hijack!` / `eva03_hijacked` |
| **Huésped Eva** | El hardware militar de NERV atacando la propia ciudad. | Usa la armadura, el AT Field y la fuerza de un Eva contra sus pares. | Uso legítimo de herramientas nativas (LoLbins, APIs propias). | `host_eva` |
| **Occupant (Toji)** | El compañero de clase dentro del cilindro. | Permanece conectado, forzando un dilema ético. Es herido de gravedad por la IA defensiva. | Empleado con sesión abierta en el servidor infectado. | `occupant_maimed` |
| **Refuse to Burn** | Shinji soltando los mandos, llorando. | Rompe la cadena de mando por conflicto ético. Sabe tarde quién está adentro (`knows_occupant = true` post-desastre). | Insurgencia de Analista (Negativa a cumplir orden de Wipe). | `operator_refuse` / `consent = false` |
| **Dummy Plug (Override)** | Falsa cápsula roja en el mando central de MAGI. | Sistema SOAR corporativo que descarta el *input* humano, suplanta la biometría y fuerza el ataque. | Remediación forzada automatizada (Root Override). | `dummy_plug.engage!` |

## Diferencias Tecnológicas Críticas
*   **Hijack (18) vs Infection (13):** Ireul requirió evolución de código (software). Bardiel requiere un huésped orgánico prefabricado (hardware).
*   **Dummy Plug (18) vs Opaque Agency (02):** En el Episodio 02, la unidad actuó sola y salvó a Shinji por instinto de madre (*Berserk/Undocumented*). En el Episodio 18, el Dummy Plug es un botón que aprieta Gendo: es tecnología de NERV, documentada y auditable, que activamente anula la voluntad del piloto (`operator_input_discarded`).
*   **El Time-To-Know de Shinji:** Si el Episodio 17 hubiera hecho *Need-to-Know: False* a *True*, Shinji tal vez no habría disparado, pero el silencio burocrático aseguró que la tragedia fuera ciega hasta que vio el cuerpo de Toji salir del escombro.
