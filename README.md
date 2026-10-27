# Practicas Erlang OTP — Problemas 3 al 13

**Asignatura:** Programación lógica y funcional - 04:00 pm  
**Alumno:** Stephanie Ariana Medrano Vargas - 23212013  
**Fecha:** 28/010/2026

## Descripcion

Proyecto Erlang/OTP con Rebar3 que implementa 11 practicas del libro
*"Problemas para Resolver con Computadora"* de Spencer
([repositorio de referencia](https://github.com/tectijuana/problemasresolverporcomputadora)).

Cada practica vive en su propio modulo `src/pNN_nombre.erl`, exporta `run/1`
y cuenta con pruebas EUnit en `test/ejercicios_tests.erl`.

## Como funciona

- **Un modulo por problema.** La logica del problema esta en funciones puras
  (faciles de probar) y `run/1` se encarga de leer los datos e imprimir el resultado.
- **Un solo punto de entrada.** `ejercicios.erl` es el escript que recibe el numero
  de practica y sus datos, y llama al modulo correspondiente.
- **Tres formas de dar los datos:**
  1. Como argumento: `ejercicios 7 28`
  2. Por teclado, si no se escribe ningun argumento (practicas 7 al 13)
  3. Con la palabra `demo`, que usa un conjunto de ejemplo (practicas 10 al 13)
- **Validacion.** Si faltan datos, sobran, o un valor no es valido, el programa
  muestra un mensaje de error en lugar de fallar.
- **Aplicacion OTP.** El proyecto incluye `ejercicios_app` y `ejercicios_sup`
  (un supervisor sin hijos), ya que las practicas son programas de consola y no
  necesitan procesos persistentes.

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

### Notas sobre algunos enunciados

- **Practica 5:** la tabla empieza en 2^0 = 1 y termina en 2^9 = 512, porque 2^10 = 1024 ya excede 1,000.
- **Practica 11:** el cero no es positivo ni negativo, por eso se cuenta aparte.
- **Practica 13:** se toma el segundo valor *distinto*. Si el mayor se repite (por ejemplo `9 9 5`),
  el segundo mayor es `5`. Si todos los valores son iguales, se indica que no existe.
- **Salida en consola:** se imprime sin acentos ni enie para evitar problemas de
  codificacion en terminales remotas.

---

## Estructura de carpetas

```
practicas-erlang/
├── AGENTS.md                  # Reglas del proyecto para agentes
├── README.md                  # Este archivo
├── rebar.config               # Configuracion de Rebar3
├── docs/
│   └── pNN_nombre.md          # Documentacion individual por practica
├── prompts/                   # Prompts usados con OpenCode
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

---

## Evidencias



---

## Declaracion de uso de IA

Este proyecto se desarrollo con apoyo de inteligencia artificial, y se declara a continuacion.

| Aspecto | Detalle |
|---------|---------|
| Agente de programacion | OpenCode.AI CLI en modo Agente (Build), sobre WSL |
| Modelos | Claude de Anthropic (Haiku 5.5 y Sonnet 4.6) |
| Asistente de apoyo | Claude (Anthropic), para preparar el flujo de trabajo, las reglas de `AGENTS.md` y los prompts de `prompts/` |

**Que hizo la IA:** genero el codigo de los modulos, las pruebas EUnit y la documentacion
a partir de los prompts guardados en `prompts/`, siguiendo las reglas de `AGENTS.md`.

**Que hice yo:** elegi los problemas, compile el proyecto, ejecute las pruebas y corri cada
programa para comprobar sus resultados. Tambien detecte y corregi un fallo en el modo
`todos` (las practicas 7, 8 y 9 se ejecutaban sin dato) y organice el repositorio y los commits.

Los prompts utilizados estan en la carpeta [`prompts/`](prompts/) para que el proceso
sea reproducible.
