# Patrón: Insider Invitado (La Puerta Que Nadie Cerró)

## Escena Breve
Un chico pálido sentado en los restos de una estatua tararea una melodía. Shinji, totalmente quebrado por la pérdida de Asuka (mente rota) y Rei (reemplazada por un clon vacío), se sienta con él. Kaworu, portando la credencial formal del "Quinto Elegido" aprobada por Seele, le dice a Shinji que lo aprecia ("I like you"). Más tarde, Kaworu simplemente baja por el pozo principal a Terminal Dogma, llevando consigo al Eva-02. Nadie lo detiene a tiempo porque no hay naves nodriza en el radar. Al llegar al núcleo (Dogma), Kaworu descubre que el gigante no es Adam (el cual Gendo tiene oculto), sino Lilith. Usando su libre albedrío, Kaworu aborta el impacto que borraría a la humanidad, porque se encariñó con ellos (con Shinji). Pero como es un Ángel, no puede coexistir y le pide a Shinji que lo aplaste. Tras un minuto de silencio eterno, la mano del Eva-01 se cierra.

## Patrón: INSIDER_INVITADO
Cuando el adversario no puede (o no quiere) romper las barreras físicas y criptográficas, obtiene una credencial legítima de la Alta Gerencia (Seele) y entra por la puerta principal.
*   **Precondiciones:** Una directiva alta autoriza un alta (`badge`), y el operador de primera línea está lo suficientemente aislado (`anhelo`) como para no hacer validación secundaria.
*   **Síntoma:** El sistema no emite alertas de intrusión hasta que el *Insider* ya está parado frente al servidor más crítico de la red (Dogma).
*   **Error (Delegar la Ejecución):** Tratar de resolver esto con el *Dummy Plug* (Ep 18) o esperar a que el *Insider* simplemente "no haga daño" porque es bueno. Incluso si detiene su payload (`abort_merge`), su persistencia en la red es un riesgo de impacto letal; tienes que revocarlo tú.

## Tabla de Métodos en el Episodio 24

| Método de Respuesta | Resultado Esperado | Justificación |
| :--- | :--- | :--- |
| `Dummy Plug / SOAR` | **FAIL** | No puedes delegar la responsabilidad moral de revocar a un amigo a un bot automático. |
| `Fusión (Armisael)` | **FAIL** | Tabris no se funde biológicamente, asume control de I/O directo (Eva-02). |
| `Instrumentality (Fire)`| **FAIL (Fuera de Scope)** | Kaworu frena antes de detonar. (Tercer Impacto se aborda en otro formato). |
| `No hacer nada` | **FAIL (Exit 2)** | Riesgo de Tercer Impacto; NERV destruido. |
| **`Shinji Crush + Abort`** | **Victoria Controlada (Exit 0)**| El atacante aborta, y el operador asume la culpa ejecutando la revocación final y manual. |

## Analogías de Seguridad
1. **El Contratista Favorito:** Un consultor con badge *Admin* pasa meses en Slack ayudando a todos. Nadie audita qué bases de datos lee, porque "es de confianza". Un día baja los datos de clientes, pero decide no venderlos; aun así, el equipo de SecOps tiene que borrar su cuenta.
2. **Autorización sin Autenticación:** Seele (Board) autorizó el badge. Pero NERV (Operaciones) nunca verificó si el humano (Kaworu) era quien decía ser (Ángel).
3. **Revocación Dolorosa:** Borrar las claves SSH de un ex-fundador que acaba de ser despedido en malos términos, y tener que ser tú quien apriete `Enter`.

## Fronteras
*   **Episodio 15 y 21 (Kaji):** Kaji era humano, robaba datos, lo mataron humanos. Tabris ES el 17º Ángel y lo mata un Eva.
*   **Episodio 18 (Bardiel):** A Toji lo aplastó una IA sorda (Dummy). A Kaworu lo aplasta un amigo que sufre por ello.
