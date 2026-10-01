# Anatomía: Colonia, Evolución, Cerebros y Consenso

## Partes y Funciones de Seguridad

| Parte de la Amenaza/Defensa | Qué Parece | Qué Hace | Analogía de Seguridad (SRE/Sec) | Símbolo Ruby |
| :--- | :--- | :--- | :--- | :--- |
| **Ireul (Micro)** | Óxido / biomasa fractal en ductos. | Entra por una zona no auditada e inicia movimiento lateral hacia el Core. | Initial Access (Supply Chain o Sandbox escape) / Polimorfismo. | `Ireul` |
| **MAGI Brains (3)** | Melchior, Balthasar, Casper. | El cluster de toma de decisiones; $2/3$ definen la acción real (Consenso). | Nodos de `etcd`, `ZooKeeper` o Controladores de Dominio. | `magi.unit(name)` |
| **Owner / Infection** | Cerebros marcados en rojo. | El nodo responde al C2 de Ireul, no a Misato. Pierdes su voto. | Nodo comprometido (`Owned`), Token Hijack. | `owner`, `infect!` |
| **Majority Owner** | 2 de 3 votos robados. | Otorga a Ireul la capacidad de invocar `self_destruct` de NERV. | *Quorum Hijack*, Cluster Admin comprometido. | `majority_owner` |
| **Casper Reverse Hack** | Ritsuko inyectando código desde un nodo "sano". | Explota el mecanismo de evolución forzándolo a un límite matemático infranqueable. | *Kill Switch*, *Sinkholing*, Forzar un *Buffer Overflow* en el *malware*. | `reverse_hack_via_casper!` |
| **Dead-End** | Óxido gris inerte. | Ireul muere de sobredesarrollo estéril. | *Malware* esterilizado, *Crash* por *panic* no recuperable. | `dead_end?` |

## El Cluster MAGI (La Partición de Naoko)
Las MAGI fueron programadas con "3 aspectos" de su creadora (Naoko Akagi). Esto son **etiquetas de comportamiento**, no magia narrativa de fantasmas:
1.  **Melchior (La Científica):** Lógica pura. Cae primero ante la eficiencia de Ireul.
2.  **Balthasar (La Madre):** Protección. Cae segundo al verse abrumado.
3.  **Casper (La Mujer):** Impredecible / obstinada. Ritsuko aísla este cerebro, manteniéndolo `:nerv`, y lo usa como el *proxy* inyectable para el *Reverse-Hack*.

## Fronteras Cruciales (Lo que NO ES)

*   **No es Unpowered (Ep 11):** MAGI aquí funciona a altísima velocidad. El problema es *para quién* trabaja.
*   **No es Compute Impact (Ep 12):** En el 12 confiabas a ciegas en MAGI. Aquí, confiar en MAGI es detonar el botón de autodestrucción.
*   **No es un Eva Target:** ProgressiveKnife y AT Field Brake asumen una coordenada $x, y, z$ en el espacio físico. Ireul existe distribuido en memoria RAM y silicio. El método Eva#sortie es un anticuado `eva_sortie_misapplied`.
