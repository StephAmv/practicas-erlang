# Práctica 11 — Positivos y negativos de un conjunto de 25

**Programador:** Stephanie Ariana Medrano Vargas (No. de lista 29)
**Módulo:** `src/p11_pos_neg.erl`
**Libro:** Spencer, *Problemas para Resolver con Computadora*

## Enunciado
Introducir un conjunto de 25 números. Determinar la cantidad de números positivos y negativos del conjunto.

## Solución
`lists:foldl/3` con acumulador `{Positivos, Negativos, Ceros}`. Los ceros no son ni positivos ni negativos, por eso se reportan aparte. Acepta enteros y decimales.

## Cómo ejecutar
```bash
rebar3 compile
rebar3 escriptize
./_build/default/bin/ejercicios 11 demo      # 12 positivos, 12 negativos, 1 cero
```
O desde el shell de Erlang:
```bash
rebar3 shell
1> p11_pos_neg:run(["demo"]).
```

## Qué hacer
- [ ] Compilar sin warnings (`rebar3 compile`)
- [ ] Probar (`rebar3 eunit`)
- [ ] Ejecutar el programa y tomar captura de pantalla de la salida
- [ ] Pegar la captura abajo en **Evidencia**
- [ ] Commit: `feat(p11): Positivos y negativos de un conjunto de 25`

## Notas
El conjunto demo tiene 12 positivos, 12 negativos y un cero.

## Evidencia
<!-- Pega aquí la captura de la ejecución en AWS / WSL -->
