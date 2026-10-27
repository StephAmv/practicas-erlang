# Practica 3 — Numeros Pares del 2 al 48

## Enunciado

> "Imprimir los enteros pares del 2 al 48."

## Solucion

Modulo: `src/p03_pares.erl`

La funcion pura `pares/0` genera la lista usando `lists:seq(2, 48, 2)`,
que produce los 24 enteros pares en un solo paso sin recursion explicita.

`run/1` itera la lista con `lists:foreach/2` e imprime cada valor en su propia linea.

```erlang
pares() ->
    lists:seq(2, 48, 2).

run(_Args) ->
    io:format("Numeros pares del 2 al 48:~n"),
    lists:foreach(fun(N) -> io:format("~w~n", [N]) end, pares()),
    ok.
```

## Como ejecutar

```bash
# Compilar y construir escript
rebar3 escriptize

# Ejecutar practica 3
./_build/default/bin/ejercicios 3
```

Salida esperada:

```
Numeros pares del 2 al 48:
2
4
...
48
```

## Pruebas EUnit

En `test/ejercicios_tests.erl`:

| Test               | Verificacion                        |
|--------------------|-------------------------------------|
| p03_longitud_test  | `length(pares()) =:= 24`            |
| p03_primero_test   | `hd(pares()) =:= 2`                 |
| p03_ultimo_test    | `lists:last(pares()) =:= 48`        |

Ejecutar:

```bash
rebar3 eunit
```

## Notas

- Sin argumentos de entrada; `run/1` ignora `Args`.
- La lista tiene exactamente 24 elementos: (48 - 2) / 2 + 1 = 24.

## Evidencia

_(Pegar captura de pantalla aqui)_
