# Patrón: El Analista Fusionado con la Plataforma (OPERADOR_EN_EL_CONTROL)

## Escena Breve
Un mes después de la matanza de Zeruel, NERV está silenciosa. No hay un nuevo Ángel (Pattern Blue) en el horizonte, pero Misato sufre mirando los monitores del Eva-01 en éstasis. Shinji sigue adentro, o lo que queda de él; su Ego Border se colapsó y ahora es una consciencia flotante en el LCL de la máquina, alimentada en secreto por la recién adquirida energía infinita (S2). Ritsuko diseña un protocolo de `Salvage` (Recuperación) que no depende de bombas N² ni de clones. Es un pull de datos del alma. Falla físicamente, pero dentro, Shinji dialoga con las voces formadas y la presencia cálida de la máquina. Enfrentado al vacío de existir sin fronteras o volver a existir con dolor, elige el dolor. El traje vacío se infla, restituyendo las barreras corporales del analista. Shinji llora desnudo. Gendo sonríe en la oscuridad; el piloto volvió, pero su herramienta ha retenido permanentemente la divinidad del ángel.

## Patrón: OPERADOR_EN_EL_CONTROL
Ocurre como resaca de un evento de Overwhelm (como el 19) donde se usó el máximo poder en Producción (Beast) para consumir al enemigo. El administrador queda atrapado, disuelto en las herramientas que operó. Resolver este patrón implica recuperar al analista sin provocar que la herramienta colapse, sabiendo que el residuo enemigo (S2) ya es parte intocable de la base de código.
*   **Precondiciones:** `operator_introjected` (Ep 19), `plug_empty`, y `s2_ingested`.
*   **Síntoma:** El sistema está vivo, tiene batería infinita, pero el asiento del control está técnicamente vacío (`dwell_inside`).
*   **Error (Salvage-as-Producto):** Creer que mandar a la máquina a reiniciar (Dummy) o pelear a cañonazos resolverá un problema existencial y bio-métrico profundo.

## Tabla de Métodos en el Episodio 20

| Método de Respuesta | Resultado Esperado | Justificación |
| :--- | :--- | :--- |
| `Dummy Plug (como Salvage)` | **FAIL (`dummy_salvage_rejected`)** | Un script de ataque ciego no reconstruye formas humanas. |
| `DiracSea Extract (como el 16)`| **FAIL** | El niño no está en un pliegue espacial, está en la RAM líquida del Eva. |
| `Casper Reverse-Hack` | **FAIL** | No es un virus de datos en MAGI, es LCL orgánico. |
| `Dejarlo ahí ("Tenemos S2")` | **Derrota (Exit 14: `lost_in_control`)** | NERV gana un arma pero pierde a su hijo/analista permanentemente. |
| **`Salvage + Return To Body`** | **Victoria Frágil (Exit 13)**| Devuelve al analista (Límites restaurados), pero el riesgo principal (S2) sigue en producción de forma vitalicia. |

## Analogías de Seguridad
1. **Admin Trapped in a Jump Box:** Un sysadmin saltó a un *Bastion Host* (Eva-01) hiper-privilegiado durante un ataque masivo y ahora sus sesiones, keys de AWS y *commits* locales están todos mezclados indisolublemente con los del servidor mismo.
2. **Malware Organ Left in Prod (S2):** Contuviste el Ransomware, sacaste al humano de aprietos, y cerraste el ticket (Exit 13). Sin embargo, el script de minería/persistencia del atacante sigue instalado en tu IIS y ahora todos fingen que "es una feature del servidor para hacerlo más rápido".
3. **El Modo Dios:** El analista no quiere "re-enter ticketed identity" (volver a loguearse como Level 1) porque duele y es tedioso; prefiere estar disuelto en `root` indefinidamente (Maternal Presence). El CISO tiene que forzarlo a soltar los permisos y recuperar su *Boundary* (rol).

## Fronteras
*   **Episodio 04 (AWOL):** En el 04 Shinji huyó del trabajo en tren (`tadaima`). Aquí huyó de su forma corpórea, no del lugar.
*   **Episodio 16 (Dirac):** El contenedor era enemigo (Leliel). Hoy el contenedor es aliado (Eva-01).
*   **Episodio 21 (Nacimiento de NERV):** El 20 finaliza con Shinji de vuelta. En el 21, la cámara dejará a los niños para enfocarse en Kaji, Fuyutsuki, y la historia trágica de Naoko/Yui que dio origen a la presencia dentro de la máquina.
