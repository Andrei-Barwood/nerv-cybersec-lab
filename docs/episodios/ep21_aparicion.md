# Recreación de Aparición: El Archivo y el Disparo en la Sombra

## Minuto Cero y First-Seen de Seguridad

| Escena (Minuto Cero) | First-Seen de Seguridad (IoC de Lab) |
| :--- | :--- |
| **Volcado de Memoria (1999-2015):** La narrativa retrocede a los días del "Second Impact" (el desastre fundacional) y muestra la creación del Instituto Gehirn en Hakone. Observamos el Contact Experiment: Yui Ikari sube al núcleo de lo que será el Eva-01 y desaparece físicamente ante los ojos de Gendo y un joven Fuyutsuki. Vemos a la Dra. Naoko Akagi desarrollando a MAGI copiando su propio cerebro (como científica, madre y mujer). Posteriormente, Naoko descubre que la pequeña niña clon (Rei I) la llama "bruja vieja" por órdenes secretas de Gendo; Naoko la estrangula y luego se suicida. Ese mismo día, Gehirn cambia su nombre a NERV (`gehirn_rebrand`). | **Origin File Opened (Investigación Interna):** No hay un `pattern_blue` ni alarmas en Tokio-3. Lo que se abre es un expediente forense (`origin_file_opened`). Detectamos que el *Product Requirements Document* (PRD) de NERV incluye sacrificios humanos intencionales (`contact_experiment`), que la plataforma IAM principal tiene deudas de diseño éticas (`magi_builder_naoko`), y que los *backups* biológicos han sido usados y descartados en guerras políticas internas (`rei_i_killed`). |
| **El Fin de Kaji:** En el presente, el inspector Kaji entrega su última investigación (una cápsula) a Misato. Tras liberar a Fuyutsuki (a quien Seele tenía secuestrado), Kaji camina por un pasillo oscuro. Alguien lo llama, él sonríe y se escucha un disparo. Kaji cae. Shinji se entera, y al final del episodio, sigue siendo solo un niño en la cama escuchando a Misato llorar. | **Liaison Terminated:** El canal de inteligencia de Shadow Graph del Episodio 15 se ha silenciado abruptamente (`kaji_terminated`, `liaison_channel_closed`). El nodo auditor ha sido eliminado del sistema para prevenir fugas de información. Y a nivel humano, comprobamos que presenciar estos horrores no provoca "madurez" inmediata (`still_a_child`). |

## Contraste Inmediato
*   **Episodio 14 (Tabletop):** En el 14 repasamos ataques de ángeles. Aquí repasamos cómo se construyó el SOC.
*   **Episodio 20 (Oral Stage):** En el 20 Shinji dialogaba con el interior del Eva. En el 21, vemos en un archivo de 10 años atrás *cómo* esa presencia maternal entró en la máquina.

## Spec Visual
*   **Gehirn:** Laboratorios más crudos, sin la estética roja de NERV. Es la versión beta.
*   **Contact Experiment:** Yui Ikari sonriendo, un tanque de fluido, luz y su desaparición. Sin monstruos ni ángeles.
*   **MAGI Builder:** Las tres cajas base del Episodio 13, pero ahora asociadas al rostro y las motivaciones trágicas de Naoko.
*   **Ausencia de Kaji:** El asesinato es un corte a negro. No hay charcos de sangre estilo *gore* ni detalles gráficos de la herida; es un `flag` de estado, la terminación seca de un proceso de red.
