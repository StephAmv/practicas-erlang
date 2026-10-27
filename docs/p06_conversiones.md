# Práctica 06 — Tabla de conversión mm, cm, m y km

**Programador:** Stephanie Ariana Medrano Vargas (No. de lista 29)
**Módulo:** `src/p06_conversiones.erl`
**Libro:** Spencer, *Problemas para Resolver con Computadora*

## Enunciado
Convertir milímetros a centímetros, centímetros a metros y metros a kilómetros. Crear una tabla de conversión para los valores 1, 10, 100 y 1,000 de cada unidad.

## Solución
Tres conversiones con su divisor: mm→cm (÷10), cm→m (÷100), m→km (÷1000). `tabla(Divisor)` devuelve `[{Valor, Valor/Divisor}]` para 1, 10, 100 y 1000.

## Cómo ejecutar
```bash
rebar3 compile
rebar3 escriptize
./_build/default/bin/ejercicios 6
```
O desde el shell de Erlang:
```bash
rebar3 shell
1> p06_conversiones:run([]).
```

## Qué hacer
- [ ] Compilar sin warnings (`rebar3 compile`)
- [ ] Probar (`rebar3 eunit`)
- [ ] Ejecutar el programa y tomar captura de pantalla de la salida
- [ ] Pegar la captura abajo en **Evidencia**
- [ ] Commit: `feat(p06): Tabla de conversión mm, cm, m y km`

## Notas
Se imprimen tres tablas de 4 filas cada una.

## Evidencia
<!-- Pega aquí la captura de la ejecución en AWS / WSL -->
