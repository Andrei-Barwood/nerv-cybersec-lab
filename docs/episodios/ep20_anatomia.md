# Anatomía: LCL, Boundaries, Salvage y Persistencia de S2

## Partes y Funciones de Seguridad

| Parte de la Amenaza/Defensa | Qué Parece | Qué Hace | Analogía de Seguridad (SRE/Sec) | Símbolo Ruby |
| :--- | :--- | :--- | :--- | :--- |
| **Dwell Inside** | Un mes de inactividad física mientras la mente yace disuelta. | Período de latencia crítica donde el sistema y el operador son uno solo. | Dwell Time: Tiempo donde un analista corre scripts en Prod como root sin generar logs distinguibles. | `dwell_days >= 30` |
| **LCL / Boundary Dissolved** | El líquido sin forma en la cabina; la consciencia esparcida. | El operador no tiene un AT Field (frontera que lo separa del entorno defensivo y de la `maternal_presence`). | Pérdida de segregación de roles y de segregación de red. Admin = Server. | `boundaries_restored = false` (hasta el return) |
| **Maternal Presence** | Un calor subconsciente dentro del Eva-01. | Presencia que ofrece refugio infinito a cambio de la identidad. | El "Modo Dios" absoluto del Kernel del servidor que invita a nunca soltar los privilegios. | `maternal_presence` (bool/label) |
| **Salvage Attempt** | Ritsuko tirando de las constantes biométricas en MAGI. | Operación técnica de rescate para forzar al proceso disuelto a retomar su forma y credencial. | Un script de *Session Rebuild* / *Identity Sync* desde el AD al nodo. | `salvage!` |
| **Return to Body** | Shinji apareciendo de nuevo con su cuerpo físico, llorando. | Elegir reinstalar los firewalls interpersonales (AT Field). Volver al mundo doloroso. | El admin apaga su consola root y vuelve a loguearse como analista sin privilegios. | `return_to_body!` |
| **S2 Persistente** | Eva-01 no requiere cable. | El órgano tragado a Zeruel NO se digiere, se queda como parche en producción. | El binario de C2 del atacante que asimilaste sigue corriendo en tus servidores tras cerrar el ticket. | `s2_persists?` / `s2_still_in_prod` |

## Diferencias Tecnológicas Críticas
*   **Introject (19) vs Salvage/Return (20):** Introject es el fallo técnico del evento (la disolución). Salvage y Return son el *Incident Response* posterior para deshacer ese fallo (la recuperación), sin revertir la ingestión del S2.
*   **DummyPlug is Not Salvage:** El Dummy plug es para *bypassear* comandos tácticos (pelear). El Salvage es para *reconstruir* identidades corporales. Intentar que el Dummy dispare el `salvage!` generaría un `dummy_salvage_rejected`.
*   **No DiracSea:** Leliel (Ep 16) metió al Eva en su bolsillo. Aquí (Ep 20), Shinji no está en el bolsillo de nadie, está integrado al código fuente orgánico del Eva-01, que ahora hospeda un S2. No se puede absorber ni extraer con ingeniería de radar como en el 16.
