# Práctica 08 — Múltiplo de 6

**Programador:** Stephanie Ariana Medrano Vargas (No. de lista 29)
**Módulo:** `src/p08_multiplo6.erl`
**Libro:** Spencer, *Problemas para Resolver con Computadora*

## Enunciado
Determinar si un entero dado es un múltiplo de 6.

## Solución
Es múltiplo de 6 si `N rem 6 =:= 0`.

## Cómo ejecutar
```bash
rebar3 compile
rebar3 escriptize
./_build/default/bin/ejercicios 8 18      # SI
./_build/default/bin/ejercicios 8 29      # NO
```
O desde el shell de Erlang:
```bash
rebar3 shell
1> p08_multiplo6:run(["18"]).
```

## Qué hacer
- [ ] Compilar sin warnings (`rebar3 compile`)
- [ ] Probar (`rebar3 eunit`)
- [ ] Ejecutar el programa y tomar captura de pantalla de la salida
- [ ] Pegar la captura abajo en **Evidencia**
- [ ] Commit: `feat(p08): Múltiplo de 6`

## Notas
Prueba con 18 (sí), 29 (no), 0 (sí).

## Evidencia
<!-- Pega aquí la captura de la ejecución en AWS / WSL -->
