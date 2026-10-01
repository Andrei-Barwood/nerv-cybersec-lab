# Superficie de Detección: Split y Correlación

## Correlación en un Único Incidente
MAGI y el SIEM no deben generar un ticket INC-ISRAFEL-001 para Alpha y un INC-ISRAFEL-002 para Beta. Es fundamental detectar `angel_split` y correlacionar ambos cores como parte de la misma amenaza HA. Un `core_destroyed` solitario, seguido de un `rejoin`, es la métrica de un fallo de ensayo. 

## Ids de SIEM Obligatorios

*   `siem.pattern_blue`: Evento base.
*   `siem.angel_split`: Detección del failover del atacante; el cuerpo se divide en dos.
*   `siem.core_pair_alive`: Confirmación de estado; hay dos objetivos válidos que deben ser tratados atómicamente.
*   `siem.desync`: Alerta de error operacional (Acto 1). Los inputs de los operadores entran en ventanas temporales diferentes, colisionando.
*   `siem.n2_stun_window`: MAGI aprueba la mina N² y registra la ventana temporal ganada (6 días).
*   `siem.rehearsal_started`: Inicio del *Tabletop* / Entrenamiento fuera de banda.
*   `siem.rehearsal_done`: Confirmación de que el reloj compartido (`pair_sync`) está en fase. Requisito lógico.
*   `siem.simultaneous_strike`: El impacto sobre ambos cores ocurre en el Acto 2.
*   `siem.rejoin`: Si el `simultaneous_strike` falla por `epsilon` superado, o solo se golpea un core, el SIEM reporta la regeneración total.
*   `siem.core_destroyed`: Emitido solo si AMBOS núcleos colapsan sincronizadamente.

## Falsos Positivos y Anti-Métricas
*   **Falso Positivo:** "Tenemos dos ángeles, envíen dos Evas a luchar batallas 1v1 independientes." La táctica 1v1 falla si los Evas no coordinan su final *finish move*.
*   **Anti-Métrica:** Celebrar un `core_destroyed` inicial (Ej: Asuka mata su mitad) como un 50% de progreso. En un sistema `rejoin`, el progreso es binario (0% o 100%).
*   **Falso Positivo:** Asumir que el uso de `DualPlug` (Ep 08) garantiza el `pair_sync`. Compartir un teclado no enseña a coordinar a dos servidores Evas.
