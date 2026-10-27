# Practicas Erlang OTP — Problemas 3 al 13

## Autora

**Stephanie Ariana Medrano Vargas** — No. de lista 29

## Descripcion

Proyecto Erlang/OTP con Rebar3 que implementa 11 practicas del libro
*"Problemas para Resolver con Computadora"* de Spencer
([repositorio de referencia](https://github.com/tectijuana/problemasresolverporcomputadora)).

Cada practica vive en su propio modulo `src/pNN_nombre.erl`, exporta `run/1`
y cuenta con pruebas EUnit en `test/ejercicios_tests.erl`.

---

## Requisitos

| Herramienta | Version minima |
|-------------|----------------|
| Erlang/OTP  | 24+            |
| Rebar3      | 3.20+          |

Verificar instalacion:

```bash
erl -version
rebar3 version
```

---

## Compilar

```bash
rebar3 compile
```

## Probar (EUnit)

```bash
rebar3 eunit
```

## Construir el escript

```bash
rebar3 escriptize
```

## Ejecutar

```bash
# Una practica especifica (con argumentos opcionales)
./_build/default/bin/ejercicios <numero> [args...]

# Ejemplos
./_build/default/bin/ejercicios 3
./_build/default/bin/ejercicios 7 28
./_build/default/bin/ejercicios 10 demo

# Todas las practicas en modo demo
./_build/default/bin/ejercicios todos
```

---

## Tabla de practicas

| No. | Modulo            | Enunciado                                                                 |
|-----|-------------------|---------------------------------------------------------------------------|
| 3   | p03_pares         | Imprimir los enteros pares del 2 al 48                                    |
| 4   | p04_reciprocos    | Imprimir los enteros del 1 al 30 apareados con sus reciprocos             |
| 5   | p05_potencias2    | Imprimir una tabla de potencias del 2 que no exceda al 1,000              |
| 6   | p06_conversiones  | Tabla de conversion mm->cm, cm->m, m->km para 1, 10, 100 y 1,000        |
| 7   | p07_divisible14   | Determinar si un numero dado es divisible entre 14                        |
| 8   | p08_multiplo6     | Determinar si un entero dado es un multiplo de 6                         |
| 9   | p09_par_impar     | Introducir y determinar si un numero es par o impar                      |
| 10  | p10_25_enteros    | Aceptar 25 enteros positivos y describir cada uno como par o impar       |
| 11  | p11_pos_neg       | Contar positivos, negativos y ceros en un conjunto de 25 numeros         |
| 12  | p12_mayor_de_15   | Encontrar el entero positivo mayor en una lista de quince enteros        |
| 13  | p13_segundo_mayor | Determinar el segundo entero mas grande en quince enteros positivos      |

---

## Estructura de carpetas

```
practicas-erlang/
├── AGENTS.md                  # Reglas del proyecto para agentes
├── README.md                  # Este archivo
├── rebar.config               # Configuracion de Rebar3
├── docs/
│   └── pNN_nombre.md          # Documentacion individual por practica
├── src/
│   ├── ejercicios.app.src     # Descriptor OTP de la aplicacion
│   ├── ejercicios.erl         # Punto de entrada escript (main/1)
│   ├── ejercicios_app.erl     # Callback application OTP
│   ├── ejercicios_sup.erl     # Supervisor OTP (sin hijos)
│   ├── ej_util.erl            # Utilidades: parse, lectura, obtener
│   └── pNN_nombre.erl         # Modulos de cada practica
└── test/
    └── ejercicios_tests.erl   # Suite EUnit de todos los problemas
```
