# Controles Preventivos: Fallback y Runbooks Offline

## Preventivo vs. Solo Mitigable

| Controles PREVENIBLES (Antes del Outage) | Controles SOLO MITIGABLES (Durante el Apagón) |
| :--- | :--- |
| **Runbooks Offline (Analog Launch):** Procedimientos impresos en bóvedas (o motores diésel de emergencia) que pueden puentear los sistemas de IAM/SIEM del HQ cuando fallan globalmente. | **Asalto Manual Combinado:** Tres Evas arrastrándose a oscuras por la tubería para ejecutar un ataque básico de saturación balística bajo la lluvia de ácido. |
| **Diseño Fail-Open (Opcional Controlado):** Las esclusas de las grúas de despliegue diseñadas para operarse con palancas mecánicas (Bypass físico) y no solo con aprobación de MAGI (`unpowered`). | **Human Runner / Out-of-band:** Correr por el cuartel con linternas llevando el *Pattern Blue Degraded* a Misato al no existir chat corporativo ni walkies funcionales. |
| **Simulacro de Ceguera del SOC (Game-Day):** Ensayar incidentes compuestos forzando al equipo a no usar *dashboards*, confirmando que el `ControlPlaneDown` no paraliza la respuesta letal. | |

## Anti-patrones Preventivos (Lecciones)
1. **Wait-For-Tools (El Analista Paralizado):** "No puedo aprobar el pase a producción/el Kill sin que el ticket de JIRA tenga el *checkmark* del pipeline." Si el pipeline no existe y el servidor se quema, ejecuta el *kill* manual.
2. **MAGI-as-Launch-Key (Plano de Control = Punto Único de Fallo):** Obligar arquitectónicamente a que un sistema informático central deba dar el OK criptográfico (`MAGI.majority`) para un despliegue de fuerza bruta. Si cae, tu arma está inutilizable.
3. **Single-Root-Cause (Espejismo de Causa Única):** Creer que el apagón y el ángel son el mismo problema (Ej: "El ácido causó el apagón"). Tratar todo como un solo fallo evita ver que se deben aplicar dos playbooks en paralelo (Restaurar Infra y Matar Adversario).

## Higiene de IR a Ciegas en un SOC Real
*   El SOC debe tener los cuadernos de Runbooks en formato PDF local, papel y discos fríos.
*   Las llaves SSH de respaldo locales no deben depender 100% del IAM Cloud si se corta internet.
*   Un "Incidente Compuesto" (Ej: Se quema un rack principal, y 15 minutos después te meten un Ransomware) es una prueba del modelo de prioridades: contén al agresor primero (Analog Launch), luego arregla los enchufes.
*   En analógico no hay `pair_sync`. No te pidas a ti mismo perfeccionismo milimétrico, pide ráfagas tácticas básicas que superen al atacante barato.
*   Restaurar la luz (IT Ops) y dispararle al atacante (SecOps) son tareas paralelas; una no detiene a la otra.
