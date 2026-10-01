# Playbook: Predicción MAGI y Triple Copa AT

## Árbol de Ejecución

```text
[ orbital_contact (Sahaquiel detectado) ]
                       |
                       v
     [ misiles_rebuffed (Fallo Convencional) ]
                       |
                       v
         [ magi_impact_predict (ETA activo) ]
                       |
                       v
            [ impact_progress inicia ]
                       |
         +-------------+-------------+
         |                           |
  Solo 1 Eva o Melee    [ Deploy Evas 00/01/02 ]
         |                           |
         v                           v
  [ impact_progress = 1.0 ]   [ triple_at_brake (Overlap=3) ]
         |                           |
         v                           v
  [ city_destroyed ]          [ intercept_ok ]
         |                           |
         v                           v
   [ UNRESOLVED ]             [ InFlightCoreKill ]
                                     |
                                     v
                             [ core_destroyed ]
                                     |
                                     v
                      [ SUCCESS: :contained_controlled ]
                                     |
                                     v
                            ( [ praise_seeking ] )
```

## Runbook Numerado
1. **Contacto Exo-Atmosférico:** SIEM detecta el `pattern_blue` originado en órbita (`orbital_contact`). Sahaquiel es el payload.
2. **Defensas Secundarias Fallan:** Se registran armas convencionales inútiles (`missiles_rebuffed`). La masa desciende.
3. **Cálculo Terminal:** MAGI, en perfecto estado (unpowered=false, infected=false), emite el `magi_impact_predict`.
4. **Reloj de Caída:** Inicia el `impact_progress`.
5. **Interceptación de Evas:** 
   * Si no se despliegan $n=3$, el progreso llegará ineludiblemente a $1.0$, destruyendo la ciudad (`city_destroyed`).
   * Misato despliega a la trinidad. Ejecutan el `AtFieldBrake(n=3)`.
6. **Validación del Colchón:** MAGI valida que los campos están superpuestos absorbiendo el momentum (`intercept_ok`).
7. **Kill Cinético:** Eva-02 / Eva-01 perforan el core en el aire (`core_destroyed`).
8. **Mantenimiento del Entorno:** La ciudad no sufrió daño (`city_destroyed == false`). Resultado `:contained_controlled`.
9. **Epílogo (Shinji):** Shinji genera un `praise_seeking`, irrelevante para el exit code.

## Condiciones y Hooks
*   Un `bypass_n_evas: true` fallaría intencionadamente si intenta capturar a Sahaquiel con $n=1$.
*   A diferencia del Episodio 11, MAGI no es un obstáculo aquí; es un facilitador (computador balístico).
*   A diferencia del Episodio 06 (Yashima), la amenaza se mueve rápido y la espera te mata; dispararle desde lejos no la frena, la masa de su cuerpo caerá igual sobre el blanco.

## Handoff a Episodio 13 (Ireul)
En el Ep 12 detuvimos una amenaza puramente física apoyándonos ciegamente en MAGI como calculadora suprema de salvación. En el **Episodio 13 (Lilliputian Hitcher)**, el enemigo convertirá a MAGI en el arma. Un microorganismo / código (`Ireul`) que no necesita masa, ni AT Fields de freno, penetrará la supercomputadora desde adentro (`magi_infected`), amenazando con ordenar la autodestrucción del cuartel general de NERV usando nuestras propias máquinas contra nosotros.
