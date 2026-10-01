# Cadena de Ataque y TTPs de Supply Chain / Sabotaje

## Lo que no aplica en este incidente
*   **No se reabren T-RAMIEL ni T-YASHIMA.** Yashima es el motivo político de la creación del robot, no el vector de ataque actual. 
*   **No usar tácticas de Evangelion.** Atacar a la unidad físicamente con armamento causa un colapso del reactor.

## Nuevas TTPs (Fallo de Vendor y Sabotaje de NERV)

| ID | Táctica / Comportamiento | Descripción |
| :--- | :--- | :--- |
| `T-VENDOR-01` | UnauditedAutonomy | Desplegar un sistema altamente privilegiado y autónomo sin someterlo a pruebas independientes rigurosas. |
| `T-VENDOR-02` | DemoAsProduction | Tratar una exhibición pública o Prueba de Concepto (POC) con datos y hardware reales capaces de causar daño masivo. |
| `T-VENDOR-03` | RemoteKillIllusion | Confianza ciega en un kill-switch remoto que falla bajo compromiso de software local. |
| `T-VENDOR-04` | BuiltInBlastRadius | Diseñar el producto con una carga crítica interna (reactor) que destruye el entorno si el software falla. |
| `T-NERV-01` | CompetitorVirus | (Insider Threat) Desarrollo e inyección de malware dirigido a la cadena de suministro de un competidor (Sabotaje). |
| `T-NERV-02` | FalseMarketDecision | Ocultamiento del sabotaje bajo la apariencia de una falla "natural" del producto para retener el monopolio operativo. |
| `T-OP01-11` | OnBoxPassword | Mitigación física de emergencia mediante introducción manual de credenciales (Break-Glass) directamente en el hardware. |
| `T-OP01-12` | MisclassifiedAsAngel | (Fallo Defensivo) Asumir erróneamente que cualquier objeto gigante anómalo es un patrón biológico adámico. |

## Fases del Incidente (Sabotaje Interno)

```text
[ Yashima Duele (Presión Política) ] -> [ T-VENDOR-02 DemoAsProduction ]
                                            |
                                            v
                                 [ T-NERV-01 CompetitorVirus ]
                                            |
                                            v
    +---------------------------------------+
    |
    v
[ ¿Es un Ángel? (T-OP01-12) ] ---> SÍ ---> [ FAIL (Eva Sortie = Meltdown) ]
    |
    +---> NO (Vendor Issue)
          |
          v
[ T-VENDOR-03 Remote Fail ] -> [ Misato Trepa (Physical Access) ]
                                            |
                                            v
[ T-OP01-11 OnBoxPassword ] -> [ STOP (third_party_stopped) ]
                                            |
                                            v
                               [ Forense: virus_origin_nerv ]
```

## Anti-TTPs
*   **No es TTP de este episodio:** Hackeo directo a MAGI (Eso es Ireul, Ep 13).
*   **No es TTP de este episodio:** Asuka o el Dummy Plug.
