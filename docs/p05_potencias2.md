# Práctica 05 — Tabla de potencias de 2 menores o iguales a 1,000

**Programador:** Stephanie Ariana Medrano Vargas (No. de lista 29)
**Módulo:** `src/p05_potencias2.erl`
**Libro:** Spencer, *Problemas para Resolver con Computadora*

## Enunciado
Imprimir una tabla de potencias del 2 que no exceda al 1,000.

## Solución
Recursión que calcula `1 bsl Exp` (= 2^Exp) desde Exp = 0 y se detiene cuando el valor pasa de 1000. Resultado: 2^0 = 1 hasta 2^9 = 512 (2^10 = 1024 ya excede).

## Cómo ejecutar
```bash
rebar3 compile
rebar3 escriptize
./_build/default/bin/ejercicios 5
```
O desde el shell de Erlang:
```bash
rebar3 shell
1> p05_potencias2:run([]).
```

## Qué hacer
- [ ] Compilar sin warnings (`rebar3 compile`)
- [ ] Probar (`rebar3 eunit`)
- [ ] Ejecutar el programa y tomar captura de pantalla de la salida
- [ ] Pegar la captura abajo en **Evidencia**
- [ ] Commit: `feat(p05): Tabla de potencias de 2 menores o iguales a 1,000`

## Notas
Se incluye 2^0 = 1. Si tu profe quiere empezar en 2^1, cambia `potencias(0)` por `potencias(1)` y ajusta el test.

## Evidencia
<!-- Pega aquí la captura de la ejecución en AWS / WSL -->
