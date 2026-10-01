# Tutorial 02: Suite de Pruebas (Minitest)

El repositorio usa **Minitest** en la biblioteca estándar de Ruby (no requiere Bundler ni dependencias externas) para validar la integridad lógica de las defensas y la fidelidad narrativa del canon de Evangelion.

## El Problema de Carga y Contaminación de Estado

Dado que Minitest ejecuta las pruebas en un orden aleatorio, y debido a que algunos episodios comparten recursos globales (`DummyPlug`, `AtField`, el estado de la `SpearOfLonginus`, o la clase `Instrumentality`), es vital que las pruebas se ejecuten limpiando el estado. Además, debido a cómo Minitest resuelve las rutas al correr desde un *glob* (`*`), correr `ruby test/*_test.rb` directamente a menudo genera errores de `require`.

## El Comando Obligatorio

Para ejecutar la suite de pruebas completa y de manera segura, debes utilizar **este comando exacto** desde el directorio raíz del proyecto:

```bash
ruby -Ilib:test -e "Dir.glob('test/test_*.rb').each { |f| require f.sub('test/', '') }"
```

### ¿Qué hace este comando?
1. `-Ilib:test`: Añade los directorios `lib` y `test` al `$LOAD_PATH` (la ruta de búsqueda de Ruby).
2. `Dir.glob('test/test_*.rb')`: Busca todos los archivos de prueba.
3. `.each { |f| require f.sub('test/', '') }`: Requiere cada archivo removiendo el prefijo `test/`, permitiendo que el `$LOAD_PATH` resuelva los archivos correctamente sin duplicar dependencias y evitando errores de `NameError`.

### Salida Esperada

Verás cómo se imprimen los puntos (cada punto es un test que pasó exitosamente) y un resumen final:

```text
Run options: --seed 12345

# Running:

...................................................................................

Finished in 0.045231s, 1923.4561 runs/s, 7452.1234 assertions/s.

237 runs, 866 assertions, 0 failures, 0 errors, 0 skips
```

## Estructura de las Pruebas

Los archivos de test están en el directorio `/test` y suelen dividirse en tres tipos:

1. **Test de Entidades (`test_angel.rb`, `test_magi.rb`, `test_at_field.rb`):** Prueban que las clases base funcionen correctamente (ej. un escudo AT se baja si es penetrado).
2. **Test de Playbooks (`test_playbook_ep01.rb`...):** Validan la lógica de mitigación. Verifican qué eventos del SIEM se disparan cuando se corre el playbook contra una amenaza. Aseguran que un playbook falle intencionalmente si se usan herramientas indebidas (como intentar disparar armas convencionales al ángel de las sombras, Leliel).
3. **Test de Escenarios (`test_scenario_ep*.rb`):** Prueban el flujo de entrada a salida que luego se expone a través del CLI `bin/episodio`, validando el Exit Code esperado.
