# Playbook: Magma Diver (Captura y Aborto de Contingencia)

## Árbol de Ejecución

```text
[ Pattern Blue (Embryonic) detectado en volcán ] -> [ Equipar D-Type & Desplegar Eva-02 ]
                                                                        |
                                                                        v
         [ Eva-01 se despliega en soporte pasivo (Grúa) ] <-------------+
                                                                        |
                                                                        v
                            [ Eva-02 bucea: Cooling Draining Activo ]
                                                                        |
                                                                        v
                            [ Capture Cage Desplegado por Eva-02 ]
                                                                        |
                                                                        v
        [ Sandalphon reacciona y hatch_progress sube drásticamente ]
                                                                        |
               +----------------------------------------+---------------+
               |                                                        |
      Decisión de Abort (Misato)                               NO Abort (Ritsuko gana)
               |                                                        |
               v                                                        v
 [ Progressive Knife Strike ]                              [ hatch_progress llega a 1.0 ]
 [ angel_killed_pre_hatch ]                                    [ Nace Adulto ]
 [ sample_lost ]                                                        |
               |                                                        v
               v                                                 [ UNRESOLVED ]
 [ Support Rescue de Eva-01 ]
               |
               v
 [ SUCCESS: :contained_controlled ]
```

## Runbook Numerado
1. **Detección Embrionaria:** MAGI reporta `pattern_blue_embryonic` en el teatro `:volcano_magma`.
2. **Setup de Caza:** Eva-02 desciende (Diver) mientras Eva-01 se posiciona en el cráter para asegurar líneas (Support).
3. **El Entorno Drena:** El magma afecta al `cooling_remaining` de Eva-02 constantemente. Si este llega a 0, el playbook emite `eva_cooked` y finaliza en fallo.
4. **Intento Científico:** Eva-02 activa la `CaptureCage` para apresar el espécimen (`capture_attempt`).
5. **Reacción Hostil (Hatching):** La intervención hace que Sandalphon despierte y el `hatch_progress` comience a cruzar umbrales peligrosos. La jaula cede (`capture_failed`).
6. **Decisión Break-Glass:** MAGI o la cúpula técnica (Ritsuko) pueden votar esperar por la muestra, pero la Autoridad de Incidente (Misato) impone el `abort_to_kill`.
7. **Kill Biológico Letal:** Asuka despliega el `ProgressiveKnife` apuñalando al feto adámico directamente (`angel_killed_pre_hatch`).
8. **Muestra Perdida:** El cadáver fundido confirma `sample_lost`.
9. **Extracción:** Eva-01 ejecuta el `support_rescue` para sacar al Eva-02 antes del fallo térmico inminente.
10. **Cierre:** Contención validada como `:contained_controlled` (Exit 0).

## Condiciones y Hooks
*   Un flag lógico `greed_override: true` en el playbook forzaría a no abortar; si eso pasa, `hatch_progress` igualará a 1.0, fallando.
*   La mina N², Positrones, DualPlug y Baile Sincronizado están explícitamente ausentes del *runbook* feliz, validando el descarte de *Last-Playbook-Wins*.

## Handoff a Episodio 11 (Matarael)
En el Ep 10 jugamos contra un reloj térmico en un entorno ajeno. En el Episodio 11 (The Day Tokyo-3 Stood Still), el enemigo no será un embrión ni el magma, sino **nuestra propia infraestructura muerta**. Matarael (araña de ácido) atacará el cuartel general justo el día de un apagón total, cuando *ningún* playbook automatizado y *ningún* control electrónico (incluyendo a MAGI y los monitores de los Evas) estén funcionales. Un *Hunt* en magma no te prepara para pelear a ciegas en tu propio pasillo sin electricidad.
