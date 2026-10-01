# Anatomía: Ingesta de Confianza, Palancas y el Flag Dormido

## Partes y Funciones de Seguridad

| Parte de la Amenaza/Defensa | Qué Parece | Qué Hace | Analogía de Seguridad (SRE/Sec) | Símbolo Ruby |
| :--- | :--- | :--- | :--- | :--- |
| **Eva-03 (Trusted Intake)** | El nuevo gigante negro. | Incrementa el catálogo militar saltándose las auditorías de código duro. | Appliance Interno, Host Pre-Aprobado. | `:trusted_intake` |
| **Sister Leverage** | El pacto en el hospital. | Convierte un daño colateral pasado en una moneda de reclutamiento (fidelidad forzada). | Coerción de Empleado, Compromiso de On-call. | `sister_leverage.recorded` |
| **Need To Know Invertido**| Misato no le dice a Shinji. | Mantiene al resto del equipo ciego a la identidad del nuevo integrante, bajo el pretexto de "ahorrar estrés". | Siloing tóxico, Secretismo que mata IR. | `shinji.knows_fourth_child == false` |
| **Dormant Contaminant** | La nube rojiza en vuelo. | Se aloja dentro de la unidad de hardware y queda en estado `sealed` (sellado) a la espera de ser activado. | Supply Chain Backdoor pre-detonation, Logic Bomb durmiente. | `DormantContaminant` (`sealed?`) |
| **Matsushiro** | La base de experimentación. | Entorno de *staging* donde la caja se va a probar antes de sumarla al pool principal. | Off-site test lab, Staging VPC. | `theater = :matsushiro` |

## Detalles de Operación
*   **Eva-03 NO es Jet Alone:** Jet Alone era `is_a?(JetAlone)`. Eva-03 es una instancia de `Nerv::Eva`. Eso es lo que la hace doblemente peligrosa, y por lo cual no requiere que Ritsuko le adivine el password.
*   **Dormant Contaminant:** No es un objeto con el método `activate!`. En este episodio no hay combate con Bardiel. Es simplemente una variable de estado booleana o una clase sellada que certifica que el IoC pasó la aduana y está listo para estallar.

## Implicación Directa
"Si lo construimos nosotros (o la sucursal de EE.UU.), no necesita un análisis exhaustivo de malware." Esa presunción, `trusted_unit_flag`, es la vulnerabilidad crítica que explota el setup de este episodio.
