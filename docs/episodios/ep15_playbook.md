# Playbook: Mapear Grafo (Mentiras y Silencio)

## Árbol de Ejecución

```text
[ undeclared_channel (Kaji, Misato, etc) ]
        |
        +---- (Fallo: new Angel creado) -----> [ shadow_graph_denied ]
        |
        +---- (Fallo: adelantar Leliel) -----> [ shadow_graph_denied ]
        |
        v
 [ Evaluar Kaji ]
        |
        +---- (Fallo: principals < 2) -------> [ shadow_graph_denied ]
        |
        v
[ siem.kaji_principal_count >= 2 ]
        |
        v
 [ Evaluar MAGI/Ritsuko ]
        |
        +---- (Fallo: MAGI infected/Ireul) --> [ shadow_graph_denied ]
        |
        v
[ siem.coi_control_plane ]
        |
        v
[ Registrar unauth_trust y missing_log ]
        |
        v
[ SUCCESS: :shadow_graph_mapped (Exit 9) ]
```

## Runbook Numerado
1. **Inicio Analítico:** El SIEM no reporta Ángeles. Levantar modo de *Threat Hunting* para buscar `undeclared_channel`.
2. **Filtrar Cacería de Brujas:** Asegurar que ningún junior declare a Kaji como un monstruo `Pattern Blue`. Si se emite `false_pattern_blue`, el lab falla.
3. **Mapear Multi-Principal:** Identificar las conexiones de Ryoji Kaji. Demostrar que sirve a NERV y al gobierno/Seele simultáneamente (`kaji_principal_count >= 2`).
4. **Mapear COI:** Documentar el conflicto de interés entre Gendo y Ritsuko (Operadora de MAGI). Asegurar que MAGI NO pase a estado `infected` (no es Ireul).
5. **Mapear Anhelo (Onboarding / Visitas):** Trazar la instrucción de Shinji por Kaji (`offband_onboarding`) y la visita a Rei. Todo es clasificado como `unauth_trust`.
6. **Registrar Silencios:** Por cada comunicación no reportada oficialmente a los mandos, asentar un evento `missing_log`.
7. **Finalización Segura:** Con el Grafo Sombra completo, declarar `shadow_graph_mapped` (Exit Code 9).

## Condiciones y Hooks
*   MAGI no se hackea. No hay Evas (cero armamento).
*   Si `Seele.kpi == :containment`, fallaste el Episodio 14, pero aquí Kaji puede colgarse de Seele de todas formas.
*   El menor intento de instanciar un Mar de Dirac (Leliel) fuerza `:shadow_graph_denied`.

## Handoff a Episodio 16 (Leliel)
Con el Shadow Graph dibujado, NERV conoce su propia debilidad humana. **El Episodio 16 (Splitting of the Breast)** abandonará la paz. Un objeto flotante geométrico aparecerá, pero a diferencia del Ep 05, la amenaza real no es la esfera, sino su *sombra* extendida en el piso: el Mar de Dirac. Shinji y el Eva-01 serán tragados a una dimensión de espacio imaginario. Ninguno de los playbooks acumulados (ni de ataque balístico, ni de inyección de código, ni de mapeo de red) te preparan para cuando el atacante no es un enemigo con silueta, sino un *espacio que te absorbe*.
