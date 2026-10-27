# Práctica 10 — 25 enteros positivos: par o impar

**Programador:** Stephanie Ariana Medrano Vargas (No. de lista 29)
**Módulo:** `src/p10_25_enteros.erl`
**Libro:** Spencer, *Problemas para Resolver con Computadora*

## Enunciado
Escribir un programa que acepte 25 enteros positivos como datos y describir cada uno como "impar" o "par".

## Solución
Valida que sean exactamente 25 enteros positivos y reutiliza `p09_par_impar:clasificar/1` con una list comprehension.

## Cómo ejecutar
```bash
rebar3 compile
rebar3 escriptize
./_build/default/bin/ejercicios 10 demo                      # datos de ejemplo
./_build/default/bin/ejercicios 10 1 2 3 ... (25 números)
./_build/default/bin/ejercicios 10                           # los pide por teclado
```
O desde el shell de Erlang:
```bash
rebar3 shell
1> p10_25_enteros:run(["demo"]).
```

## Qué hacer
- [ ] Compilar sin warnings (`rebar3 compile`)
- [ ] Probar (`rebar3 eunit`)
- [ ] Ejecutar el programa y tomar captura de pantalla de la salida
- [ ] Pegar la captura abajo en **Evidencia**
- [ ] Commit: `feat(p10): 25 enteros positivos: par o impar`

## Notas
Si metes menos o más de 25, o un valor no positivo, muestra un error claro.

## Evidencia
<!-- Pega aquí la captura de la ejecución en AWS / WSL -->
