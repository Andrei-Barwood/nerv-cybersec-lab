# Playbook de Mitigación Fallido (INC-RAMIEL-001)

## Árbol de Decisión (Fase Inicial)

```text
[ Detección: Geometric Fortress ]
            |
            v
[ Despliegue Convencional (Close-Range) ]
            |
            v
[ KILL ZONE ACTIVE (Particle Beam) ] ---> [ Eva-01 Melted ]
            |
            v
[ Aborto de Emergencia (Emergency Eject) ]
            |
            v
[ Asedio Instalado: Drill Started ]
            |
            v
[ Evaluación de Opciones (MAGI) ]
            |
            +--> (Knife / Beast) ----> [ VETO TÁCTICO: close_range_contraindicated ]
            |
            +--> (Evaluar Armas NERV) -> [ standoff_capability_missing ]
            |
            v
[ Proyecto Yashima Proposed (DEUDA) ] ---> [ RESULTADO 05: :unresolved ]
```

## Runbook Numerado
1. **Detectar Geometría:** El SIEM confirma un `pattern_blue` de tipo `geometric_fortress`.
2. **Deploy Erróneo:** NERV lanza al Eva-01 bajo las presunciones tácticas del Episodio 03.
3. **Melt:** El rayo de partículas (Active Denial) quema el blindaje de la unidad de inmediato.
4. **Retracción:** Se aborta la salida, salvando a Shinji a costa de inhabilitar temporalmente a la Unidad 01.
5. **Drill Progress:** Ramiel despliega su taladro; comienza la monitorización del asedio. Se confirma que el Core es inaccesible.
6. **Bloqueo Táctico:** MAGI y Misato determinan que el acercamiento físico es un suicidio. El SIEM marca `close_range_contraindicated` y `standoff_capability_missing`.
7. **NO Disparar:** No existe arma en NERV capaz de atravesar el AT Field a esa distancia. El playbook se corta.

## Deuda Hacia Yashima (Ep 06)
El incidente finaliza aquí para el Episodio 05 en estado `:unresolved`. Lo siguiente DEBERÁ implementarse en el próximo episodio:
* Positron Rifle (arma de largo alcance prestada).
* Red Eléctrica Nacional (recurso requisado).
* Eva-00 como Escudo.
* Sincronización Rei-Shinji ("Thank You").
