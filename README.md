# NERV Cybersec Lab 🛡️🔴

**NERV Cybersec Lab** es un simulador táctico y repositorio de estudio que convierte cada episodio de *Neon Genesis Evangelion* (TV, 1995-1996) en un incidente de ciberseguridad moderno.

En este proyecto, los *Ángeles* no son monstruos de ficción, sino vectores de ataque, malwares adaptativos y vulnerabilidades avanzadas. El laboratorio permite estudiar ciberseguridad simulando prevención, mitigación de daños, y errores humanos, usando **Ruby** ejecutable (Modo CLI) y un **Dashboard Web temático** interactivo.

---

## 🚀 Arquitectura MAGI

El laboratorio está diseñado bajo el modelo de triple consenso de las supercomputadoras de NERV:

- **MELCHIOR (Canon y Amenaza):** Modela el comportamiento real de la amenaza tal cual apareció en la serie (superficie de detección, regeneración frente a explosivos N2, etc.).
- **BALTHASAR (Postura de Seguridad):** Evalúa las defensas. Separa estrictamente lo que es "Prevención" de lo que es "Mitigación" (ej. subir a un niño de 14 años a un robot gigante *no* es prevención, es un fallo crítico y mitigación desesperada).
- **CASPER (Código Ejecutable):** El simulador escrito en Ruby. Contiene tests y lógica de código que recrea la cadena de ataque (Kill-Chain) de cada ángel.

---

## 🛠️ Requisitos del Sistema

- **Ruby 3.x**
- **Bundler** (`gem install bundler`)
- Un navegador web moderno para visualizar la MAGI.

---

## 📦 Instalación

1. **Clonar el repositorio:**
   ```bash
   git clone https://github.com/Andrei-Barwood/nerv-cybersec-lab.git
   cd nerv-cybersec-lab
   ```

2. **Instalar dependencias locales:**
   Se utiliza Sinatra y Kramdown para levantar la interfaz gráfica y procesar los reportes.
   ```bash
   bundle config set --local path 'vendor/bundle'
   bundle install
   ```

3. **Inicializar la Enciclopedia MAGI (Base de datos de consenso):**
   Genera el diccionario de respuestas y análisis de los 3 núcleos.
   ```bash
   ruby lib/magi_web/seed_database.rb
   ```

---

## 💻 Tutorial de Uso

Este laboratorio ofrece dos formas de correr las simulaciones: el modo clásico en terminal (CLI) y el moderno panel gráfico del MAGI.

### Modo 1: Operaciones por Terminal (CLI)

Ideal para desarrolladores y auditoría del código de la Kill-Chain (Casper). Ejecutas cada episodio pasándole por parámetro el número (01 a 26).

**Comando:**
```bash
ruby -Ilib bin/episodio 01
```

**Output esperado:**
Verás la traza del Sistema de Gestión de Información y Eventos de Seguridad (SIEM).
```text
NERV lab — ep 01 Angel Attack
siem.pattern_blue
siem.wipe_declared
siem.wipe_failed_regen
siem.eva_deployed
siem.operator_sync_low
outcome=unresolved
```
*Nota: Un `Exit code 2` (unresolved) es esperado para el Ep 01, ya que la verdadera contención se logra en el modo Berserk del Episodio 02.*

---

### Modo 2: MAGI Web Dashboard (GUI Fandom)

El modo visual oficial para el análisis forense de incidentes y generación de *Threat Intelligence Reports*.

**1. Lanzar el Servidor:**
```bash
bundle exec bin/magi
```

**2. Acceder al Panel Táctico:**
Abre tu navegador en: [http://localhost:4567](http://localhost:4567)

**3. Simular un Incidente:**
- Selecciona un episodio en el menú desplegable (ej. `EP 01`).
- Haz clic en **DEPLOY EVA (RUN LAB)**.
- Verás fluir en la consola visual de la web los eventos generados por el simulador backend. 
- Al concluir, la MAGI evaluará los resultados (mostrando el dictamen simultáneo de Melchior, Balthasar y Casper).

---

## 📄 Generación de Reportes Forenses (PDF)

El proyecto documenta extensamente las vulnerabilidades, errores de los operadores (*Human Factors*), anatomía de la amenaza y *After Action Reports* (AAR) en documentos `.md` (ubicados en `docs/episodios/`).

Para exportar la documentación completa de un incidente como un **Threat Intelligence Report** con formato PDF corporativo:

1. Levanta el servidor del MAGI Dashboard.
2. Haz clic en el botón **GENERATE THREAT REPORT** desde el dashboard (o ve directamente a `http://localhost:4567/report/01`).
3. El sistema unificará todos los archivos (Playbooks, Prevención, Consenso de los 3 Núcleos) en una sola hoja web de fácil lectura.
4. Presiona el botón **EXPORT TO PDF (PRINT)** o usa el menú de imprimir de tu navegador. El documento generado sugerirá de forma automática el nombre seguro, por ejemplo: `01_Angel_Attack_MAGI_Report.pdf`.

---

## 📚 Estructura de Directorios

- `bin/`: Ejecutables del lab (`episodio`, `magi`).
- `docs/episodios/`: Documentación técnica y forense de cada incidente.
- `lib/nerv/`: Clases principales del motor Ruby (Angeles, Vectores de ataque, SIEM).
- `lib/nerv/scenarios/`: Escenarios orquestados por número de episodio.
- `lib/magi_web/`: Aplicación Sinatra para la GUI, estilos (CSS) y plantillas de reportes (ERB).
- `prompts/`: Reglamentos maestros y constituciones usadas para guiar a los agentes IA a construir este proyecto (*Constitución de NERV*).
- `test/`: Tests unitarios bajo Minitest que aseguran que las mitigaciones "muerden" y que los modelos de amenaza persisten de forma realista.
