# Práctica 12 — Mayor de quince enteros positivos

**Programador:** Stephanie Ariana Medrano Vargas (No. de lista 29)
**Módulo:** `src/p12_mayor_de_15.erl`
**Libro:** Spencer, *Problemas para Resolver con Computadora*

## Enunciado
Encontrar el entero positivo mayor en una lista de quince enteros, algunos de los cuales son impares.

## Solución
Valida 15 enteros positivos y usa `lists:max/1`. También indica si el mayor es par o impar.

## Cómo ejecutar
```bash
rebar3 compile
rebar3 escriptize
./_build/default/bin/ejercicios 12 demo      # mayor = 91
```
O desde el shell de Erlang:
```bash
rebar3 shell
1> p12_mayor_de_15:run(["demo"]).
```

## Qué hacer
- [ ] Compilar sin warnings (`rebar3 compile`)
- [ ] Probar (`rebar3 eunit`)
- [ ] Ejecutar el programa y tomar captura de pantalla de la salida
- [ ] Pegar la captura abajo en **Evidencia**
- [ ] Commit: `feat(p12): Mayor de quince enteros positivos`

## Notas
El conjunto demo incluye pares e impares, el mayor es 91 (impar).

## Evidencia
<!-- Pega aquí la captura de la ejecución en AWS / WSL -->
