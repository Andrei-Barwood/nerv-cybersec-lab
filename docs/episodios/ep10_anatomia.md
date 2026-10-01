# Anatomía: Embrión, Magma, Jaula y Hatch

## Partes y Funciones de Seguridad

| Parte de la Amenaza/Medio | Qué Parece | Qué Hace | Analogía de Seguridad (SRE/Sec) | Símbolo Ruby |
| :--- | :--- | :--- | :--- | :--- |
| **Sandalphon (Embryonic)** | Pupa inerte en cápsula. | Permanece inactivo hasta que se perturba, evolucionando luego. | Artefacto de malware en *staging* antes de desplegarse. | `Sandalphon` |
| **Hatch Progress** | Desarrollo de patas, dientes, ojos. | Medidor de maduración de la amenaza. `0.0` a `1.0`. Si llega a 1, hemos fallado el hunt. | Instalación de persistencia. | `hatch_progress` |
| **Magma Environment** | Roca fundida naranja brillante. | Teatro letal que daña a la sonda cazadora de NERV. Consume tiempo. | Entorno de producción que degrada los *scripts* de respuesta o *cloud infra*. | `:volcano_magma` |
| **Cooling Remaining** | Reloj/Termómetro de la D-Type Equipment. | Mide el tiempo de *dwell* disponible. Al llegar a `0`, el Eva se quema. | Budget de Dwell-Time, *Timeout* o *Session Expiry*. | `cooling_remaining` |
| **Capture Cage** | Red electromagnética que despliega Asuka. | Trata de encerrar la amenaza inerte para investigación viva. | *Sandboxing* in situ / Dumpear Memoria. | `CaptureCage` |
| **Abort-To-Kill** | Cuchillo progresivo desenvainado en la lava. | El abandono radical de la *greed* científica para asesinar el espécimen prematuro. | `kill -9` o apagar el servidor sacrificando logs. | `ProgressiveKnife` |

## Umbrales Numéricos del Magma Diver
*   `hatch_progress`: Inicia en `0.0`. En la ejecución del Playbook, un intento de `CaptureCage` provocará que suba. Si el cazador no emite un abort rápido, cruzará el umbral (`> 0.8`), dirigiéndose a `1.0`. A `1.0`, Sandalphon es adulto y el escenario resulta `:unresolved`.
*   `cooling_remaining`: El budget inicia lleno (ej: `100`). Cada acción en el magma (buscar, colocar jaula, forcejear) drena este valor. Si llega a `0`, el Eva está hervido (`eva_cooked`) y el Playbook falla de igual manera.

## El Medio NO permite Bailes
El *Magma Environment* restringe la movilidad, visibilidad y comunicación. El T-SYNC-02 del episodio previo requiere espacio de maniobra, piso estable y un oponente con núcleos gemelos. Nada de esto existe en la base de un volcán a 3000 grados.
No hay mandíbulas que abrir, y el núcleo de Sandalphon no está "detrás de un gate". Está en un cuerpo frágil, pero la ventana de oportunidad se desintegra segundo a segundo.
