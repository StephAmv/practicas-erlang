# Práctica 13 — Segundo entero más grande de quince

**Programador:** Stephanie Ariana Medrano Vargas (No. de lista 29)
**Módulo:** `src/p13_segundo_mayor.erl`
**Libro:** Spencer, *Problemas para Resolver con Computadora*

## Enunciado
Determinar el segundo entero más grande en un conjunto de quince enteros positivos suministrados como datos.

## Solución
Se ordena sin repetidos (`lists:usort/1`), se invierte y se toma el segundo elemento.

## Cómo ejecutar
```bash
rebar3 compile
rebar3 escriptize
./_build/default/bin/ejercicios 13 demo      # segundo mayor = 76
```
O desde el shell de Erlang:
```bash
rebar3 shell
1> p13_segundo_mayor:run(["demo"]).
```

## Qué hacer
- [ ] Compilar sin warnings (`rebar3 compile`)
- [ ] Probar (`rebar3 eunit`)
- [ ] Ejecutar el programa y tomar captura de pantalla de la salida
- [ ] Pegar la captura abajo en **Evidencia**
- [ ] Commit: `feat(p13): Segundo entero más grande de quince`

## Notas
Decisión de diseño: si el mayor se repite (ej. 9 9 5) el segundo mayor es 5 (valor distinto). Si todos son iguales responde que no existe.

## Evidencia
<!-- Pega aquí la captura de la ejecución en AWS / WSL -->
