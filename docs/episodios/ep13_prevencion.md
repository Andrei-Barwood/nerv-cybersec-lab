# Controles Preventivos: Segmentación y Consenso Bizantino

## Preventivo vs. Solo Mitigable

| Controles PREVENIBLES (Antes del Contacto Micro) | Controles SOLO MITIGABLES (Durante el Compromiso de MAGI) |
| :--- | :--- |
| **Segmentación Estricta (Air Gap):** Un laboratorio de pruebas (Pribnow Box) jamás debe tener conectividad de red, ni ductos de aire/enfriamiento compartidos con el cerebro principal del Control Plane (MAGI). | **Aislamiento Rápido del Nodo (Isolate Brain):** Desconectar manualmente a Casper de la red de MAGI para que la Infección no arrastre el tercer voto y evitar el `Quorum Hijack` total e inmediato. |
| **Tabletop de Consenso Bizantino (Byzantine Faults):** Entrenar al SOC para el escenario donde los "buenos" (el Active Directory, el SIEM o las alertas de MAGI) te mienten o ejecutan comandos suicidas. | **Casper Reverse-Hack (Forced Evolution):** Inyectar código al vuelo con la esperanza de que el malware lo asimile mal y colapse. Un arma de doble filo peligrosa (Hack-Back). |
| **Límites Físicos (Break-Glass):** El sistema de autodestrucción del HQ no debería depender 100% de la aprobación de MAGI (`majority_owner`); debe existir un seguro de *hardware* que la IA no pueda puentear por sí sola. | |

## Anti-patrones Preventivos (Lecciones)
1. **Eva-for-Everything (El Martillo de Oro):** Misato queriendo mandar a Shinji en Eva-01 a solucionar un problema de red. Si tienes un problema de BGP o de Active Directory, un ingeniero en la consola (Ritsuko) sirve, un tanque no.
2. **Reboot-as-Cure (Apagar como Remedio):** Tratar a la biomasa/código orgánico persistente como si fuera memoria RAM temporal. Reiniciar MAGI solo le dará a Ireul tiempo para afianzarse en el disco de arranque.
3. **Signature-Whack-a-Mole (Perseguir Firmas Estáticas):** Creer que el SOC está ganando porque le aplican Cloro o Láser a la mancha y se detiene. En un entorno polimórfico, cada firma inútil que pruebas es data de entrenamiento gratis para el atacante (`T-IREUL-02`).

## Higiene de Control Plane en Plataformas Reales (K8s/Active Directory)
*   En clústeres como *etcd* (Kubernetes) o *ZooKeeper*, el consenso (3 o 5 nodos) es sagrado. Si 2 de 3 caen ante un actor hostil, tu clúster legalmente pertenece al atacante, sin importar lo grueso que sea tu Firewall perimetral.
*   En ciberseguridad, no asumas que un Pattern Blue "se ve" de una forma. El *Initial Access* de SolarWinds no fue un bombardeo cinético; fue una actualización legítima, microscópica, y destructiva a nivel MAGI.
*   El "Casper Reverse-Hack" es lo que en seguridad llamamos "Blackhole routing" o "Sinkholing" adaptado; darle al agresor tanta soga o data basura que se sature y ahogue sus propios hilos de ejecución (`dead_end`).
