# frozen_string_literal: true

module Nerv
  class AngelDossier
    DOSSIERS = {
      "01" => {
        id: "01",
        slug: "adam",
        number: 1,
        name: "Adam (Primer Ángel)",
        episodes: "08, 15, 21, 24",
        threat_class: "Progenitor / Semilla de Vida / Vector de Reset Planetario",
        mechanical_purposes: "Entidad original basada en el Fruto de la Vida (Fruit of Life). Fuente primordial del Motor S2 (Super Solenoid) que otorga regeneración metabólica infinita y autonomía energética eterna sin requerir soporte vital. Genera cuatro alas de luz de energía pura y un Anti-AT Field de escala biológica planetaria capaz de revertir la diferenciación celular. Progenitor genético de todos los Ángeles del 3 al 17.",
        spoilers: "Descubierto en el año 2000 en la Antártida dentro de la Luna Blanca por la expedición financiada por SEELE y liderada por el Dr. Katsuragi. El 13 de septiembre del 2000, los científicos realizaron el Experimento de Contacto introduciendo ADN humano en Adán, provocando su despertar incontrolado y el Segundo Impacto. Para evitar la esterilización total del planeta, se insertó la Lanza de Longinus, lo que provocó una explosión masiva que redujo a Adán a un estado embrionario preservado en baquelita. Ryōji Kaji lo roba de Alemania (Ep 08) y se lo entrega en secreto a Gendo Ikari, quien luego se injerta el embrión en su propia mano derecha para fusionarse con Lilith al margen de SEELE.",
        vulnerability: "Susceptibilidad ontológica a la Lanza de Longinus. La inserción de la Lanza interrumpe el flujo armónico del Motor S2, colapsando su cuerpo de energía y forzando una des-evolución hacia el estado embrionario inerte.",
        vulnerability_nature: "HONEYPOT E INGENIERÍA INTENCIONAL DE SEELE / KEEL LORENZ",
        vulnerability_explanation: "La reducción de Adán a embrión no fue un accidente fortuito: SEELE y Keel Lorenz financiaron y programaron el Experimento de Contacto de acuerdo con las profecías de los Manuscritos del Mar Muerto. SEELE sacrificó deliberadamente a la expedición humana en la Antártida para 'podar' a Adán, encerrar su alma en un recipiente humano (Kaworu Nagisa) y congelar su cuerpo físico en un embrión manejable, eliminando la posibilidad de que Adán reclamara la Tierra antes de que la humanidad ejecutara la Instrumentalidad.",
        keel_seele_role: "Pilar absoluto del plan maestro de SEELE. Keel Lorenz necesitaba neutralizar a Adán para que los Lilim (humanidad) pudieran sobrevivir y madurar. Además, el material genético de Adán fue el plano maestro utilizado por Gehirn y SEELE para construir los EVAs (a excepción del Eva-01) y la Serie de EVAs de Producción en Masa.",
        cybersec_equivalent: "Root CA Compromise / Hardware Root of Trust / Firmware Poisoning.",
        siem_events: [
          "siem.pattern_blue",
          "siem.white_moon_breach",
          "siem.s2_resonance_overload",
          "siem.contact_experiment_initiated",
          "siem.anti_at_field_detected",
          "siem.spear_longinus_inserted",
          "siem.embryo_reduction_confirmed",
          "outcome=contained_controlled"
        ],
        exit_code: 0,
        outcome: "contained_controlled",
        magi_consensus: {
          "melchior" => "ANÁLISIS CANÓNICO: ADAM (1ST ANGEL)\n\nEntidad fundacional. Portador del Fruto de la Vida y del Motor S2 original. El evento antártico del año 2000 confirma que su despertar sin contención equivale a la purga de la biosfera. Su estado actual como embrión baquelizado representa el congelamiento del kernel primordial.",
          "balthasar" => "AUDITORÍA DE SEGURIDAD: HONEYPOT DE SEELE\n\nVeredicto: Vulnerabilidad 100% inducida por SEELE. Keel Lorenz diseñó la intervención antártica para forzar el colapso del sistema antes del despertar natural de los Ángeles. El Segundo Impacto fue el costo colateral aceptado para neutralizar el Rootkit de Adán.",
          "casper" => "ESTADO DEL LABORATORIO (RUBY SYSTEM)\n\nClase Nerv::Angels::Adam operativa. Métodos contact_experiment!, second_impact! y revert_to_embryo!(spear:) validados. Simulación en memoria reproduce la reducción a embrión bajo Lanza de Longinus."
        }
      },

      "02" => {
        id: "02",
        slug: "lilith",
        number: 2,
        name: "Lilith (Segundo Ángel)",
        episodes: "01, 15, 24, 25, 26",
        threat_class: "Semilla de Conocimiento / Matriz Lilim / Honeypot Pasivo del Dogma Central",
        mechanical_purposes: "Entidad portadora del Fruto del Conocimiento (Fruit of Knowledge). Llegó a la Tierra hace 4.000 millones de años en la Luna Negra (Black Moon), evento conocido como el Primer Impacto (Giant Impact). Su sangre es el LCL primordial que llena los Entry Plugs y permite la sincronización neural con los EVAs. Permanece crucificada en la Cruz Roja del Terminal Dogma, con la Lanza de Longinus clavada en su esternón, regenerando tejido perpetuamente.",
        spoilers: "Durante 24 episodios, Gendo Ikari y SEELE engañan a todo el personal de NERV (Misato, Ritsuko, Shinji) haciéndoles creer que el ser crucificado en el sótano es Adán. En el episodio 24, Kaworu Nagisa descubre la verdad: es Lilith. El EVA-01 no fue clonado de Adán como los demás EVAs, sino de la mitad inferior de Lilith. Rei Ayanami es un clon artificial creado a partir del ADN de Yui Ikari que alberga el alma de Lilith. En el Tercer Impacto, Rei rechaza a Gendo, se fusiona con Lilith y entrega el control del ritual a Shinji.",
        vulnerability: "Inmovilización pasiva total mediante la Lanza de Longinus y ausencia de su alma (la cual reside en los recipientes clónicos de Rei). Mientras la Lanza permanezca insertada, Lilith carece de voluntad operativa y AT Field ofensivo.",
        vulnerability_nature: "HONEYPOT SUPREMO DEL SISTEMA DE DEFENSA DE NERV",
        vulnerability_explanation: "Lilith es la trampa de miel (honeypot) arquitectónica de Tokio-3. Gendo y SEELE difundieron la desinformación de que Adán estaba confinado bajo el Geofront. Todos los Ángeles atacantes fueron atraídos por resonancia biológica hacia el cuartel general de NERV creyendo que se reunirían con su padre Adán. Al llegar a Tokio-3, los Ángeles caían en el embudo defensivo de 22 capas de blindaje donde eran emboscados y aniquilados por los EVAs.",
        keel_seele_role: "El receptáculo final de la Instrumentalidad de Keel Lorenz. SEELE planeaba usar a Lilith, junto con la Lanza de Longinus y los EVAs de Producción en Masa, para disolver los AT Fields de la humanidad y recoger las almas en la Luna Negra de Lilith, alcanzando la inmortalidad colectiva.",
        cybersec_equivalent: "Deception Architecture / Strategic Honeytoken / High-Interaction Honeynet.",
        siem_events: [
          "siem.pattern_blue",
          "siem.black_moon_anchored",
          "siem.terminal_dogma_crucifixion",
          "siem.lcl_generation_steady",
          "siem.spear_longinus_lock_active",
          "siem.honeypot_beacon_transmitting",
          "outcome=contained_controlled"
        ],
        exit_code: 0,
        outcome: "contained_controlled",
        magi_consensus: {
          "melchior" => "ANÁLISIS CANÓNICO: LILITH (2ND ANGEL)\n\nFuente de la vida Lilim y de la Luna Negra. Su masa celular genera el fluido LCL. Su confinamiento crucificado con la Lanza en Central Dogma constituye el secreto mejor guardado de la jerarquía de NERV.",
          "balthasar" => "AUDITORÍA DE SEGURIDAD: HONEYPOT MAESTRO\n\nVeredicto: Honeypot intencional absoluto. Toda la infraestructura militar de Tokio-3 se diseñó alrededor de este Honeytoken. NERV usó a Lilith como cebo activo para canalizar las amenazas externas hacia un único cuello de botella táctico.",
          "casper" => "ESTADO DEL LABORATORIO (RUBY SYSTEM)\n\nClase Nerv::Angels::Lilith implementada. Variables @spear_impaled y @honeypot_active auditadas. Telemetría confirma atracción de vectores angélicos hacia Geofront."
        }
      },

      "03" => {
        id: "03",
        slug: "sachiel",
        number: 3,
        name: "Sachiel (Tercer Ángel)",
        episodes: "01, 02",
        threat_class: "Asedio Anfibio / Mutación Cinética / Regeneración de Wipe",
        mechanical_purposes: "Morfología bípeda anfibia con máscara ósea protectora y pistones cinéticos en los antebrazos capaces de perforar blindajes reforzados. Dispara rayos de energía óptica cruciformes de alta potencia desde los ojos. Capacidad de regeneración celular acelerada frente a detonaciones termonucleares limpias (N2 Mines). Capacidad de autodestrucción esférica envolvente.",
        spoilers: "Aparece 15 años después del Segundo Impacto. Supera las defensas convencionales de la ONU. Tras sobrevivir a una mina N2, regenera su cuerpo en cuestión de horas y desarrolla una segunda máscara ósea. Derrota a Shinji en su primer despliegue. Muere únicamente cuando el EVA-01 entra en modo Berserk (el alma de Yui toma el control), rompe su AT Field con las manos y destroza su núcleo rojo.",
        vulnerability: "Periodo de latencia metabólica tras sufrir daño masivo (se detiene para regenerarse) y núcleo rojo expuesto en el pecho una vez neutralizado el AT Field.",
        vulnerability_nature: "DEFECTO DE DISEÑO BIOLÓGICO INVOLUNTARIO",
        vulnerability_explanation: "Sachiel presenta una optimización biológica unidireccional: asume que su adversario depende de armas balísticas o explosivos. Carece de respuesta contra un adversario bio-mecánico cuerpo a cuerpo que posea un AT Field más denso (Eva-01 en Berserk). Su autodestrucción de pánico es un síntoma de falta de redundancia defensiva.",
        keel_seele_role: "Validación de la necesidad de NERV. Keel Lorenz utilizó el asalto de Sachiel para forzar a la ONU a ceder el mando militar absoluto y el financiamiento irrestricto a NERV, consolidando el laboratorio de Gendo.",
        cybersec_equivalent: "Persistent Zero-Day Exploit / Recovery from Rollback / Memory Corruption.",
        siem_events: [
          "siem.pattern_blue",
          "siem.wipe_declared",
          "siem.wipe_failed_regen",
          "siem.eva_deployed",
          "siem.operator_sync_low",
          "siem.eva_berserk",
          "siem.at_field_shattered",
          "siem.core_destroyed",
          "outcome=contained_uncontrolled"
        ],
        exit_code: 1,
        outcome: "contained_uncontrolled",
        magi_consensus: {
          "melchior" => "ANÁLISIS CANÓNICO: SACHIEL (3RD ANGEL)\n\nPrimera prueba de fuego tras 15 años. Su supervivencia al bombardeo N2 demostró la inutilidad de las fuerzas de defensa convencionales de la ONU. La destrucción de su núcleo requirió el estado Berserk no autorizado del EVA-01.",
          "balthasar" => "AUDITORÍA DE SEGURIDAD: DEFECTO DE DISEÑO\n\nVeredicto: Vulnerabilidad no intencional en el Ángel. Incidente de seguridad gestionado como mitigación desesperada (subir a un menor de 14 años sin entrenamiento). La contención fue descontrolada (:contained_uncontrolled).",
          "casper" => "ESTADO DEL LABORATORIO (RUBY SYSTEM)\n\nClase Nerv::Angels::Sachiel en lib/nerv/angels/sachiel.rb. TTPs T-SACHIEL-01 a 05 verificadas. Test unitario test_sachiel.rb pasa con aserciones rigurosas."
        }
      },

      "04" => {
        id: "04",
        slug: "shamshel",
        number: 4,
        name: "Shamshel (Cuarto Ángel)",
        episodes: "03",
        threat_class: "Insectoide de Plasma / Fustas Térmicas / Vector de Extracción S2",
        mechanical_purposes: "Forma artrópoda voladora y eréctil con látigos gemelos de plasma energético capaces de cortar rascacielos y perforar aleaciones de titanio blindado. Capaz de alternar entre vuelo horizontal de alta velocidad y postura de asedio vertical.",
        spoilers: "Shinji desobedece las órdenes de retirada de Misato debido al pánico y a la presencia de sus compañeros de clase (Toji y Kensuke). En los últimos 5 segundos de energía del cable umbilical, Shinji ataca de frente y clava el Progressive Knife en el núcleo de Shamshel, quebrando la esfera y dejando el cadáver del Ángel prácticamente intacto.",
        vulnerability: "Exposición frontal directa del núcleo rojo en la parte superior del abdomen cuando se yergue para atacar, y debilidad crítica a quemarropa frente a armas punzocortantes de alta frecuencia.",
        vulnerability_nature: "DEFECTO DE DISEÑO BIOLÓGICO INVOLUNTARIO",
        vulnerability_explanation: "Especialización para combate a media distancia. Los látigos de plasma requieren un radio de oscilación mínimo para generar torque cortante; a distancia cero (grappling), el Ángel queda indefenso ante estocadas directas al núcleo.",
        keel_seele_role: "Adquisición del Motor S2 por parte de NERV y SEELE. Al morir sin autodestrucción, Shamshel permitió a la Sección de Análisis Tecnológico (Ritsuko Akagi) recuperar por primera vez una muestra física casi intacta de un Motor S2 biológico, vital para la investigación secreta de los EVAs de Producción en Masa.",
        cybersec_equivalent: "Command & Control Exfiltration / Stolen Hardware Artifact / Forensic Capture.",
        siem_events: [
          "siem.pattern_blue",
          "siem.umbilical_severed",
          "siem.close_quarters_combat",
          "siem.knife_inserted",
          "siem.core_fractured",
          "siem.s2_tissue_retrieved",
          "outcome=contained_controlled"
        ],
        exit_code: 0,
        outcome: "contained_controlled",
        magi_consensus: {
          "melchior" => "ANÁLISIS CANÓNICO: SHAMSHEL (4TH ANGEL)\n\nDerrota agónica en el segundo 00:01 de energía residual. El cadáver intacto proveyó a NERV el primer espécimen de investigación biomédica y datos sobre el órgano de energía continua S2.",
          "balthasar" => "AUDITORÍA DE SEGURIDAD: FALLO DE FACTOR HUMANO\n\nEl operador rompió la cadena de mando. Aunque la contención técnica fue exitosa, el riesgo de pérdida total de la unidad fue de 99.8%. No hubo control preventivo en la preservación del cable umbilical.",
          "casper" => "ESTADO DEL LABORATORIO (RUBY SYSTEM)\n\nClase Nerv::Angels::Shamshel operativa. Simulación de corte de cordón umbilical y estocada final reproduce el incidente del ep 03 con código de salida limpio."
        }
      },

      "05" => {
        id: "05",
        slug: "ramiel",
        number: 5,
        name: "Ramiel (Quinto Ángel)",
        episodes: "05, 06",
        threat_class: "Fortaleza Geométrica / Perforación Activa / Rayo de Partículas Aceleradas",
        mechanical_purposes: "Octaedro flotante azul perfecto con AT Field de densidad geométrica absoluta (refleja cualquier proyectil convencional). Sistema de detección de amenaza activa en 360 grados de área continua. Rayo de partículas cargadas de escala megavatio que aniquila blancos al instante de entrar en su radio de combate. Taladro térmico colosal de perforación geológica hacia el Geofront.",
        spoilers: "Casi mata a Shinji al dispararle a quemarropa apenas sale por el elevador de Tokio-3. Para destruirlo, Misato diseña la Operación Yashima: requisa toda la red eléctrica de Japón para alimentar un Rifle de Positrones sniper. Rei (Eva-00) utiliza un escudo térmico de transbordador espacial para interceptar el rayo de Ramiel sacrificando su mecha, permitiendo a Shinji efectuar un segundo disparo que atraviesa el AT Field y volatiliza el núcleo de Ramiel.",
        vulnerability: "Latencia de enfriamiento del sistema de disparo y posición fija del núcleo en el centro geométrico absoluto del octaedro durante la perforación.",
        vulnerability_nature: "DEFECTO DE DISEÑO POR RIGIDEZ GEOMÉTRICA",
        vulnerability_explanation: "Al anclarse en la superficie para perforar las 22 capas del Geofront con su taladro, Ramiel se convirtió en un objetivo estático predecible. Su campo AT, aunque colosal, tiene un umbral de ruptura lineal ante un rayo de energía concentrada superior a 180 millones de kilovatios.",
        keel_seele_role: "Prueba de la doctrina de sacrificio de NERV. Ramiel amenazó con perforar el Dogma en menos de 10 horas. Obligó a Keel Lorenz a acelerar la movilización del Eva-02 y validó que solo el armamento experimental concentrado podía compensar la debilidad física de los EVAs frente a los Ángeles superiores.",
        cybersec_equivalent: "Static High-Value Target / DDoS Interception / Penetration Testing Sniper.",
        siem_events: [
          "siem.pattern_blue",
          "siem.sniper_lock",
          "siem.drill_approaching_geofront",
          "siem.national_grid_mobilized",
          "siem.positron_rifle_charged",
          "siem.ablative_shield_melted",
          "siem.second_shot_penetration",
          "siem.core_destroyed",
          "outcome=contained_controlled"
        ],
        exit_code: 0,
        outcome: "contained_controlled",
        magi_consensus: {
          "melchior" => "ANÁLISIS CANÓNICO: RAMIEL (5TH ANGEL)\n\nEl asedio más destructivo a nivel de infraestructura. La Operación Yashima requirió 180 millones de kilovatios y el sacrificio térmico del prototipo EVA-00 para lograr la penetración balística.",
          "balthasar" => "AUDITORÍA DE SEGURIDAD: COMPENSACIÓN POR FUERZA BRUTA\n\nFallo preventivo masivo: el sistema de detección temprana de Tokio-3 no anticipó el rango de fuego de partículas. La respuesta fue una mitigación industrial extrema con coste energético multimillonario.",
          "casper" => "ESTADO DEL LABORATORIO (RUBY SYSTEM)\n\nClase Nerv::Angels::Ramiel y módulo OperationYashima validados. Pruebas de absorción de escudo ablativo y penetración del rifle de positrones pasan exitosamente."
        }
      },

      "06" => {
        id: "06",
        slug: "gaghiel",
        number: 6,
        name: "Gaghiel (Sexto Ángel)",
        episodes: "08",
        threat_class: "Depredador Acuático / Caza de Embrión / Emboscada en Alta Mar",
        mechanical_purposes: "Entidad biomórfica de escala titánica semejante a un pez abisal prehistórico. Capacidad de navegación submarina supersónica, mandíbulas capaces de partir portaaviones por la mitad y núcleo protegido en la cavidad interna de su boca.",
        spoilers: "Ataca a la flota aeronaval de la ONU en el Pacífico. Asuka arrastra a Shinji al Eva-02 (que opera con equipo básico no sumergible). El Ángel engulle al Eva-02 en el lecho marino. Misato ordena hundir dos acorazados de combate (Novorossiysk e Iowa) dentro de las fauces abiertas de Gaghiel y abrir fuego de cañón principal a quemarropa directo al núcleo.",
        vulnerability: "Apertura obligatoria de sus fauces para consumir presas masivas, dejando su núcleo sin la barrera de su AT Field frente a artillería interna.",
        vulnerability_nature: "HONEYPOT DELIBERADO DE RYŌJI KAJI Y GENDO IKARI",
        vulnerability_explanation: "Gaghiel no atacó la flota por coincidencia geográfica: Ryōji Kaji transportaba en secreto en su maletín el embrión fosilizado de Adán. Kaji y Gendo usaron conscientemente el embrión de Adán como un señuelo activo (honeypot) para atraer al Ángel hacia una trampa marítima, forzando la primera prueba de combate real de Asuka y ocultando el contrabando de Adán hacia Tokio-3.",
        keel_seele_role: "Keel Lorenz desconocía que el embrión de Adán estaba en ese convoy. Para SEELE, el incidente fue visto como una prueba para verificar si el Eva-02 (construido en Alemania bajo estándares de SEELE) estaba listo para ser transferido a Tokio-3.",
        cybersec_equivalent: "Supply Chain Interception / Bait-and-Switch / Active Decoy Deployment.",
        siem_events: [
          "siem.pattern_blue",
          "siem.maritime_convoy_attacked",
          "siem.adam_embryo_detected_by_threat",
          "siem.eva02_underwater_intake",
          "siem.warships_sacrificed",
          "siem.point_blank_salvo",
          "siem.core_destroyed",
          "outcome=contained_controlled"
        ],
        exit_code: 0,
        outcome: "contained_controlled",
        magi_consensus: {
          "melchior" => "ANÁLISIS CANÓNICO: GAGHIEL (6TH ANGEL)\n\nCombate naval no convencional. Demostró la efectividad de las maniobras tácticas de Misato utilizando buques de guerra de la flota como arietes explosivos internos contra el núcleo.",
          "balthasar" => "AUDITORÍA DE SEGURIDAD: OPERACIÓN CON CEBO ACTIVO\n\nVeredicto: Operación encubierta de Gendo y Kaji. Se puso en riesgo una flota de la ONU de 12.000 millones de dólares para contrabandear a Adán como Honeytoken sin declarar a la Comisión de SEELE.",
          "casper" => "ESTADO DEL LABORATORIO (RUBY SYSTEM)\n\nClase Nerv::Angels::Gaghiel y FleetBattery operativas. Simulación de hundimiento y salva a bocajarro ejecutada con aserciones de Minitest limpias."
        }
      },

      "07" => {
        id: "07",
        slug: "israfel",
        number: 7,
        name: "Israfel (Séptimo Ángel)",
        episodes: "09",
        threat_class: "Fisión Mitótica / Núcleos Gemelos / Duplicación de Amenaza",
        mechanical_purposes: "Entidad humanoide capaz de dividirse mitóticamente en dos seres autónomos completos (Kō y Otsu / Alfa y Beta), cada uno con extremidades cortantes, agilidad gimnástica y núcleo independiente. Puede reunificarse a voluntad.",
        spoilers: "Asuka parte a Israfel por la mitad creyendo ganar; el Ángel se divide en dos y derrota humillantemente a los Eva-01 y Eva-02. Misato diseña un plan estricto de sincronización coreografiada de 62 segundos al ritmo de un piano clásico para que Shinji y Asuka ataquen al unísono y destruyan ambos núcleos en el mismo microsegundo.",
        vulnerability: "Dependencia simbiótica de núcleos. Si ambos núcleos reciben impactos críticos en el mismo instante exacto, la entidad sufre un colapso de resonancia y muere.",
        vulnerability_nature: "DEFECTO DE DISEÑO EN TOLERANCIA A FALLOS DISTRIBUIDOS",
        vulnerability_explanation: "Israfel utiliza balanceo de carga biológico pero carece de aislamiento de fallas bizantinas: al no poder tolerar la desincronización de sus dos nodos en el mismo ciclo de reloj, una ejecución sincronizada en paralelo neutraliza el clúster.",
        keel_seele_role: "Prueba de sincronización dual. Keel Lorenz analizó la capacidad de NERV para sincronizar armónicamente a dos operadores adolescentes con un patrón rítmico, principio que SEELE adoptaría para el diseño de la telemetría de los Dummy Plugs de la Serie EVA.",
        cybersec_equivalent: "Dual-Node Cluster Partition / Race Condition / Split-Brain Failure.",
        siem_events: [
          "siem.pattern_blue",
          "siem.mitosis_split_detected",
          "siem.initial_defeat_recorded",
          "siem.synchronization_training_62s",
          "siem.dual_dance_executed",
          "siem.simultaneous_core_strike",
          "outcome=contained_controlled"
        ],
        exit_code: 0,
        outcome: "contained_controlled",
        magi_consensus: {
          "melchior" => "ANÁLISIS CANÓNICO: ISRAFEL (7TH ANGEL)\n\nLa batalla más estética de la serie. Exigió 62 segundos de movimientos coordinados al milímetro para impactar los dos núcleos en el mismo fotograma.",
          "balthasar" => "AUDITORÍA DE SEGURIDAD: DEFECTO DE CLÚSTER\n\nVeredicto: Arquitectura distribuida sin quórum. Explotación de condición de carrera (race condition) mediante ejecución simultánea en paralelo de dos hilos (Eva-01 y Eva-02).",
          "casper" => "ESTADO DEL LABORATORIO (RUBY SYSTEM)\n\nClase Nerv::Angels::Israfel y módulo DualPlug/SyncClock verificados. Simulación de ataque simultáneo implementada en lib/nerv/angels/israfel.rb."
        }
      },

      "08" => {
        id: "08",
        slug: "sandalphon",
        number: 8,
        name: "Sandalphon (Octavo Ángel)",
        episodes: "10",
        threat_class: "Crisálida Ígnea / Metamorfosis en Magma / Presión Extrema",
        mechanical_purposes: "Descubierto en estado de crisálida embrionaria dentro del magma del volcán Asama a cientos de metros de profundidad. Metamorfosea rápidamente en una criatura semejante a un pez fósil con coraza biológica capaz de resistir miles de atmósferas y temperaturas superiores a 1.000 °C.",
        spoilers: "NERV intenta capturar al Ángel vivo en su huevo usando el traje D-type del Eva-02. El huevo despierta prematuramente y muerde el cordón umbilical de Asuka en el magma profundo. Shinji baja a rescatarla. Asuka usa el refrigerante criogénico de su traje directamente en la boca de Sandalphon: la dilatación y contracción térmica súbita fractura la coraza y Asuka clava su cuchillo progresivo en el núcleo.",
        vulnerability: "Fragilidad al choque térmico extremo (expansión y contracción repentina de materiales biológicos mediante refrigerante criogénico).",
        vulnerability_nature: "DEFECTO DE DISEÑO BIOLÓGICO INVOLUNTARIO",
        vulnerability_explanation: "Especialización hipertrofiada para ambientes de calor constante. No posee defensas contra una caída violenta de temperatura en un área corporal focalizada, lo que induce fatiga y agrietamiento de su exoesqueleto.",
        keel_seele_role: "Freno a las ambiciones de Gendo. SEELE reprendió severamente a Gendo por arriesgar la pérdida de un EVA con el fin de capturar un Ángel vivo. Keel sospechaba que Gendo quería el embrión para fines de hibridación no autorizados.",
        cybersec_equivalent: "Environmental Boundary Exploit / Hardware Stress Testing / Thermal Shock Fault.",
        siem_events: [
          "siem.pattern_blue",
          "siem.magma_dive_initiated",
          "siem.capture_cage_deployed",
          "siem.premature_hatching",
          "siem.cryogenic_fluid_injected",
          "siem.thermal_expansion_shatter",
          "siem.core_destroyed",
          "outcome=contained_controlled"
        ],
        exit_code: 0,
        outcome: "contained_controlled",
        magi_consensus: {
          "melchior" => "ANÁLISIS CANÓNICO: SANDALPHON (8TH ANGEL)\n\nIncursión en magma a alta presión. La captura biológica fracasó por el despertar súbito de la crisálida, forzando la destrucción in situ mediante refrigerante.",
          "balthasar" => "AUDITORÍA DE SEGURIDAD: RIESGO INACEPTABLE DE CAPTURA\n\nIntento de adquisición de malware 'en caliente'. NERV casi pierde la unidad Eva-02 por una ambición de recolección de muestras sin protocolos de contención primaria.",
          "casper" => "ESTADO DEL LABORATORIO (RUBY SYSTEM)\n\nClase Nerv::Angels::Sandalphon y módulo MagmaEnvironment operativos. Pruebas de choque térmico y destrucción de núcleo en magma pasan en Minitest."
        }
      },

      "09" => {
        id: "09",
        slug: "matarael",
        number: 9,
        name: "Matarael (Noveno Ángel)",
        episodes: "11",
        threat_class: "Infiltración Corrosiva / Secreción Ácida / Asalto en Apagón",
        mechanical_purposes: "Entidad arácnida cuadrúpeda con patas gigantescas y múltiples ojos falsos. Su ojo inferior central secreta un ácido sulfúrico concentrado corrosivo capaz de perforar aleaciones de titanio blindado de Tokio-3 mediante disolución molecular continua.",
        spoilers: "Llega durante un apagón eléctrico general provocado por sabotaje industrial humano. Sin computadoras MAGI ni silos de lanzamiento, los pilotos descienden a pie. Con un despliegue manual, Eva-02 contiene el ácido con su propio cuerpo; Eva-00 recupera un rifle palet; y Eva-01 acribilla el ojo central y el núcleo de Matarael a quemarropa.",
        vulnerability: "Fragilidad extrema de su estructura corporal una vez neutralizado su goteo de ácido. Su núcleo inferior queda completamente desprotegido ante fuego balístico directo.",
        vulnerability_nature: "DEFECTO DE DISEÑO BIOLÓGICO SEVERO",
        vulnerability_explanation: "Vector de ataque unidimensional y lento (goteo gravitacional vertical). Carece de movilidad ofensiva horizontal y no puede defender su abdomen inferior si el objetivo se posiciona debajo de él.",
        keel_seele_role: "Prueba de la redundancia analógica de NERV. Keel Lorenz observó que, a pesar de que el sabotaje civil cortó la energía de Tokio-3, la doctrina de mando humano de NERV fue capaz de eliminar la amenaza sin asistencia informática.",
        cybersec_equivalent: "Slowloris / Resource Exhaustion via Lixiviation / Air-Gapped Manual Failover.",
        siem_events: [
          "siem.pattern_blue",
          "siem.tokyo3_blackout_active",
          "siem.analog_manual_launch",
          "siem.acid_stream_blocked",
          "siem.pallet_rifle_salvo",
          "siem.core_destroyed",
          "outcome=contained_controlled"
        ],
        exit_code: 0,
        outcome: "contained_controlled",
        magi_consensus: {
          "melchior" => "ANÁLISIS CANÓNICO: MATARAEL (9TH ANGEL)\n\nNeutralizado durante un corte total de energía de Tokio-3. La coordinación física de los tres EVAs compensó la ausencia de soporte de las supercomputadoras MAGI.",
          "balthasar" => "AUDITORÍA DE SEGURIDAD: RESILIENCIA EN MODO DEGRADADO\n\nVeredicto: Excelente ejercicio de BCP/DRP (Business Continuity Plan). El laboratorio sobrevivió a un apagón total gracias al protocolo analógico de contingencia.",
          "casper" => "ESTADO DEL LABORATORIO (RUBY SYSTEM)\n\nClase Nerv::Angels::Matarael y módulo AnalogLaunch validados. Código simula exitosamente la victoria con MAGI apagada y rifle palet manual."
        }
      },

      "10" => {
        id: "10",
        slug: "sahaquiel",
        number: 10,
        name: "Sahaquiel (Décimo Ángel)",
        episodes: "12",
        threat_class: "Bombardero Cinético Orbital / Impacto Masivo / Meteorito Guiado",
        mechanical_purposes: "Ameba bio-mecánica gigante que orbita la estratosfera terrestre. Lanza fragmentos de su cuerpo como bombas cinéticas para calibrar su trayectoria con el fin de dejarse caer como un meteorito colosal sobre el Geofront, usando su masa y AT Field para aniquilar a NERV.",
        spoilers: "Misato diseña un plan suicida con probabilidad de éxito menor al 1%: desplegar a los tres EVAs corriendo a toda velocidad a lo largo de Tokio-3 para atrapar la caída del Ángel con sus manos. Eva-01 amortigua el impacto sufriendo quemaduras severas; Eva-00 frena el descenso; y Asuka clava su cuchillo progresivo en el núcleo móvil dentro del ojo del Ángel.",
        vulnerability: "Ataque kamikaze irreversible. Una vez iniciada la caída terminal, si el impacto cinético inicial es amortiguado antes de tocar suelo, el cuerpo del Ángel queda inmovilizado y a merced de fuego flanqueador.",
        vulnerability_nature: "DEFECTO DE DISEÑO ESTRATÉGICO",
        vulnerability_explanation: "Conversión de toda la entidad en un misil guiado de un solo uso. Carece de capacidad de aborto o maniobras de escape tras la desaceleración atmosférica.",
        keel_seele_role: "Alarma roja para SEELE. Keel Lorenz vio con horror que NERV dependía de apuestas operativas con un 99% de probabilidad de muerte para Tokio-3. Aumentó la presión para eliminar a los pilotos humanos y reemplazarlos con Dummy Plugs.",
        cybersec_equivalent: "Kinetic Cyber-Physical Attack / Unrecoverable Crash / Suicide Payload.",
        siem_events: [
          "siem.pattern_blue",
          "siem.orbital_trajectory_locked",
          "siem.kinetic_bombing_calibrated",
          "siem.three_eva_sprint_initiated",
          "siem.eva01_impact_catch",
          "siem.core_flank_stabbed",
          "outcome=contained_controlled"
        ],
        exit_code: 0,
        outcome: "contained_controlled",
        magi_consensus: {
          "melchior" => "ANÁLISIS CANÓNICO: SAHAQUIEL (10TH ANGEL)\n\nAtaque orbital masivo. La intercepción a mano limpia de una masa cinético-gravitacional a velocidad de reentrada salvó al Geofront por una fracción de segundo.",
          "balthasar" => "AUDITORÍA DE SEGURIDAD: RIESGO CRÍTICO NO MITIGADO\n\nOperación aprobada por NERV basada en azar estadístico (<1% de éxito). Demuestra la fragilidad de depender de intervenciones milagrosas de última hora.",
          "casper" => "ESTADO DEL LABORATORIO (RUBY SYSTEM)\n\nClase Nerv::Angels::Sahaquiel y módulo ImpactClock probados. Simulación de carrera a máxima velocidad y frenado de AT Field confirmada."
        }
      },

      "11" => {
        id: "11",
        slug: "ireul",
        number: 11,
        name: "Ireul (Undécimo Ángel)",
        episodes: "13",
        threat_class: "Malware Nanobiológico / Mutación Acelerada / Infección de MAGI",
        mechanical_purposes: "Entidad microscópica en forma de colonias de microcircuitos vivos autorreplicantes. Se infiltra por los conductos de corrosión, infecta el hardware de soporte y penetra los superordenadores MAGI, reprogramando Melchior y Balthasar para forzar la autodestrucción de NERV.",
        spoilers: "Los EVAs son inútiles ante una amenaza que vive en los chips. Ritsuko Akagi descubre que el Ángel evoluciona a velocidad extrema. En vez de atacarlo (lo que aceleraría su mutación defensiva), Ritsuko usa a Casper e inyecta un programa trampa de 'Evolución Forzada' que le ofrece al virus el camino hacia la autodestrucción y coexistencia pasiva. Ireul absorbe el código y se autoextingue.",
        vulnerability: "Imperativo biológico de evolución infinita sin validación de sanidad de código; no puede rechazar nueva información si se presenta como un salto evolutivo superior.",
        vulnerability_nature: "DEFECTO DE DISEÑO BIOLÓGICO Y DE ARQUITECTURA",
        vulnerability_explanation: "Ireul es un virus biológico sin cortafuegos semántico: carece de verificación de firmas criptográficas para el código evolutivo que absorbe, permitiendo un exploit de buffer overflow evolutivo.",
        keel_seele_role: "Revelación de la vulnerabilidad de las MAGI para SEELE. Keel Lorenz descubrió que la fortaleza de NERV podía ser derribada desde el plano lógico. SEELE utilizó los registros de la infección de Ireul para preparar el ciberataque masivo contra las MAGI en The End of Evangelion.",
        cybersec_equivalent: "Polymorphic Living-off-the-Land Malware / Zero-Day Firmware Worm / Evolutionary Overflow.",
        siem_events: [
          "siem.pattern_blue",
          "siem.pribnow_box_corrosion",
          "siem.melchior_hijacked",
          "siem.balthasar_compromised",
          "siem.casper_isolated",
          "siem.forced_evolution_program_injected",
          "siem.threat_self_termination",
          "outcome=contained_controlled"
        ],
        exit_code: 0,
        outcome: "contained_controlled",
        magi_consensus: {
          "melchior" => "ANÁLISIS CANÓNICO: IREUL (11TH ANGEL)\n\nInfección informática nanobiológica directa en el núcleo de las MAGI. La supervivencia de NERV dependió del código de evolución forzada programado por la Dra. Ritsuko Akagi.",
          "balthasar" => "AUDITORÍA DE SEGURIDAD: BUFFER OVERFLOW EVOLUTIVO\n\nVeredicto: Explotación magistral de la lógica del atacante. Se transformó la fortaleza del malware (su sed de adaptación) en su vector de exterminio.",
          "casper" => "ESTADO DEL LABORATORIO (RUBY SYSTEM)\n\nClase Nerv::Angels::Ireul y módulo ForcedEvolution probados. Inyección de código suicida en Casper verify_infection_cleared pasa al 100%."
        }
      },

      "12" => {
        id: "12",
        slug: "leliel",
        number: 12,
        name: "Leliel (Duodécimo Ángel)",
        episodes: "16",
        threat_class: "Entidad Cuántica Extradimensional / Mar de Dirac / Vacío Dimensional",
        mechanical_purposes: "Esfera flotante tridimensional rayada en blanco y negro que es solo su sombra física; su cuerpo real es una sombra plana en el suelo de 680 metros de diámetro y 3 nanómetros de grosor conectada a un espacio de Dirac de dimensiones superiores.",
        spoilers: "Shinji carga imprudentemente sobre la sombra y el Eva-01 es absorbido hacia el Mar de Dirac durante 16 horas. Dentro del vacío, Shinji sufre una introspección traumática con una aparición de sí mismo. Al agotarse el soporte vital, el alma de Yui entra en Berserk extremo: desgarra al Ángel desde dentro en un baño de sangre y emerge quebrando el tejido dimensional.",
        vulnerability: "Dependencia del balance gravitatorio interno de su bolsa dimensional frente a una fuerza divina superior despierta en su interior.",
        vulnerability_nature: "DEFECTO DE DISEÑO ONTOLÓGICO",
        vulnerability_explanation: "Leliel consideró al Eva-01 como masa física inerte, desconociendo que albergaba el alma consciente y despierta de Yui Ikari, capaz de colapsar la física de su Mar de Dirac desde el interior.",
        keel_seele_role: "Alerta máxima sobre el despertar de Yui. Keel Lorenz y SEELE concluyeron que el Eva-01 no era un instrumento de NERV sino una entidad autónoma incontrolable y peligrosa para los planes de la junta directiva.",
        cybersec_equivalent: "Sandbox Escape / Dimensional Jailbreak / Hypervisor Breakdown.",
        siem_events: [
          "siem.pattern_blue",
          "siem.dirac_sea_swallow",
          "siem.life_support_depleted",
          "siem.internal_berserk_eruption",
          "siem.dimensional_tear",
          "siem.eva01_bloody_emergence",
          "outcome=contained_uncontrolled"
        ],
        exit_code: 1,
        outcome: "contained_uncontrolled",
        magi_consensus: {
          "melchior" => "ANÁLISIS CANÓNICO: LELIEL (12TH ANGEL)\n\nEl Mar de Dirac desafió la física euclidiana. La liberación del Eva-01 desde el interior demostró que la voluntad de Yui Ikari supera cualquier contención cuántica.",
          "balthasar" => "AUDITORÍA DE SEGURIDAD: SALIDA DE SANDBOX VIOLENTA\n\nEl atacante creyó aislar el proceso en una máquina virtual sellada (sandbox). La entidad contenida ejecutó un escape de privilegios absoluto (jailbreak) quebrando el hipervisor.",
          "casper" => "ESTADO DEL LABORATORIO (RUBY SYSTEM)\n\nClase Nerv::Angels::Leliel y módulo DiracSea validados. Simulación de ruptura interna y código de retorno :contained_uncontrolled pasan en el lab."
        }
      },

      "13" => {
        id: "13",
        slug: "bardiel",
        number: 13,
        name: "Bardiel (Decimotercer Ángel)",
        episodes: "17, 18",
        threat_class: "Parásito Fúngico / Infección de Cadena de Suministro / Secuestro de EVA-03",
        mechanical_purposes: "Parásito biológico fúngico de infección electromecánica. Contamina el Eva-03 durante su transporte aéreo desde EE.UU. a través de una nube cumulonimbus. Muta las extremidades del Eva-03 haciéndolas elásticas y segregando un fluido que sella el Entry Plug del piloto (Toji Suzuhara).",
        spoilers: "Shinji rehúsa pelear para no lastimar al piloto adentro ('Prefiero morir'). Gendo activa por primera vez el **Dummy Plug System**. El Eva-01, automatizado y despiadado, desmiembra al Eva-03 y aplasta el Entry Plug con sus mandíbulas, mutilando salvajemente a Toji. Shinji queda traumatizado de por vida.",
        vulnerability: "Dependencia total del chasis del Eva-03; al ser destruida la carcasa del mecha y aplastado el núcleo infectado junto al Entry Plug, el parásito perece.",
        vulnerability_nature: "HONEYPOT ESTRUCTURAL DE SEELE / ATAQUE DE SUPPLY CHAIN",
        vulnerability_explanation: "SEELE manipuló la transferencia del Eva-03 tras el desastre de la rama de Nevada (Eva-04). Sabían de las anomalías en el transporte, pero permitieron la entrega a NERV para forzar la prueba real del Dummy Plug y quebrar la resistencia psicológica y moral de Shinji Ikari.",
        keel_seele_role: "Validación del Dummy Plug como reemplazo de los pilotos humanos. Keel Lorenz comprobó que la automatización fría era infinitamente superior para la ejecución del Tercer Impacto que la empatía humana de Shinji.",
        cybersec_equivalent: "Supply Chain Compromise / Firmware Backdoor / Autonomous Agent Override.",
        siem_events: [
          "siem.pattern_blue",
          "siem.eva03_airborne_infection",
          "siem.pilot_hostage_situation",
          "siem.operator_refusal_to_engage",
          "siem.dummy_plug_engaged",
          "siem.eva03_dismemberment",
          "siem.entry_plug_crushed",
          "outcome=contained_uncontrolled"
        ],
        exit_code: 1,
        outcome: "contained_uncontrolled",
        magi_consensus: {
          "melchior" => "ANÁLISIS CANÓNICO: BARDIEL (13TH ANGEL)\n\nEl incidente más trágico de la serie. El secuestro biológico del EVA-03 forzó el despliegue del Dummy Plug y la mutilación de Toji Suzuhara a manos del Eva-01.",
          "balthasar" => "AUDITORÍA DE SEGURIDAD: ATAQUE DE SUPPLY CHAIN\n\nVeredicto: Compromiso deliberado de la cadena de suministro gestionado por SEELE. El Dummy Plug es un vector de deshumanización que violó todos los principios éticos de seguridad.",
          "casper" => "ESTADO DEL LABORATORIO (RUBY SYSTEM)\n\nClase Nerv::Angels::Bardiel y módulo DummyPlug verificados en lib/nerv/angels/bardiel.rb. Asignación de Toji y ejecución del Dummy Plug validadas."
        }
      },

      "14" => {
        id: "14",
        slug: "zeruel",
        number: 14,
        name: "Zeruel (Decimocuarto Ángel)",
        episodes: "19",
        threat_class: "Destructor Masivo de Fortaleza / Brazos Cortantes / Donante Forzado del Motor S2",
        mechanical_purposes: "La entidad de fuerza bruta más destructiva de la serie. Brazos de láminas plegables afiladas como hojas de afeitar que decapitan EVAs a distancia; rayos ópticos devastadores que perforan 18 capas del Geofront de un disparo; párpado óseo impenetrable sobre su núcleo.",
        spoilers: "Shinji ha renunciado a NERV tras el incidente de Bardiel. Zeruel decapita y le corta los brazos al Eva-02 de Asuka, resiste el ataque suicida N2 de Rei y entra al Centro de Mando de NERV. Shinji regresa, pero el Eva-01 se queda sin energía. Zeruel perfora el pecho del Eva-01. En ese instante, el Eva-01 alcanza el 400% de sincronía (Berserk), descuartiza a Zeruel, lo devora vivo y **se come su Motor S2**, logrando autonomía energética infinita y convirtiéndose en un dios.",
        vulnerability: "Exposición momentánea del núcleo al retraer sus brazos para emitir su rayo óptico a quemarropa.",
        vulnerability_nature: "DEFECTO DE DISEÑO BIOLÓGICO FRENTE AL DESPERTAR DE YUI",
        vulnerability_explanation: "Zeruel confiaba ciegamente en su superioridad de blindaje y daño masivo; fue incapaz de prever que el Eva-01 no era un autómata mecánico sino un dios carnívoro durmiente con capacidad de asimilación biológica.",
        keel_seele_role: "El punto de quiebre absoluto entre SEELE y Gendo. Al comerse el Motor S2 de Zeruel, el Eva-01 unió el Fruto de la Vida con el Fruto del Conocimiento. Keel Lorenz entra en pánico al perder el control energético sobre NERV y decide acelerar la destrucción armada de Gendo.",
        cybersec_equivalent: "Advanced Persistent Threat / Physical Datacenter Breach / Data Ingestion Predation.",
        siem_events: [
          "siem.pattern_blue",
          "siem.geofront_layers_breached",
          "siem.eva02_decapitated",
          "siem.command_center_breach",
          "siem.eva01_power_depleted",
          "siem.eva01_berserk_400",
          "siem.zeruel_consumed_alive",
          "siem.s2_engine_assimilated",
          "outcome=contained_uncontrolled"
        ],
        exit_code: 1,
        outcome: "contained_uncontrolled",
        magi_consensus: {
          "melchior" => "ANÁLISIS CANÓNICO: ZERUEL (14TH ANGEL)\n\nAsalto directo al Centro de Mando. Culminó con el canibalismo predatorio del Eva-01 devorando el Motor S2, rompiendo toda subordinación a la red de energía externa.",
          "balthasar" => "AUDITORÍA DE SEGURIDAD: BRECHA FÍSICA Y ADQUISICIÓN DE ROOT\n\nVeredicto: La mayor victoria de la APT de Yui Ikari. Al alimentarse de Zeruel, el Eva-01 adquirió privilegios de superusuario (Root) absolutos e irrevocables frente a SEELE.",
          "casper" => "ESTADO DEL LABORATORIO (RUBY SYSTEM)\n\nClase Nerv::Angels::Zeruel y módulo S2Organ validados en lib/nerv/angels/zeruel.rb. Telemetría de asimilación biológica y ganancia de energía continua verificada."
        }
      },

      "15" => {
        id: "15",
        slug: "arael",
        number: 15,
        name: "Arael (Decimoquinto Ángel)",
        episodes: "22",
        threat_class: "Ataque Psíquico Orbital / Sonda Psicoanalítica / Expulsión de la Lanza",
        mechanical_purposes: "Entidad alada luminosa suspendida en órbita geoestacionaria fuera del alcance balístico terrestre. Emite un rayo de luz visible modulado que penetra la barrera hematoencefálica y el alma del piloto, forzando la mente a revivir sus traumas más oscuros y desintegrando su ego.",
        spoilers: "Arael quiebra mentalmente a Asuka en el Eva-02, dejándola catatónica y con tasa de sincronización cero. Gendo Ikari ordena a Rei (Eva-00) bajar al Dogma Central, retirar la **Lanza de Longinus** de Lilith y lanzarla al espacio exterior. La Lanza atraviesa la estratosfera, perfora a Arael instantáneamente y se pierde para siempre en la órbita de la Luna.",
        vulnerability: "Inmunidad balística convencional pero vulnerabilidad absoluta a la Lanza de Longinus (única arma capaz de atravesar cualquier AT Field a distancias astronómicas).",
        vulnerability_nature: "HONEYPOT Y GAMBITO ESTRATÉGICO DE GENDO CONTRA SEELE",
        vulnerability_explanation: "Arael era una amenaza real, pero Gendo utilizó la crisis intencionalmente para desobedecer a SEELE y enviar la Lanza de Longinus a la Luna. SEELE necesitaba la Lanza para su propio ritual de Instrumentalidad; al deshacerse de ella con el pretexto de matar a Arael, Gendo saboteó la llave maestra de Keel Lorenz.",
        keel_seele_role: "Ruptura diplomática irreversible. Keel Lorenz y el comité interrogan a Gendo y descubren que ha neutralizado a la Lanza y dejado fuera de combate a Asuka para monopolizar el final de la serie.",
        cybersec_equivalent: "Long-Range Telemetry Probe / Cognitive Warfare / Critical Key Exfiltration.",
        siem_events: [
          "siem.pattern_blue",
          "siem.orbital_psychic_beam",
          "siem.asuka_mental_collapse",
          "siem.sync_rate_zero",
          "siem.spear_retrieved_from_lilith",
          "siem.orbital_spear_throw",
          "siem.angel_annihilated",
          "siem.spear_lost_in_lunar_orbit",
          "outcome=contained_controlled"
        ],
        exit_code: 0,
        outcome: "contained_controlled",
        magi_consensus: {
          "melchior" => "ANÁLISIS CANÓNICO: ARAEL (15TH ANGEL)\n\nAtaque psicológico a distancia orbital. Forzó la extracción de la Lanza de Longinus de Lilith y su posterior pérdida en la gravedad lunar.",
          "balthasar" => "AUDITORÍA DE SEGURIDAD: GAMBITO DE GENDO IKARI\n\nVeredicto: Operación de contramedida asimétrica. Gendo aprovechó la amenaza para deshacerse de la Lanza de Longinus, saboteando el plan de contingencia de Keel Lorenz.",
          "casper" => "ESTADO DEL LABORATORIO (RUBY SYSTEM)\n\nClase Nerv::Angels::Arael y módulos MentalBeam y SpearOfLonginus operativos en lib/nerv/angels/arael.rb. Simulación de lanzamiento orbital pasa."
        }
      },

      "16" => {
        id: "16",
        slug: "armisael",
        number: 16,
        name: "Armisael (Decimosexto Ángel)",
        episodes: "23",
        threat_class: "Hélicoidal de Bio-Fusión / Vector Genético / Autodestrucción de Rei",
        mechanical_purposes: "Anillo flotante de luz semejante a una doble hélice de ADN. Puede desenrollarse como un filamento de perforación biológica que penetra el Entry Plug del Eva-00, buscando la fusión celular y anímica con Rei Ayanami para comunicarse y asimilarla.",
        spoilers: "Armisael infecta al Eva-00 y se fusiona con Rei II, haciéndole sentir la tristeza y soledad compartida. Cuando Armisael comienza a atrapar también al Eva-01, Rei II invierte su AT Field hacia adentro, condensa al Ángel dentro del Eva-00 y activa la **autodestrucción nuclear de su unidad**, vaporizándose junto con gran parte de Tokio-3 para salvar a Shinji. Gendo presenta luego a Rei III.",
        vulnerability: "Vulnerabilidad derivada de la fusión simbiótica. Al fusionarse físicamente con su presa, comparte el daño celular absoluto si el huésped decide inmolarse.",
        vulnerability_nature: "DEFECTO DE DISEÑO POR INGENUIDAD SIMBIÓTICA",
        vulnerability_explanation: "Armisael carecía de comprensión del concepto humano del autosacrificio altruista: no concibió que un clon biológico (Rei II) prefiriera destruirse a sí misma antes que permitir la asimilación del Eva-01.",
        keel_seele_role: "Eliminación del Eva-00 y forzamiento del final. Con el Eva-00 destruido y el Eva-02 inoperativo, SEELE sabe que ha llegado el momento de jugar su última carta: enviar a su propio emisario, Kaworu Nagisa.",
        cybersec_equivalent: "Symbiotic Worm / Host Takeover / Self-Destruct Node Sacrifice.",
        siem_events: [
          "siem.pattern_blue",
          "siem.dna_helix_fusion_attempt",
          "siem.telepathic_empathy_probe",
          "siem.eva01_assisting",
          "siem.at_field_inversion",
          "siem.eva00_self_destruction",
          "siem.tokyo3_basin_vaporized",
          "outcome=contained_uncontrolled"
        ],
        exit_code: 1,
        outcome: "contained_uncontrolled",
        magi_consensus: {
          "melchior" => "ANÁLISIS CANÓNICO: ARMISAEL (16TH ANGEL)\n\nFusión biológica en anillo helicoidal. Concluyó con la inmolación del prototipo Eva-00 y el sacrificio heroico de la segunda Rei Ayanami para proteger a Shinji.",
          "balthasar" => "AUDITORÍA DE SEGURIDAD: SACRIFICIO DE NODO\n\nVeredicto: Mitigación destructiva extrema (Node Sacrifice). Ante una infección total de la memoria del proceso, el operador detonó la máquina para evitar el desbordamiento hacia la red principal.",
          "casper" => "ESTADO DEL LABORATORIO (RUBY SYSTEM)\n\nClase Nerv::Angels::Armisael y módulo NodeSacrifice probados en lib/nerv/angels/armisael.rb. Aserciones de sacrificio de Rei II validadas."
        }
      },

      "17" => {
        id: "17",
        slug: "tabris",
        number: 17,
        name: "Tabris / Kaworu Nagisa (Decimoséptimo Ángel)",
        episodes: "24",
        threat_class: "Auditor Encubierto de SEELE / Libre Albedrío / Infiltración en el Dogma",
        mechanical_purposes: "Ángel con forma de adolescente humano portador del alma de Adán. Puede manipular y pilotar remotamente cualquier unidad EVA a distancia sin piloto (Eva-02); genera el AT Field más denso jamás medido por las MAGI ('la luz del alma'); levitación y paso de barreras del Dogma Central.",
        spoilers: "Enviado por SEELE como el Quinto Niño. Gana el amor incondicional de Shinji. Desciende al Terminal Dogma manipulando al Eva-02. Al llegar ante el ser crucificado, descubre el gran secreto: no es Adán, sino Lilith. Comprendiendo la trampa de SEELE y sabiendo que el contacto exterminaría a los Lilim, Kaworu elige conscientemente morir y le ruega a Shinji que lo aplaste. Tras 64 segundos de agonía musical con el Himno de la Alegría, el Eva-01 aplasta a Kaworu.",
        vulnerability: "El libre albedrío consciente y la empatía con la humanidad. Kaworu decidió voluntariamente no iniciar el Tercer Impacto para que la humanidad pudiera existir.",
        vulnerability_nature: "EL TROYANO Y HONEYPOT DEFINITIVO DE LORENZ KEEL Y SEELE",
        vulnerability_explanation: "Keel Lorenz envió deliberadamente a Tabris como un Caballo de Troya para saltarse la autoridad de Gendo Ikari. Sin embargo, SEELE le mintió a Kaworu haciéndole creer que en el Dogma estaba Adán. El descubrimiento de Lilith expuso la trampa de SEELE, y el libre albedrío de Kaworu saboteó el guion de Keel.",
        keel_seele_role: "Fin de los Ángeles de Adán. Según los Manuscritos del Mar Muerto, con la caída de Tabris concluía la serie de Ángeles. Con su muerte, SEELE ya no necesitó a NERV y ordenó la invasión militar inmediata del cuartel general para iniciar la Instrumentalidad Lilim.",
        cybersec_equivalent: "Insider Threat / Trojan Horse Auditor / Conscientious Objector Exploit.",
        siem_events: [
          "siem.pattern_blue",
          "siem.fifth_child_infiltrated",
          "siem.remote_eva02_hijack",
          "siem.terminal_dogma_descent",
          "siem.target_confusion_lilith_not_adam",
          "siem.free_will_choice_aborted",
          "siem.eva01_operator_crush",
          "outcome=contained_uncontrolled"
        ],
        exit_code: 1,
        outcome: "contained_uncontrolled",
        magi_consensus: {
          "melchior" => "ANÁLISIS CANÓNICO: TABRIS / KAWORU NAGISA (17TH ANGEL)\n\nEl último Ángel enviado por SEELE. Al constatar que el ser en el Dogma era Lilith y no Adán, eligió el autosacrificio para legar el futuro a la humanidad.",
          "balthasar" => "AUDITORÍA DE SEGURIDAD: CABALLO DE TROYA DE SEELE\n\nVeredicto: Infiltración de alto nivel de SEELE frustrada por el libre albedrío del auditor. La negativa de Tabris a activar el exploit forzó a Keel a recurrir a la violencia militar en The End of Evangelion.",
          "casper" => "ESTADO DEL LABORATORIO (RUBY SYSTEM)\n\nClase Nerv::Angels::Tabris y módulos FifthChild/FreeWill implementados. Prueba test_target_confusion y crushed_by! pasan con 100% de éxito."
        }
      },

      "18" => {
        id: "18",
        slug: "lilim",
        number: 18,
        name: "Lilim / La Humanidad (Decimoctavo Ángel)",
        episodes: "25, 26",
        threat_class: "Fragmentación de Egos / Dilema del Erizo / El Tercer Impacto",
        mechanical_purposes: "Entidad colectiva fragmentada en miles de millones de conciencias separadas por AT Fields microscópicos individuales (el ego, el miedo al rechazo y la separación física). Poseedores del Fruto del Conocimiento (tecnología, lenguaje, computadoras MAGI y mechas EVA).",
        spoilers: "En los episodios 25 y 26, el Tercer Impacto se consuma en la psique de Shinji. Los campos AT individuales se disuelven y la humanidad se funde en un solo océano de LCL primordial en la Luna Negra. Shinji, guiado por Yui y Rei, comprende que una existencia sin dolor pero sin individualidad carece de sentido. Rechaza la Instrumentalidad de Keel y restaura las barreras individuales de los egos, permitiendo a los seres humanos regresar si así lo desean.",
        vulnerability: "La vulnerabilidad a la soledad, el trauma emocional, el aislamiento y la permeabilidad ante el Anti-AT Field que disuelve el cuerpo biológico.",
        vulnerability_nature: "CONDICIÓN ONTOLÓGICA HUMANA EXPLOTADA POR SEELE",
        vulnerability_explanation: "Keel Lorenz y SEELE explotaron el sufrimiento intrínseco del dilema del erizo para vender la Instrumentalidad como una falsa salvación. La vulnerabilidad de los Lilim no es un defecto de ingeniería, sino el precio existencial de poseer libre albedrío e identidad propia.",
        keel_seele_role: "El objetivo final de los Manuscritos del Mar Muerto. La erradicación total de los 17 Ángeles anteriores era el requisito previo obligatorio para que la humanidad pudiera fundirse en un solo dios colectivo bajo el control de Keel Lorenz.",
        cybersec_equivalent: "Global Distributed Denial of Boundaries / Collective Merge / Boundary Restoration.",
        siem_events: [
          "siem.pattern_blue",
          "siem.third_impact_consummated",
          "siem.anti_at_field_resonance",
          "siem.ego_boundaries_dissolved",
          "siem.ocean_of_lcl_formed",
          "siem.shinji_rejection_of_instrumentality",
          "siem.boundaries_restored_fragile",
          "outcome=contained_controlled"
        ],
        exit_code: 0,
        outcome: "contained_controlled",
        magi_consensus: {
          "melchior" => "ANÁLISIS CANÓNICO: LILIM (18TH ANGEL / HUMANIDAD)\n\nLa culminación canónica de Evangelion. La humanidad es el 18º Ángel. La resolución de Shinji rechazando la Instrumentalidad restaura los límites individuales a pesar del dolor de existir.",
          "balthasar" => "AUDITORÍA DE SEGURIDAD: RESTAURACIÓN DE LÍMITES PERIMETRALES\n\nVeredicto: La disolución total del perímetro de red (Zero-Trust colapsado en sopa homogénea) fue revertida. Shinji restableció los firewalls individuales: boundaries_restored_fragile.",
          "casper" => "ESTADO DEL LABORATORIO (RUBY SYSTEM)\n\nClase Nerv::Angels::Lilim y módulo Instrumentality probados. Telemetría de reversión de Instrumentalidad confirmada."
        }
      }
    }.freeze

    def self.all
      DOSSIERS.values
    end

    def self.find(query)
      return nil unless query
      q = query.to_s.downcase.strip
      q = q.sub(/^angel_?/, '')
      q = q.rjust(2, '0') if q =~ /^\d+$/

      DOSSIERS[q] || DOSSIERS.values.find { |d| d[:slug] == q || d[:name].downcase.include?(q) }
    end

    def self.simulate(query)
      dossier = find(query)
      raise "Unknown angel: #{query}" unless dossier

      events = dossier[:siem_events]
      output = []
      output << "NERV lab — Ángel #{dossier[:id]} #{dossier[:name]}"
      output << "Clase de Amenaza: #{dossier[:threat_class]}"
      output << "Naturaleza de Vulnerabilidad: #{dossier[:vulnerability_nature]}"
      output << "--- Telemetría de Sensores Tácticos SIEM ---"
      events.each { |ev| output << ev unless ev.to_s.start_with?("outcome=") }
      output << "outcome=#{dossier[:outcome]}"

      {
        output: output.join("\n"),
        exit_code: dossier[:exit_code],
        dossier: dossier
      }
    end
  end
end
