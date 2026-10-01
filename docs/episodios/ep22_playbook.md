# Playbook: Ignorar el Perímetro, Quemar la Lanza

## Árbol de Ejecución

```text
[ Inicio: siem.pattern_blue detectado en órbita ]
        |
        v
[ siem.orbital_stay (Arael se detiene, no hay ETA de caída) ]
        |
        +-- (Fallo: Sortie Melee/Dummy/Dirac) ---> [ siem.close_range_impossible ]
        |
        +-- (Fallo: Intercept-3 tipo Ep 12) ---> [ siem.close_range_impossible ]
        |
        v
[ T-ARAEL-02 Mental Beam contra Asuka (Eva-02) ]
        |
        v
[ siem.operator_as_surface + siem.psyche_broken (Exfil mental Kyoko) ]
        |
        v
[ Gendo autoriza Extracción de Terminal Dogma ]
        |
        v
[ SpearOfLonginus.fire! (Lanzada por Rei / Eva-00) ]
        |
        v
[ siem.longinus_fired + siem.core_destroyed (Arael Muerto) ]
        |
        v
[ siem.spear_lost + siem.seele_artifact_lost (Lanza en gravedad lunar) ]
        |
        v
[ SUCCESS COSTOSO: :contained_controlled (Exit 0) ]
```

## Runbook Numerado
1. **Detección Orbital:** MAGI confirma Patrón Azul estático. Arael no desciende.
2. **Bloqueo de Tácticas Basura:** El sistema debe lanzar `close_range_impossible` si un Comandante intenta usar tácticas del Episodio 12 (tres Evas frenando una caída), del Episodio 18 (Dummy Plug ciego) o del 16 (Dirac).
3. **El Ataque (Beam):** Arael ejecuta `MentalBeam`. Asuka es la superficie de ataque. La clase `Operator` cambia su estado a `psyche_broken`. Las alarmas de salud mental del piloto se disparan incesantemente.
4. **La Autorización Crítica:** Sin opciones tácticas convencionales, se recurre a `SpearOfLonginus`.
5. **El Disparo:** El objeto `Eva` (Unidad-00) con su Operador (Rei) ejecuta el `fire!` de la lanza.
6. **El Costo:** Arael es registrado como `alive: false`. Inmediatamente, la Lanza pasa a estado `spear_lost: true`. 
7. **Furor Corporativo:** Se emite `seele_artifact_lost`. Gendo acaba de sabotear la herramienta secreta de sus jefes para salvar la base de Tokio-3 hoy.
8. **Resultado Lab:** La traza termina con Exit Code 0 (`:contained_controlled`). Un 0 triste, técnico, y sin Asuka.

## Handoff a Episodio 23 (Rei III / Armisael)
Asuka está fuera de combate. La lanza se fue. El Episodio 23 trae el último ángel que interactúa con humanos (Tabris vendrá después, pero es distinto).
*   **Armisael (16º Ángel)** no se queda en órbita.
*   Es una hélice de luz sólida que buscará **fusionarse** física y biológicamente con los Evas.
*   Logrará infectar al Eva-00, contactando a Rei.
*   Para matar a Armisael y proteger a Shinji, Rei ejecutará una maniobra de **Autodestrucción (Sacrificio)**.
*   El 23 requiere documentar qué pasa cuando el clúster entero detona consigo mismo, y por qué se llama "Rei III".
