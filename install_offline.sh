#!/usr/bin/env bash
# ==============================================================================
# NERV CYBERSEC LAB — OFFLINE DEPENDENCY INSTALLER & ENVIRONMENT SETUP
# ==============================================================================
# Este script configura e instala todas las dependencias necesarias para ejecutar
# el simulador NERV (CLI y MAGI Web Dashboard) en entornos sin conexión a Internet.
# ==============================================================================

set -euo pipefail

# Colores para la interfaz NERV / MAGI
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
CYAN='\033[0;36m'
MAGENTA='\033[0;35m'
BOLD='\033[1m'
NC='\033[0m' # No Color

# Directorio raíz del proyecto
PROJECT_ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
cd "$PROJECT_ROOT"

print_banner() {
  echo -e "${RED}${BOLD}"
  echo "  ███╗   ██╗███████╗██████╗ ██╗   ██╗"
  echo "  ████╗  ██║██╔════╝██╔══██╗██║   ██║"
  echo "  ██╔██╗ ██║█████╗  ██████╔╝██║   ██║  NERV CYBERSEC LAB"
  echo "  ██║╚██╗██║██╔══╝  ██╔══██╗╚██╗ ██╔╝  Offline Dependency Installer"
  echo "  ██║ ╚████║███████╗██║  ██║ ╚████╔╝   MAGI Defense System"
  echo "  ╚═╝  ╚═══╝╚══════╝╚═╝  ╚═╝  ╚═══╝ "
  echo -e "${NC}"
}

log_info() {
  echo -e "${CYAN}[INFO]${NC} $1"
}

log_success() {
  echo -e "${GREEN}[OK]${NC} $1"
}

log_warn() {
  echo -e "${YELLOW}[WARN]${NC} $1"
}

log_error() {
  echo -e "${RED}[ERROR]${NC} $1" >&2
}

log_magi() {
  local core="$1"
  local msg="$2"
  case "$core" in
    MELCHIOR)  echo -e "${MAGENTA}[MELCHIOR-1]${NC} $msg" ;;
    BALTHASAR) echo -e "${BLUE}[BALTHASAR-2]${NC} $msg" ;;
    CASPER)    echo -e "${GREEN}[CASPER-3]${NC} $msg" ;;
  esac
}

# 1. Detección y validación de Ruby >= 3.0
find_ruby3() {
  log_info "Verificando entorno Ruby..."

  local current_ruby=""
  current_ruby="$(command -v ruby 2>/dev/null || true)"

  # Comprueba si el ruby actual es >= 3.0
  if [[ -n "$current_ruby" ]]; then
    local major_ver
    major_ver="$("$current_ruby" -e 'puts RUBY_VERSION.split(".").first' 2>/dev/null || echo "0")"
    if [[ "$major_ver" -ge 3 ]]; then
      log_success "Ruby compatible detectado: $("$current_ruby" -v) en $current_ruby"
      return 0
    else
      log_warn "El Ruby por defecto ($current_ruby) es $("$current_ruby" -v) (< 3.0)."
      log_warn "Buscando instalaciones de Ruby 3.x en el sistema..."
    fi
  fi

  # Buscar en rutas comunes en macOS / Linux
  local candidate_paths=(
    "/opt/homebrew/opt/ruby/bin"
    "/opt/homebrew/bin"
    "/usr/local/opt/ruby/bin"
    "/usr/local/bin"
    "$HOME/.rbenv/shims"
    "$HOME/.asdf/shims"
    "$HOME/.mise/shims"
  )

  for p in "${candidate_paths[@]}"; do
    if [[ -x "$p/ruby" ]]; then
      local test_ver
      test_ver="$("$p/ruby" -e 'puts RUBY_VERSION.split(".").first' 2>/dev/null || echo "0")"
      if [[ "$test_ver" -ge 3 ]]; then
        export PATH="$p:$PATH"
        log_success "Ruby 3.x encontrado: $("$p/ruby" -v) en $p/ruby"
        log_info "PATH temporal actualizado con prioridad para $p"
        return 0
      fi
    fi
  done

  log_error "No se encontró Ruby >= 3.0 en el sistema."
  log_error "El laboratorio NERV requiere Ruby 3.x (ver README.md)."
  log_error "Instala Ruby 3 mediante Homebrew ('brew install ruby') o tu gestor de versiones (rbenv, asdf, mise)."
  exit 1
}

# 2. Detección de Bundler
find_bundler() {
  log_info "Verificando Bundler..."
  if ! command -v bundle >/dev/null 2>&1; then
    log_error "Bundler no está disponible en el PATH."
    log_error "Ejecuta: gem install bundler"
    exit 1
  fi
  log_success "Bundler detectado: $(bundle --version 2>&1 | head -n 1)"
}

# 3. Comprobación de conectividad a Internet
check_internet() {
  if curl -s --head --connect-timeout 2 https://rubygems.org >/dev/null 2>&1; then
    return 0
  else
    return 1
  fi
}

