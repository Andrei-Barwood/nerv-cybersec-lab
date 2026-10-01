# Cadena de Ataque y TTPs de Shamshel (INC-SHAMSHEL-001)

## Lo que no aplica en este incidente
* Las tácticas de Sachiel (`T-SACHIEL-*` como regeneración, adaptación) siguen inactivas. Shamshel no sobrevive a la erradicación de su base.
* Las TTPs del propio defensor (`T-EVA01-*`), especialmente el modo berserk (`T-EVA01-02`), están **estrictamente prohibidas** como método de victoria.
* Sin embargo, `T-EVA01-05 CollateralCity` se mantiene como precondición social de deuda técnica (ej. la hermana de Toji).

## Nuevas TTPs (Ataque y Defensa)

| ID | Táctica/Técnica | Descripción |
| :--- | :--- | :--- |
| `T-SHAMSHEL-01` | StationaryBeachhead | El ángel se ancla al terreno, estableciendo su base de operaciones en lugar de marchar sin fin. |
| `T-SHAMSHEL-02` | LongReachC2 | Despliegue de los canales de ataque remotos (látigos) con un radio mucho mayor al del cuerpo. |
| `T-SHAMSHEL-03` | RemoteSlash | Ejecución de daño masivo usando los látigos. |
| `T-SHAMSHEL-04` | CoreGuardedByChannel | El núcleo es visible, pero usar los látigos como defensa activa impide el acercamiento. |
| `T-SHAMSHEL-05` | DeflateOnCoreLoss | A diferencia de las explosiones o regeneraciones de Sachiel, Shamshel colapsa y se desinfla al perder el core, dejando un cadáver recuperable. |
| `T-OP01-01` | PalletSprayMiss | Uso en pánico del rifle de asalto que no acierta ni corta los canales C2. |
| `T-OP01-02` | C2Sever | El operador de NERV cierra la distancia y secciona el canal remoto usando su cuchillo. |
| `T-OP01-03` | ProgressiveKnifeCore | El operador, reteniendo el control bajo presión, penetra el núcleo usando su herramienta de distancia cero. |

## Fases de Shamshel (Kill-Chain + Respuesta del Operador)

```text
[ StationaryBeachhead ]
          ↓
[ LongReachC2 Activo ] ---- (El operador responde en pánico) ---> [ PalletSprayMiss ]
          ↓                                                            |
[ RemoteSlash (Fallo de rifle) ] <-------------------------------------|
          ↓
    (Bifurcación del Operador)
          |
  +-------+-------+
  |               |
[ Freeze ]   [ Berserk ] ---> (AMBOS SON ESTADO DE FALLO: :unresolved o :contained_uncontrolled)
  |               |
  +-------+-------+
          |
  (Camino Gobernedo)
          ↓
[ C2Sever (Cuchillo corta látigo) ]
          ↓
[ ProgressiveKnifeCore (Golpe directo al origen) ]
          ↓
[ DeflateOnCoreLoss (El ángel colapsa; muestra recuperable) ]
```

## Anti-TTPs
* La regeneración tipo bomba N² no aplica.
* El "Beast" no es el plan.
* Shamshel no posee el taladro geológico lento de Ramiel.
