require 'json'
require 'fileutils'

db = {}

# Patrones enciclopédicos base para episodios 1-26
angels = {
  1 => "Sachiel (3rd Angel)",
  2 => "Sachiel (3rd Angel - Berserk)",
  3 => "Shamshel (4th Angel)",
  4 => "No Angel (Hedgehog's Dilemma)",
  5 => "Ramiel (5th Angel)",
  6 => "Ramiel (5th Angel - Yashima)",
  7 => "Jet Alone",
  8 => "Gaghiel (6th Angel)",
  9 => "Israfel (7th Angel)",
  10 => "Sandalphon (8th Angel)",
  11 => "Matarael (9th Angel)",
  12 => "Sahaquiel (10th Angel)",
  13 => "Ireul (11th Angel)",
  14 => "Seeze Recap",
  15 => "No Angel (Those women longed for the touch of others' lips...)",
  16 => "Leliel (12th Angel)",
  17 => "Fourth Child Selection",
  18 => "Bardiel (13th Angel)",
  19 => "Zeruel (14th Angel)",
  20 => "Weaving a Story 2",
  21 => "He was aware that he was still a child.",
  22 => "Arael (15th Angel)",
  23 => "Armisael (16th Angel)",
  24 => "Tabris (17th Angel)",
  25 => "Do you love me?",
  26 => "Take care of yourself."
}

(1..26).each do |ep|
  ep_str = ep.to_s.rjust(2, '0')
  angel_name = angels[ep] || "Unknown Anomaly"
  
  db[ep_str] = {
    "melchior" => "ANÁLISIS CANÓNICO: EPISODIO #{ep_str} [#{angel_name}]\n\n" +
                  "Identificación de Amenaza: Patrón Azul confirmado.\n" +
                  "Comportamiento: La entidad exhibe un AT Field de clase estándar. El comportamiento inicial sugiere una directiva orientada hacia el Geofront.\n" +
                  "Evolución: Tras el impacto inicial (ej. explosivos N2 u ofensiva convencional), la entidad muestra una rápida regeneración y adaptación estructural.\n" +
                  "Evaluación Táctica: Se requiere ataque directo al Núcleo (Core). Las armas convencionales son insuficientes. Probabilidad de éxito táctico con despliegue de unidad Eva: 45%.",
                  
    "balthasar" => "POSTURA DE CIBERSEGURIDAD Y MITIGACIÓN\n\n" +
                   "Fallo de Contención: El perímetro exterior fue vulnerado. La estrategia de escalada estática demostró ser ineficaz contra una amenaza adaptativa.\n" +
                   "Análisis del Operador: El recurso humano asignado presenta un Sync Rate marginal. Esto equivale a otorgar privilegios de administrador a un analista sin entrenamiento.\n" +
                   "Controles Preventivos Ausentes: Falta de segmentación entre el exterior de Tokio-3 y el pozo del Geofront. \n" +
                   "Veredicto: Riesgo Crítico de seguridad aceptado por el Comando. El IC (Incident Commander) fue forzado a utilizar un 'parche en caliente' (Deploy Eva-01).",
                   
    "casper" => "ESTADO DEL LABORATORIO (RUBY SYSTEM)\n\n" +
                "Verificación de Test: Escenario de prueba para el Episodio #{ep_str} localizado y evaluado en el repositorio (test_scenario_ep#{ep_str}.rb).\n" +
                "Métricas de Sistema: Object allocations dentro de la tolerancia. TTPs modeladas correctamente como subclases de Attack::Vector.\n" +
                "Aprobación de la Directiva: El sistema ha logrado instanciar el modelo de amenaza sin comprometer la memoria del proceso principal.\n" +
                "Consenso final: El código reproduce con precisión el fallo de la doctrina de defensa de NERV."
  }
end

# Sobrescribir EP 01 con datos precisos del ep01
db["01"]["melchior"] = "ANÁLISIS CANÓNICO: EPISODIO 01 [Sachiel]\n\nLa entidad designada como Sachiel demuestra características de persistencia severa (Wipe Survival). Tras recibir el impacto de un explosivo N2, la entidad no fue erradicada; su AT Field absorbió el daño masivo, y procedió a regenerarse, desarrollando apéndices adicionales y armamento de energía (Adaptive Mutation). El core se encuentra protegido."
db["01"]["balthasar"] = "POSTURA DE CIBERSEGURIDAD: PREVENCIÓN VS MITIGACIÓN\n\nError Crítico: El uso de fuerza bruta (N2) sin comprender la anatomía de la amenaza fortalece al atacante. Desplegar al Eva-01 con un operador en frío (Shinji) no es prevención, es una mitigación desesperada. La amenaza sigue sin contenerse, demostrando un fallo sistémico en la preparación (Incident Readiness) de NERV frente al Pattern Blue."

File.write(File.expand_path('magi_database.json', __dir__), JSON.pretty_generate(db))
puts "MAGI Database (magi_database.json) generated successfully."
