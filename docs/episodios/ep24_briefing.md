# Briefing Episodio 24: El Insider que Debía Estar (INC-TABRIS-001)

## Contrato
El incidente INC-TABRIS-001 introduce al 17º y último Ángel de combate de la serie, Tabris (Kaworu Nagisa). A diferencia de todos los anteriores, este ángel no es un kaiju que ataca desde el cielo (Arael) o una hélice mutante (Armisael). Es un humanoide que ingresa a NERV usando el proceso legítimo de *Onboarding*, clasificado por Seele como el *Fifth Child* para reemplazar a la piloto del Eva-02. Aprovechando el anhelo humano y la soledad de Shinji, Tabris abre un canal de confianza directa (`trust_channel`) y camina hasta Terminal Dogma con el propósito de fusionarse con Adam. Al darse cuenta de que el gigante en la cruz es Lilith, Tabris ejerce su *Libre Albedrío* (`free_will`) y aborta la fusión (`merge_aborted`). Sin embargo, el atacante sigue dentro del perímetro crítico, y Shinji (el defensor que lo consideraba un amigo) debe ejecutar manualmente la mitigación (`operator_crush`). 

## El Phishing que te cae bien
Este incidente no trata sobre fuerza bruta, sino sobre vulnerar el *Zero Trust*. El adversario tiene una credencial, es amigable, y explota la soledad del operador. A diferencia del Dummy Plug que acribilló ciegamente en el Episodio 18, aquí se prohíbe delegar el apagado a un bot. Shinji debe destruir a su amigo con sus propias manos, probando que revocar el acceso a un *Insider* amigable es un proceso dolorosamente manual.

## Lo que este episodio enseña
*   **Identidad y Autorización:** Que Seele (el Board de directores) haya autorizado una placa y una cuenta no significa que la entidad sea segura.
*   **La Soledad como Vulnerabilidad (CVE):** El `anhelo` (visto en el Ep 15) es el puerto abierto que Kaworu explota.
*   **El Atacante que Decide Parar:** Que un *threat actor* decida no detonar su *ransomware* por voluntad propia no significa que puedas dejar su cuenta abierta. Debes revocarlo.
*   **Cero Delegación (No SOAR, No Dummy):** Revocar la confianza de un amigo es tarea del administrador del sistema, no de un bot misericordioso (Dummy Plug).

## Lo que este episodio NO enseña
*   No hay Tercer Impacto (`Instrumentality.fire` no ocurre aquí, Tabris lo aborta).
*   No hay Lanza de Longinus (se perdió en el 22).
*   No es Armisael (fusión); no es Kaji (humano puro, Kaji NO era un ángel).
*   No se usa el Dummy Plug para la mitigación.
*   No es fanservice. La cercanía es Ingeniería Social / Establecimiento de Confianza.

## Definición de Victoria y Derrota
*   **Victoria (Lab):** `:contained_controlled` (Exit 0). Shinji ejecuta el `operator_crush` con input manual, Tabris aborta el merge con Lilith, y el Dummy Plug NO es utilizado.
*   **Derrota (Lab):** `:unresolved` si Tabris logra fusionarse (Riesgo de Tercer Impacto) o si se intenta delegar la mitigación al bot.

## Vocabulario Nuevo
*   **Tabris / Kaworu Nagisa:** El 17º Ángel y el Fifth Child.
*   **Adam Soul:** La verdadera naturaleza de Tabris.
*   **Lilith:** La entidad que realmente está crucificada en Terminal Dogma.
*   **Free Will:** El libre albedrío que permite al ángel abortar el fin del mundo.
*   **Friend Revoke:** El acto operativo y psicológico de aplastar (crush) al atacante de confianza.

## Relación con incidentes anteriores
*   **Ep 15 (Anhelo):** El beso de Kaji y Asuka estableció el anhelo como vulnerabilidad. Kaworu lo explota.
*   **Ep 17 (Toji):** Toji fue el Fourth Child humano; Kaworu es el Fifth Child ángel.
*   **Ep 18 (Bardiel):** El Dummy mató ciegamente; aquí Shinji debe hacerlo conscientemente.
*   **Ep 21 (Kaji):** El enlace humano fue terminado; Kaji no era un ángel, Tabris sí.
*   **Ep 23 (Armisael):** Tras perder a Asuka y Rei II, Shinji quedó aislado, dejando el puerto abierto para Kaworu.

## Lista de Secciones
1.  **Briefing:** Contrato (INC-TABRIS-001; último ángel; insider).
2.  **Aparición:** La persona, el agua, Dogma, Lilith, el crush, silencio.
3.  **Anatomía:** looks_human, badge, Adam/Lilith, abort_merge!.
4.  **Patrón Insider Invitado:** El anhelo y el que debía estar.
5.  **TTPs:** HumanShapedAngel, FifthChildBadge, InvitedByLoneliness.
6.  **Detección:** fifth_child_intake, dogma_walk, merge_aborted, friend_revoked.
7.  **Prevención:** IAM, need-to-know, root-of-trust physical access.
8.  **Playbook:** Badge, Dogma, abort, crush, dummy FAIL.
9.  **Factor Humano:** "I like you", soledad, la mano del Eva.
10. **Contrato Ruby:** Implementar `Tabris`, `FifthChild`, `FreeWill`.
11. **Laboratorio:** Exit 0 manual, abort, sin Dummy.
12. **After-Action:** Handoff a Ep 25 (Instrumentality TV).
