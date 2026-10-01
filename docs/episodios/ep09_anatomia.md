# Anatomía: Split, Cores, Rejoin y N²-Timer

## Partes y Funciones de Seguridad

| Parte de la Amenaza/Defensa | Qué Parece | Qué Hace | Analogía de Seguridad (SRE/Sec) | Símbolo Ruby |
| :--- | :--- | :--- | :--- | :--- |
| **Israfel** | Amenaza bípeda humanoide. | Absorbe daño inicial para dividirse y abrumar al defensor. | Atacante con persistencia replicada; Failover. | `Israfel` |
| **Split (División)** | El cuerpo se parte en dos mitades (Alpha y Beta). | Duplica la superficie de ataque y requiere matar dos nodos simultáneamente. | Arquitectura HA / Cluster Activo-Activo de malware. | `split!` |
| **Core Pair** | Dos esferas rojas, una en cada copia. | Si uno sigue vivo, reconstituye al otro. | Bases de datos maestras con replicación síncrona. | `cores_alive` (2) |
| **Rejoin** | Reconstrucción del ángel a partir de una mitad viva. | Frustra ataques aislados y reinicia el estado de amenaza. | Auto-Scaling / Pod-Recreation. | `rejoin!` |
| **Mina N² (N2Window)** | Explosión masiva. | Aturde al ángel. NO MATA a Israfel (ni a Sachiel). Compra tiempo. | Isolación temporal o "Stun" para ensayar un playbook (SLA de ventana). | `n2_stun!` |
| **Epsilon Temporal** | Una medida de tiempo (0.0 a 1.0) imperceptible. | El $\Delta t$ máximo tolerado entre el golpe de Eva-01 y Eva-02. | Umbral de carrera (Race Condition Window) de concurrencia. | `simultaneous?(epsilon)` |

## El Epsilon ($\Delta t$)
En el laboratorio, el **epsilon temporal debe ser extremadamente bajo**. Un `epsilon` definido, por ejemplo, como `0.1` (o un delta de ejecución), significa que si el Eva-01 ejecuta `CoreStrike` y el Eva-02 ejecuta `CoreStrike` pero hay un retraso superior a `0.1` (o un desync de inputs), Israfel invoca `rejoin!`. 

## N² como Stun, no como Kill
Igual que con Sachiel (Ep 01), la Mina N² arroja fuego y radiación pero el `Nerv::Core` biológico la resiste. Aquí, detiene a Israfel por 6 días (`n2_stun_window`). Disparar una N² y declarar la emergencia cerrada es un fallo del SIEM. 

## Por qué Yashima y DualPlug fallan
*   **DualPlug (Ep 08):** Pone dos mentes en un solo Eva. Un Eva no puede estar en dos coordenadas geográficas simultáneamente para patear a Alpha y Beta.
*   **Yashima (Ep 06):** Un francotirador no puede apuntar a dos objetivos divergentes en el mismo nanosegundo con un solo Positron Rifle.
Un solo `CoreStrike` (como el usado contra Sachiel o Shamshel) es, matemáticamente, un "no-evento" para Israfel.
