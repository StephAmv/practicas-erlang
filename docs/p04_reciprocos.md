# Práctica 04 — Enteros del 1 al 30 con su recíproco

**Programador:** Stephanie Ariana Medrano Vargas (No. de lista 29)
**Módulo:** `src/p04_reciprocos.erl`
**Libro:** Spencer, *Problemas para Resolver con Computadora*

## Enunciado
Imprimir los enteros del 1 al 30, apareados con sus recíprocos.

## Solución
Una list comprehension `[{N, 1 / N} || N <- lists:seq(1, 30)]` crea los pares; en Erlang `/` siempre da float. Se imprime con 8 decimales (`~12.8f`).

## Cómo ejecutar
```bash
rebar3 compile
rebar3 escriptize
./_build/default/bin/ejercicios 4
```
O desde el shell de Erlang:
```bash
rebar3 shell
1> p04_reciprocos:run([]).
```

## Qué hacer
- [ ] Compilar sin warnings (`rebar3 compile`)
- [ ] Probar (`rebar3 eunit`)
- [ ] Ejecutar el programa y tomar captura de pantalla de la salida
- [ ] Pegar la captura abajo en **Evidencia**
- [ ] Commit: `feat(p04): Enteros del 1 al 30 con su recíproco`

## Notas
El recíproco de 1 es 1.0 y el de 30 es 0.0333...

## Evidencia
<!-- Pega aquí la captura de la ejecución en AWS / WSL -->
