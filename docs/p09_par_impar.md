# Práctica 09 — Par o impar

**Programador:** Stephanie Ariana Medrano Vargas (No. de lista 29)
**Módulo:** `src/p09_par_impar.erl`
**Libro:** Spencer, *Problemas para Resolver con Computadora*

## Enunciado
Introducir y determinar si un número es "par" o "impar".

## Solución
`clasificar/1` devuelve el átomo `par` si `N rem 2 =:= 0`, si no `impar`. Funciona con negativos (-3 rem 2 = -1, es impar).

## Cómo ejecutar
```bash
rebar3 compile
rebar3 escriptize
./_build/default/bin/ejercicios 9 29      # impar
./_build/default/bin/ejercicios 9 10      # par
```
O desde el shell de Erlang:
```bash
rebar3 shell
1> p09_par_impar:run(["29"]).
```

## Qué hacer
- [ ] Compilar sin warnings (`rebar3 compile`)
- [ ] Probar (`rebar3 eunit`)
- [ ] Ejecutar el programa y tomar captura de pantalla de la salida
- [ ] Pegar la captura abajo en **Evidencia**
- [ ] Commit: `feat(p09): Par o impar`

## Notas
Con tu número de lista (29) sale impar.

## Evidencia
<!-- Pega aquí la captura de la ejecución en AWS / WSL -->
