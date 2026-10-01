# Anatomía: Gaghiel, Dual Plug y Fuego Naval

## Partes y Funciones de Seguridad

| Parte de la Amenaza/Defensa | Qué Parece | Qué Hace | Analogía de Seguridad (SRE/Sec) | Símbolo Ruby |
| :--- | :--- | :--- | :--- | :--- |
| **Cuerpo Acuático** | Piel gruesa de ictioide. | Soporta fuego ligero y se mueve a gran velocidad en alta mar. | Payload desplegado en un medio *Out-of-Band* para el equipo local. | `Gaghiel` |
| **Mandíbula (Gate)** | Fauces enormes con dientes que atrapan objetivos. | Esconde y protege el núcleo físico (Core) del daño ambiental. | Un control de acceso (Gateway/Firewall perimetral del atacante). | `jaw_open` |
| **Core (En boca)** | Esfera roja adámica dentro de las fauces. | Centro vital del ángel; debe ser destruido. | Motor de base de datos/Directorio detrás del Firewall. | `Nerv::Core` (Reusado) |
| **Eva-02 (Rojo)** | Mecha de combate rojo vibrante. | Segunda plataforma oficial de combate. | Servidor secundario o herramienta nueva incorporada al stack. | `Nerv::Eva` (Unidad 02) |
| **Dual Plug** | Cabina compartida: Shinji detrás de Asuka. | Dos operadores alimentando entradas al mismo sistema de manera sucia. | Dual-approval sucio; dos ingenieros tecleando en la misma sesión root SSH. | `DualPlug` |
| **Fuego Naval** | Cañones de acorazados hundidos (usados sumergidos). | Arma convencional humana (no-Eva). | Scripts *legacy* o herramientas convencionales. | `FleetBattery` |

## El Medio (Theater)
El ambiente (theater) cambia drásticamente la viabilidad de la táctica.
*   `:pacific_fleet` (Alta Mar) requiere nadar, desplegar desde portaviones.
*   `:tokyo3_geofront` (Montaña/Ciudad) no está implicado.

## ¿Por qué reutilizamos partes?
*   Gaghiel hereda de `Nerv::Angel`. A diferencia de Jet Alone, esto **sí** es un ángel. 
*   `Nerv::ATField` y `Nerv::Core` se reutilizan. Gaghiel tiene AT Field, pero la debilidad táctica está en forzar la apertura de su mandíbula.

## Fuego Convencional vs Core Abierto
En el Ep 01, la mina N2 y los misiles del JSSDF (`ConventionalAttack`) fallaron contra Sachiel debido al AT Field y a su geometría de regeneración. Contra Gaghiel, la flota de la ONU (`FleetBattery`) no dispara contra el exterior del monstruo, sino directamente al tejido suave e inestable del núcleo cuando la mandíbula es abierta desde dentro por el Eva-02. **El cuchillo no se utiliza; se aprovecha a la armada combinada**.
