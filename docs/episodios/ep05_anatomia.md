# Anatomía de la Fortaleza (Ramiel)

## Partes y Funciones de Seguridad

| Parte de la Amenaza | Qué Parece | Qué Hace | Analogía de Seguridad (SRE/Sec) | Símbolo Ruby |
| :--- | :--- | :--- | :--- | :--- |
| **Particle Beam** | Láser o rayo de energía concentrada instantáneo. | Dispara a cualquier objetivo que emerja en un radio amplio sin necesidad de carga prolongada. | Sistema IPS/WAF altamente agresivo (Active Denial) que bloquea y funde cualquier IP no autorizada en el perímetro externo. | `particle_beam` |
| **AT Field Máximo** | Distorsión visual, escudo inquebrantable a simple vista. | Niega toda penetración de fuego cinético (rifles, minas N2). Actúa como un *air gap*. | Firewall físico / Air Gap que dropea todo el tráfico entrante, impidiendo *exploits* convencionales. | `at_field` (con umbral extremo) |
| **Drill (Taladro)** | Estructura mecánica cilíndrica descendente. | Perfora metódicamente y a velocidad constante las capas del blindaje. | Ataque DDoS constante o escaneo de fuerza bruta persistente sobre un HSM/Root (Crown Jewel). | `drill!` |
| **Core Interno** | Invisible desde el exterior. | El punto crítico (Kill Condition), pero inaccesible y oculto bajo la coraza octaédrica. | Management Port o Base de Datos aislada internamente y protegida por la topología perimetral. | `internal_core?` |
| **Kill Zone** | El radio de influencia. | El área donde acercarse equivale a la muerte térmica segura. | Subred o VLAN expuesta (honeypot/DMZ letal) donde `approach_melts? == true`. | `kill_zone` |

## AT Field Máximo
El AT Field de Sachiel (Ep 01) mitigaba daño y se podía sobreescribir con fuerza bruta ("rebotas un poco"). El AT Field de Ramiel representa el aislamiento definitivo. No se trata de crear una clase nueva, sino de setear un umbral donde `blocks?` devuelve invariablemente `true` para todo ataque menor a un nivel positrónico nacional.

## Core Interno
A diferencia de Shamshel, donde el núcleo rojo brillante guiaba el cuchillo de Shinji, Ramiel oculta su core. La condición de muerte (`kill condition`) existe, pero el método de acceso está denegado. En el Episodio 05, el core simplemente no es observable ni atacable.

## Métricas Operativas
*   **`kill_zone`:** Define el radio en el cual el método `approach_melts?` devolverá `true`. Entrar en la zona no resulta en daño paulatino o alerta, resulta en el colapso inmediato del Eva (el `melt`).
*   **`drill_progress` (0.0 a 1.0):** 
    *   `0.0`: El taladro ha sido desplegado pero no ha perforado el primer blindaje.
    *   `1.0`: GeoFront comprometido, Headquarters expuesto (Third Impact Local).

## Implicación Táctica
Si el atacante tiene un AT Field absoluto y un rayo instantáneo en la kill zone, usar el Cuchillo Progresivo (`ProgressiveKnife`) del Episodio 03 dejó de ser el estándar heroico para convertirse en un método garantizado de suicidio organizativo.
