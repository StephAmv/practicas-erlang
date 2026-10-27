# Práctica 07 — Divisible entre 14

**Programador:** Stephanie Ariana Medrano Vargas (No. de lista 29)
**Módulo:** `src/p07_divisible14.erl`
**Libro:** Spencer, *Problemas para Resolver con Computadora*

## Enunciado
Determinar si un número dado es divisible entre 14.

## Solución
Un entero es divisible entre 14 si `N rem 14 =:= 0`. Lee el número del argumento o lo pide por teclado.

## Cómo ejecutar
```bash
rebar3 compile
rebar3 escriptize
./_build/default/bin/ejercicios 7 28      # SI
./_build/default/bin/ejercicios 7 29      # NO
./_build/default/bin/ejercicios 7         # lo pide por teclado
```
O desde el shell de Erlang:
```bash
rebar3 shell
1> p07_divisible14:run(["28"]).
```

## Qué hacer
- [ ] Compilar sin warnings (`rebar3 compile`)
- [ ] Probar (`rebar3 eunit`)
- [ ] Ejecutar el programa y tomar captura de pantalla de la salida
- [ ] Pegar la captura abajo en **Evidencia**
- [ ] Commit: `feat(p07): Divisible entre 14`

## Notas
Prueba con 28 (sí), 29 (no), 0 (sí) y un negativo como -42 (sí).

## Evidencia
<!-- Pega aquí la captura de la ejecución en AWS / WSL -->