# 4. Configuración de Bundler y validación de caché offline
setup_cache_and_dependencies() {
  local cache_dir="$PROJECT_ROOT/vendor/cache"
  mkdir -p "$cache_dir"

  log_magi "MELCHIOR" "Revisando superficie de dependencias locales (vendor/cache)..."

  # Configurar Bundler para instalar localmente en vendor/bundle y habilitar cache_all
  bundle config set --local path 'vendor/bundle'
  bundle config set --local cache_all true

  # Lista de gemas requeridas
  local required_gems=(
    "base64-0.3.0.gem"
    "kramdown-2.5.2.gem"
    "mustermann-3.0.4.gem"
    "rack-2.2.24.gem"
    "rack-protection-3.2.0.gem"
    "rexml-3.4.4.gem"
    "ruby2_keywords-0.0.5.gem"
    "sinatra-3.2.0.gem"
    "tilt-2.9.0.gem"
    "webrick-1.9.2.gem"
  )

  local missing_gems=()
  for gem_file in "${required_gems[@]}"; do
    if [[ ! -f "$cache_dir/$gem_file" ]]; then
      missing_gems+=("$gem_file")
    fi
  done

  if [[ ${#missing_gems[@]} -eq 0 ]]; then
    log_success "Todas las dependencias empaquetadas (.gem) están presentes en vendor/cache/."
  else
    log_warn "Faltan ${#missing_gems[@]} gemas en vendor/cache: ${missing_gems[*]}"
    if check_internet; then
      log_info "Conexión a Internet detectada. Descargando y empaquetando gemas faltantes..."
      bundle cache
      log_success "Gemas descargadas y cacheadas exitosamente en vendor/cache/."
    else
      log_error "Modo offline estricto: No hay conexión a Internet y faltan gemas en $cache_dir."
      log_error "Debes transferir manualmente los siguientes archivos a vendor/cache/:"
      for g in "${missing_gems[@]}"; do
        echo "  - $g"
      done
      exit 1
    fi
  fi

  log_magi "BALTHASAR" "Instalando gemas en modo offline (--local) hacia vendor/bundle..."
  bundle install --local

  log_success "Instalación de gemas completada satisfactoriamente en ./vendor/bundle."
}

# 5. Inicialización de la base de datos táctica MAGI
seed_database() {
  log_magi "CASPER" "Inicializando base de datos de consenso MAGI (lib/magi_web/seed_database.rb)..."
  bundle exec ruby lib/magi_web/seed_database.rb
  log_success "Base de datos táctica MAGI verificada y sincronizada."
}

# 6. Test de humo y validación de componentes
verify_installation() {
  log_info "Ejecutando pruebas de integridad táctica..."

  # Validar que la interfaz web (Sinatra/Kramdown/Webrick) carga sin errores
  if bundle exec ruby -Ilib -e "require 'magi_web/app'; exit 0" 2>/dev/null; then
    log_success "Módulo MAGI Web Dashboard: OPERATIVO"
  else
    log_error "Fallo al inicializar el módulo MAGI Web Dashboard."
    exit 1
  fi

  # Validar que el ejecutable de simulación táctica (bin/episodio) responde
  if bundle exec ruby -Ilib bin/episodio 01 >/dev/null 2>&1 || [[ $? -eq 2 ]]; then
    log_success "Motor de simulación CLI (bin/episodio): OPERATIVO"
  else
    log_error "Fallo al inicializar el motor de simulación CLI."
    exit 1
  fi
}

# 7. Crear script lanzador rápido 'bin/magi_offline'
create_offline_launcher() {
  local launcher="$PROJECT_ROOT/bin/magi_offline"
  cat << 'EOF' > "$launcher"
#!/usr/bin/env bash
# Lanzador offline para MAGI Dashboard
set -euo pipefail
DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
cd "$DIR"

# Priorizar Ruby 3.x si está instalado en Homebrew o gestores
if [[ -x "/opt/homebrew/bin/ruby" ]]; then
  export PATH="/opt/homebrew/bin:$PATH"
elif [[ -x "/usr/local/bin/ruby" ]]; then
  export PATH="/usr/local/bin:$PATH"
fi

echo "=========================================================="
echo "    MAGI SYSTEM // NERV HQ — OFFLINE DASHBOARD"
echo "=========================================================="
echo "Accede en tu navegador a: http://localhost:4567"
echo "Presiona Ctrl+C para detener el servidor."
echo "=========================================================="
exec bundle exec bin/magi
EOF
  chmod +x "$launcher"
  log_success "Lanzador offline creado en: bin/magi_offline"
}

# ==============================================================================
# EJECUCIÓN PRINCIPAL
# ==============================================================================

print_banner
find_ruby3
find_bundler
setup_cache_and_dependencies
seed_database
verify_installation
create_offline_launcher

echo -e "\n${GREEN}${BOLD}══════════════════════════════════════════════════════════════════════════════${NC}"
echo -e "${GREEN}${BOLD}  ¡INSTALACIÓN OFFLINE COMPLETADA CON ÉXITO! (MAGI ALL CORES ALIGNED)         ${NC}"
echo -e "${GREEN}${BOLD}══════════════════════════════════════════════════════════════════════════════${NC}"
echo -e "\n${BOLD}Puedes ejecutar el laboratorio sin conexión a Internet de dos formas:${NC}\n"
echo -e "  ${BOLD}1. MAGI Web Dashboard (GUI Interactiva):${NC}"
echo -e "     ${CYAN}./bin/magi_offline${NC}   o   ${CYAN}bundle exec bin/magi${NC}"
echo -e "     Luego abre tu navegador en: ${BOLD}http://localhost:4567${NC}\n"
echo -e "  ${BOLD}2. Modo Terminal CLI (Simulación de Incidentes):${NC}"
echo -e "     ${CYAN}bundle exec ruby -Ilib bin/episodio <01-26|yui|rei|shinji|keel>${NC}"
echo -e "     Ejemplo: ${CYAN}bundle exec ruby -Ilib bin/episodio 01${NC}\n"
echo -e "  ${BOLD}3. Tests Unitarios Minitest:${NC}"
echo -e "     ${CYAN}ruby -Ilib:test test/test_arael.rb${NC}\n"
