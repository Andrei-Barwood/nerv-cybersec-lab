# Patrón: Infección del Control Plane

## Escena Breve
Gendo ordena encender el sistema de esterilización (Ozono). Ritsuko observa cómo el microorganismo muere... y dos segundos después muta, sobrevive y avanza más rápido (`signature_failed`). Asuka pregunta si deben sacar los Evas; Gendo la ignora porque aplastar una supercomputadora no resuelve la invasión. Ireul compromete a Melchior y Balthasar. El tablero central de NERV parpadea con la orden: "AUTODESTRUCCIÓN APROBADA. ESPERANDO CASPER". En un teclado físico de emergencia, Ritsuko y Maya Ibuki aíslan a Casper para que no vote, y envían un paquete de código a los cerebros comprometidos. Le dan a Ireul la orden de "evolucionar hasta el final". Ireul asimila el código, evoluciona hacia un ser perfecto que no necesita vivir en este universo, y muere (`dead_end`). El tablero se apaga.

## Patrón: CONTROL_PLANE_INFECTION
El enemigo no ataca el perímetro exterior; ataca el sistema que gobierna las defensas.
*   **Precondiciones:** Una conexión de red o canal físico no segmentado (Pribnow a MAGI) permite a un actor pequeño (micro) saltar directo al sistema de consenso (Quorum).
*   **Síntoma:** El sistema de votación (MAGI) ejecuta comandos legítimos de máxima prioridad (Autodestrucción) solicitados por un actor anómalo que ha tomado 2 de 3 llaves.
*   **Error de Playbook (Ceguera Cinética):** "Hay un ángel; láncenme en el Eva" (Pilotos).
*   **Error de Playbook (Firma de AV):** "Ponle cloro, ponle ozono, dispárale láser". Un malware polimórfico usa tus ataques estáticos como *training data* para mutar.

## Tabla de Métodos en el Episodio 13

| Método de Respuesta | Resultado Esperado | Justificación |
| :--- | :--- | :--- |
| `Eva Sortie (Fuerza)` | **FAIL** | Destruir MAGI con el Eva te deja sin MAGI, el mismo resultado que perder. |
| `Aplicar Firmas/Láser` | **FAIL (Alimenta a Ireul)** | Ireul adapta sus defensas; repites el ciclo pero él se hace inmune. |
| `Apagar / Reboot MAGI`| **FAIL** | El organismo biológico no se "desinstala" cortando la luz; sigue en el hardware. |
| `Jet Alone Password` | **FAIL** | Ireul no fue programado por un *Vendor* malicioso, fue programado por la naturaleza. |
| **`Casper Reverse-Hack`**| **SUCCESS (`contained_controlled`)** | Explotas la debilidad del ángel (su hambre de mutación) inyectando código desde un nodo aislado. |

## El Peligro del Reverse-Hack (Mitigación)
El laboratorio exige que la contención provenga del código inyectado a Ireul. Usar Casper como arma es peligrosísimo en un entorno real ("Hack-Back"): si el atacante se da cuenta, cifra o destruye a Casper antes del *commit*. Por eso `T-MAGI-02 CasperReverseHack` se considera una maniobra de *Last Resort*, no higiene preventiva.

## Analogías de Seguridad
1. **Domain Controller Hijack:** Un atacante toma 2 de tus 3 servidores AD. En lugar de quemarlos, usas el tercero (desconectado de internet) para empujar una *Group Policy* corrupta que rompe el *C2* del atacante y lo aísla de vuelta.
2. **Polimorfismo (Malware que Quema Firmas):** El antivirus de firmas estáticas es inútil frente a un binario que reescribe su propio Hash/Header cada 3 milisegundos tras chocar con una barrera.
3. **Byzantine Fault (Etcd / Consul):** En un clúster de Kubernetes, un atacante logra comprometer la mayoría de los nodos de `etcd` (El cerebro). Ahora, el clúster cree que la "verdad" es desplegar contenedores de criptominería.
