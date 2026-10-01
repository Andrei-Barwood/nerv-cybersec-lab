# Anatomía: Seele, Catálogo, Pairing y no-Angel

## Partes y Funciones de Seguridad

| Parte de la Amenaza/Defensa | Qué Parece | Qué Hace | Analogía de Seguridad (SRE/Sec) | Símbolo Ruby |
| :--- | :--- | :--- | :--- | :--- |
| **Seele / Comité** | Monolitos negros auditando. | Evalúa el desempeño. Tiene un KPI secreto que choca con la supervivencia a corto plazo del equipo. | Junta Directiva (Board), Reguladores Externos. | `Seele` |
| **Playbook Catalog** | Base de datos (Tapiz). | Consolida los 11 incidentes previos, listando el método exitoso y por qué no usarlo siempre. | IR Runbook Library, Matriz MITRE ATT&CK local. | `PlaybookCatalog` |
| **KPI Conflict** | Discurso abstracto sobre "almas". | Seele repudia los *AT Fields* (Aislamiento), NERV los usa para no morir hoy. | Choque OKRs: "Zero Friction" (Biz) vs "Zero Trust" (Sec). | `seele.kpi != :containment`|
| **Pairing Test** | Shinji operando el Eva-00. | Experimento en ambiente de laboratorio validando si el perfil *Admin* funciona en otro Servidor. | *Disaster Recovery Test*, Cross-Training. | `PairingTest` |
| **Tabletop Runner** | Reunión formal (AAR). | El contenedor lógico de este episodio; recopila la auditoría sin disparar armas reales. | Post-Mortem, *Red Team / Purple Team review*. | `Tabletop` |

## El Schema del Catálogo (Catalog Entry)
Cada entrada del `PlaybookCatalog` NO es un resumen narrativo de los sentimientos del piloto. Es data dura para el SOC:
1.  **Incidente (Incident ID):** `INC-SACHIEL-001`, `INC-RAMIEL-001`, etc. (Lista de 11 obligatorios).
2.  **Teatro / Vector:** Físico, Magma, Consenso, Ácido, Orbital, etc.
3.  **Method That Won (El Playbook que salvó el día):** `Berserk/Melee`, `Positron Sniping`, `Casper Reverse-Hack`, etc.
4.  **Contraindicated as Default? (¿Debería ser la plantilla base?):** SIEMPRE `true`. 

## Fronteras Cruciales (Lo que NO ES)
*   **No es un Ángel:** `Seele.is_a?(Angel) == false`. `Tabletop.is_a?(Angel) == false`. No instancies entidades enemigas.
*   **Tejer no es Reescribir:** El catálogo `CITA` (referencia) los incidentes, **NUNCA** reescribe, borra o actualiza los archivos `ep01_*.md` a `ep13_*.md`. Reescribir la evidencia forense de un AAR previo anula este laboratorio (`:aar_failed`).
*   **No es Victoria Táctica:** La falla del `PairingTest` (Shinji volviéndose inestable) no es un `contained_controlled`. Es una anomalía de infraestructura (`eva00_anomaly`) que se documenta y se archiva.
