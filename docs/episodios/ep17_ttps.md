# Cadena de Suministro y TTPs de Ingesta

## Lo que no aplica en este incidente
*   **No T-VENDOR / T-IREUL / T-DIRAC.** Jet Alone, el virus informático y el Mar de Dirac no son las dinámicas que gobiernan un troyano biológico.
*   **El T-EVA01-05 (CollateralCity):** La ciudad que el Eva-01 destruyó accidentalmente peleando contra Sachiel. Esta Táctica de Daño se CITA aquí como la PRECONDICIÓN que le dio a NERV la hermana de Toji, generando la moneda de cambio.

## Nuevas TTPs (Supply Chain, Staffing, Secretismo)

| ID | Táctica / Comportamiento | Descripción |
| :--- | :--- | :--- |
| `T-INTAKE-01` | TrustedUnitSkipAudit | Omitir procesos de cuarentena exhaustiva para activos de hardware transferidos desde el propio ecosistema corporativo. |
| `T-INTAKE-02` | OffshoreBuiltAssumedClean | Asumir que una unidad fabricada en una sucursal remota internacional (Massachusetts) cumple las políticas estrictas de sede central. |
| `T-INTAKE-03` | CloudIocAsWeather | Re-clasificar indicadores de compromiso físicos (la nube de transporte) como fenómenos ambientales inofensivos. |
| `T-SOC-06` | FourthChildFromClass | Utilizar la cercanía geográfica (el colegio) como pool de extracción forzada de operadores. |
| `T-SOC-07` | StaffingByFamilyLeverage | Garantizar la obediencia del nuevo operador mediante el condicionamiento del tratamiento médico de un familiar. |
| `T-SOC-08` | OccupantNeedToKnowFalse| Compartimentar la identidad del nuevo integrante, dejando ciego a sus pares operativos (falla de comunicación IR). |
| `T-TOJI-01` | BargainForSister | (Actor/Humano) Aceptar el rol de soldado no por lealtad o protección global, sino por un trueque personal cerrado. |

## Fases del Incidente (El Setup de Confianza)

```text
[ T-INTAKE-02 Offshore Build ] ----> [ T-INTAKE-03 Cloud IoC Ignored ]
                                               |
                                               v
[ T-SOC-07 Sister Leverage ] --------> [ T-INTAKE-01 Skip Audit ]
[ T-TOJI-01 Bargain ]                          |
                                               v
                             [ T-SOC-08 Need To Know False (Shinji) ]
                                               |
        +--------------------------------------+--------------------------------------+
        |
[ Exit 11: :trusted_intake_recorded ]
        |
        v
(Handoff al Episodio 18: Detonación)
```

## Anti-TTPs
*   **No es TTP de este episodio:** Combatir al Eva-03 poseído.
*   **No es TTP de este episodio:** Forzar el Dummy Plug sobre el Eva-01. (Eso se ejecutará en el 18 como fallo masivo de confianza).
