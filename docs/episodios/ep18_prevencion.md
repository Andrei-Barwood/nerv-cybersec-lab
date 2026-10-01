# Controles Preventivos: Fallas Cobradas del Ep 17

## Preventivo vs. Solo Mitigable

El Episodio 18 cobra en sangre lo que el 17 no quiso hacer en burocracia.

| Controles PREVENIBLES (Deuda 17) | Controles SOLO MITIGABLES (La Crisis Dummy) |
| :--- | :--- |
| **Occupant Disclosure (Need-to-Know Honesto):** Si a los IR (Incident Responders) de primera línea se les hubiera informado la identidad del cuarto niño el lunes, Shinji no estaría gritando ciego el viernes. Compartimentar la telemetría del propio equipo arruina la coordinación. | **Reimage con Sesión Viva (Dummy Plug):** Gendo activó la remediación automática. Si vas a destruir el servidor entero, asume que el operario que estaba dentro se quemará. Mitigable solo garantizando un proceso de cuarentena antes de destrucción total. (No ocurrió). |
| **Cuarentena Perimetral de Intake:** Retirar el privilegio `skip_audit` a los hosts internos y escanearlos antes de la fase de despliegue. | **Pérdida de la Interfaz:** Cuando el Dummy Plug entra (SOAR root), el operador local (`operator_input_discarded`) pierde todos los mandos. Si la IA falla o se ensaña (como aquí), nadie puede apretar *Control-Z*. |
| **No "Auto-Staffing" por Palancas:** Reclutar a Toji Suzuhara (T-SOC-07) para cumplir una cuota garantizó un piloto sin motivación ni resiliencia mental. | |

## Anti-patrones Preventivos (Lecciones Reales)
1. **Dummy Plug como Higiene (Auto-Wipe as First Resort):** Instalar SOAR destructivos ("Si detecta criptominado, destruye el disco duro de la nube") sin medir si el contenedor afectado corre además procesos críticos o tiene desarrolladores activos.
2. **Refuse = Cowardice (La Huelga):** Clasificar a Shinji Ikari como un cobarde o un mal elemento porque ejecutó un `operator_refuse`. Un analista L1 que se niega a ejecutar un comando porque ve variables críticas que el sistema ignora, es el último control preventivo que tienes, no tu enemigo.
3. **Trusted-So-Clean:** Asumir que la Unidad 03 pelearía a nuestro favor solo porque "tiene el logotipo de NERV estampado". Confiar ciegamente en marcas, proveedores o departamentos internos sin auditar los paquetes.
