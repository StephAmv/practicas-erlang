# AGENTS — Reglas del Proyecto ejercicios

## Estructura de módulos
- Un módulo por problema en `src/`, con nombre `pNN_nombre.erl`:
  - p03_pares
  - p04_reciprocos
  - p05_potencias2
  - p06_conversiones
  - p07_divisible14
  - p08_multiplo6
  - p09_par_impar
  - p10_25_enteros
  - p11_pos_neg
  - p12_mayor_de_15
  - p13_segundo_mayor

## Encabezado obligatorio (cada archivo .erl)
```erlang
%%%-------------------------------------------------------------------
%%% Programador : Stephanie Ariana Medrano Vargas (No. de lista 29)
%%% Fecha       : 27/10/2026
%%% Descripción : <qué hace el programa>
%%%-------------------------------------------------------------------
```

## Interfaz pública
- Cada módulo `pNN` exporta `run/1` que:
  - Recibe: lista de strings (argumentos de línea de comandos)
  - Devuelve: `ok` o `{error, Msg}`
- La lógica pura va en funciones separadas (testeable con EUnit).

## Normas de código
- Texto impreso en consola **SIN acentos ni eñe**.
- Comentarios en el código **sí pueden llevar acentos**.
- Sin dependencias externas. Código simple y comentado en español.

## Verificación obligatoria
Antes de terminar cualquier tarea ejecuta:
```bash
rebar3 compile && rebar3 eunit
```
