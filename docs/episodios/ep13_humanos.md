# Factor Humano: La IC de Código (Ritsuko Akagi)

## Dinámica Operativa vs Espectadores (Fichas Delta)

*   **Ritsuko Akagi (IC de Código):** En el Ep 07, Ritsuko jugó al saboteador físico para desacreditar a un Vendor. Aquí, ella es la comandante absoluta del Playbook. Sabe que las armas de fuego son peso muerto. Demuestra la resiliencia de la plataforma asumiendo el riesgo inmenso del *Casper Reverse-Hack* (inyectar código en caliente mientras el clúster es devorado). Representa al SRE/Incident Commander puramente lógico, lidiando con la partición "mujer" de MAGI (Naoko/Casper) no como drama familiar, sino como variable de arquitectura (sabe que Casper es el nodo más difícil de comprometer por diseño).
*   **Misato Katsuragi (IC Táctica Anulada):** Por primera vez, su genialidad geométrica y táctica (Ep 12) es cero. Observa en silencio. Aprende que no todos los P1 se resuelven mandando a los niños al frente.
*   **Shinji, Asuka, Rei (Espectadores):** `spectators: true`. Estrictamente marginados. En el SIEM humano, la incapacidad de actuar les genera ansiedad, pero si dieran un paso al frente (`eva_sortie: true`), estropearían la mitigación. El heroísmo aquí es saber quedarse quieto cuando el vector es de otra disciplina.
*   **Gendo y Fuyutsuki:** Mantienen el estoicismo, incluso frente a la cuenta regresiva del `self_destruct_armed`. Reflejan la confianza en el operador especializado (Ritsuko).

## Reglas y SIEM Humano
*   `ritsuko_at_console`: Confirma que la mitigación corre a cargo de la disciplina correcta (Cyber/Código) y no de la balística.
*   `eva_unused`: Métrica fundamental para la victoria de este lab. Cualquier intento de enviar Evas levanta `eva_sortie_misapplied` y falla el Playbook.
*   `naoko_partition_used`: Flag que representa el uso de la arquitectura asimétrica de MAGI (usar a Casper para aislar y empujar el reverse-hack). No se explora la biografía, solo la utilidad operativa de que el tercer nodo actúe distinto a los otros dos.
*   `spectators`: Los pilotos asisten pero no interactúan, no es el `freeze` traumático del Ep 01, es disciplina de roles.

## Fronteras con Jet Alone (Ep 07) y Bardiel (Ep 18)
*   **Jet Alone (Ep 07):** El enemigo allí era un competidor corporativo humano. Ritsuko sabía la clave desde el inicio. Ireul es un atacante real; Ritsuko está hackeando por su vida.
*   **Bardiel (Ep 18 - Deuda Futura):** Ireul parásita el Control Plane (MAGI). En el futuro, un ángel parasitará el Hardware Bélico (el Eva-03). Cuando el huésped cambie de una supercomputadora a un compañero piloto, la respuesta lógica y fría de este episodio fracasará emocionalmente.
