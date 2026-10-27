# Prompt 1 — Maestro (pégalo completo en OpenCode, modo Build)

```text
Eres mi agente de programación. Trabaja en la carpeta actual.

OBJETIVO: crear un proyecto Erlang OTP con Rebar3 con 11 prácticas (problemas 3 al 13)
del libro "Problemas para Resolver con Computadora" de Spencer
(repo: https://github.com/tectijuana/problemasresolverporcomputadora).

PASO 1. Crea el proyecto con: rebar3 new app ejercicios  (si la carpeta no está vacía,
crea la estructura equivalente a mano). La aplicación OTP se llama "ejercicios".

PASO 2. Crea el archivo AGENTS.md en la raíz con estas reglas y síguelas siempre:
- Un módulo por problema en src/, con nombre pNN_nombre.erl (p03_pares, p04_reciprocos,
  p05_potencias2, p06_conversiones, p07_divisible14, p08_multiplo6, p09_par_impar,
  p10_25_enteros, p11_pos_neg, p12_mayor_de_15, p13_segundo_mayor).
- CADA archivo .erl empieza con este encabezado exacto:
  %%%-------------------------------------------------------------------
  %%% Programador : Stephanie Ariana Medrano Vargas (No. de lista 29)
  %%% Fecha       : 27/10/2026
  %%% Descripción : <qué hace el programa>
  %%%-------------------------------------------------------------------
- Cada módulo pNN exporta run/1 (recibe lista de strings; devuelve ok o {error, Msg}) y
  deja la lógica pura en funciones separadas para probarla con EUnit.
- Texto impreso en consola SIN acentos ni eñe. Comentarios sí pueden llevar acentos.
- Sin dependencias externas. Código simple y comentado en español.
- Antes de terminar cualquier tarea ejecuta: rebar3 compile && rebar3 eunit.

PASO 3. Crea src/ej_util.erl con utilidades de lectura y validación:
parse_entero/1, parse_entero_positivo/1, parse_numero/1, un_entero/1 (de argumento o teclado)
y obtener/4 (toma exactamente N valores de: argumentos, la palabra "demo", o teclado).

PASO 4. Crea src/ejercicios.erl como punto de entrada escript (main/1) que ejecute una
práctica por número ("ejercicios 7 28") y el modo "ejercicios todos". Configura
rebar.config con {escript_main_app, ejercicios} y {escript_name, ejercicios}.
Agrega ejercicios_app.erl y ejercicios_sup.erl (supervisor sin hijos).

PASO 5. Ejecuta rebar3 compile y corrige hasta que no haya errores ni warnings.
No escribas todavía los problemas 3 al 13; te los pediré uno por uno.
Al final dime qué archivos creaste.
```
