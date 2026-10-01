# Tutorial 03: Arquitectura y Mapeo NERV-Ciberseguridad

Este documento explica cómo hemos mapeado los conceptos de *Neon Genesis Evangelion* (NGE) a prácticas de ingeniería de confiabilidad (SRE) y seguridad informática (InfoSec).

## El Concepto Central

No estamos construyendo un juego de mesa de Eva. Estamos construyendo un **Laboratorio de Respuesta a Incidentes (IR Lab)**.

En este repositorio, un **Ángel** no es simplemente un monstruo; es una **Técnica de Ataque (TTP)**, una amenaza persistente avanzada (APT) o un fallo catastrófico en un sistema. 
**NERV** es el Centro de Operaciones de Seguridad (SOC) y la infraestructura de nube.
Los **Evangelions** son la infraestructura de contención, a menudo más volátil que la propia amenaza.

## Mapeo de Entidades

| Concepto de Evangelion | Concepto de Ciberseguridad (Ruby / Arquitectura) | Descripción Práctica |
| :--- | :--- | :--- |
| **Ángeles (Sachiel, Ramiel, etc.)** | Objetos Amenaza / Cargas útiles | Clases que heredan de `Angel`. Ejecutan ataques (DDoS térmico, Ransomware biológico, Phishing psicológico). |
| **MAGI System** | Sistema de Quórum / Arquitectura de Consenso | `Magi.new`. Una arquitectura de 3 nodos (Melchior, Balthasar, Casper) que debe aprobar cambios drásticos (2 de 3 votos). |
| **AT Field (Modo: Wall)** | Firewall / Perímetro de Red | Un escudo físico que rechaza ataques de denegación (`at_field_rebound`). |
| **AT Field (Modo: Self)** | Privacidad / Aislamiento de Identidad (Tenant Isolation) | Los firewalls lógicos que impiden que los datos de un usuario se mezclen con los de otro. Su colapso causa la Instrumentación. |
| **N2 Mines / Armas Convencionales** | Bloqueo de IP, Antivirus Básico | Respuestas predeterminadas que rara vez resuelven una APT verdadera. |
| **Spear of Longinus** | 0-Day Exploit Root | Un arma imparable (`bypass_at_field!`). Cuesta perder control sobre ella una vez desplegada. |
| **Dummy Plug System** | Automatización Ciega / IA no supervisada | `DummyPlug.new(eva)`. Automatizar la contención del SOC saltándose la validación humana. Funciona tácticamente pero destruye la confianza y la infraestructura a largo plazo. |
| **Proyecto de Complementación (Instrumentality)** | Data Lake Tóxico / Apagón de Políticas IAM (Identity and Access Management) | Forzar la mezcla de todas las identidades y eliminar los roles privados bajo la directiva del Board (Seele). Cero privacidad = Cero Sujetos. |

## El Flujo del Playbook

Cada episodio tiene un `PlaybookEpXX` ubicado en `lib/nerv/playbooks/`. 
Un **Playbook** es una secuencia de instrucciones de respuesta a incidentes. 

La anatomía de una corrida de Playbook es:
1. **Detección:** El SIEM registra `pattern_blue`.
2. **Despliegue:** NERV intenta medidas defensivas (`sortie_melee`, `ablative_shield_deployed`, etc).
3. **Fricción/Fallo:** Las medidas convencionales fallan (el AT Field del ángel rebota los ataques).
4. **Solución Radical:** Se aplica la solución específica del episodio (francotirador con positrones, inmersión en magma, sacrificar un clon).
5. **Registro de SIEM:** Se emiten los tags de telemetría correspondientes.
6. **Código de Salida (Exit Code):** El resultado del incidente. Rara vez es "todo perfecto". A menudo es un éxito táctico con daños severos.

## Documentación de Episodios (Markdown)

Cada episodio tiene su documentación asociada en `docs/episodios/`:
* `epXX_briefing.md`: El contrato del episodio.
* `epXX_anatomia.md`: El mapeo técnico.
* `epXX_ttps.md`: Las tácticas y técnicas (tipo MITRE ATT&CK).
* `epXX_deteccion.md` / `epXX_prevencion.md`: Guías para el SOC.
* `epXX_lab.md`: Cómo probarlo en el CLI.
* `epXX_aar.md`: Reporte Post-Incidente (After Action Report).

## La Filosofía del Repo (La "Lección Seele")

Este laboratorio demuestra, a través de la narrativa, que:
1. Tener 0 incidentes forzando a los usuarios a no existir (Instrumentalización) no es seguridad.
2. Usar tácticas brutales y perder control de tu propia infraestructura (Modo Berserk, Dummy Plug) no es una victoria sustentable.
3. El dolor y la fricción son necesarios para mantener la separación y la privacidad. Cuidar el perímetro ("Take care of yourself") es un trabajo diario.
