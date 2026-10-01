# Anatomía: Shadow Graph, Multi-Principal y Silencio

## Partes y Funciones de Seguridad

| Parte de la Amenaza/Defensa | Qué Parece | Qué Hace | Analogía de Seguridad (SRE/Sec) | Símbolo Ruby |
| :--- | :--- | :--- | :--- | :--- |
| **Shadow Graph** | El "quién habla con quién" real (fuera del Org Chart). | Modifica la topología de la red humana permitiendo el flujo de secretos y *bypasses*. | Topología descubierta (Ping sweeps / Netstat) vs Topología documentada. | `ShadowGraph` |
| **Liaison (Kaji)** | Inspector / Funcionario con labia. | Enruta información entre entidades con intereses cruzados sin declarar la ruta. | Tercero (Vendor/Auditor) con credenciales excesivas en múltiples *tenants*. | `Liaison` / `Kaji` |
| **Multi-Principal** | Kaji reporta a Gendo y a Seele. | Sirve a `principals >= 2`, rompiendo el principio de un solo origen de autoridad. | Conflicto de Segregación de Deberes (SoD). | `principals` |
| **Conflict of Interest** | Gendo - Ritsuko - MAGI (Naoko). | El operador del Control Plane tiene una relación *off-band* con el Director. | Admin de BBDD teniendo un negocio con el CEO saltando Contraloría. | `ConflictOfInterest`|
| **Silence / Missing Log**| Lo que no se dicen. | Oculta la traza de los bordes no autorizados. | Evasión de auditoría, deshabilitar `CloudTrail` temporalmente. | `Silence` / `missing_log`|

## El Grafo Oficial vs Sombra
El organigrama (`OrgChart`) es un subconjunto estricto del `ShadowGraph`. 
*   Oficial: `Gendo -> Misato -> Shinji`
*   Sombra: `Gendo <-> Ritsuko`, `Kaji <-> Misato`, `Kaji <-> Shinji` (Off-band onboarding).

## Fronteras Cruciales (Lo que NO ES)
*   **No es un Ángel:** `Kaji.is_a?(Angel) == false`. Leliel no existe aquí.
*   **MAGI no está Infectada:** El COI es administrativo, no a nivel de bytes como Ireul (Ep 13). MAGI está operando "correctamente", pero su administradora tiene un sesgo de *trust*.
*   **No es un Rewrite:** Al igual que en el Ep 14, mapear este grafo no borra el catálogo de incidentes, solo añade una capa extra de telemetría (humana).
