# Prompts 2 — uno por práctica (pégalos de uno en uno, modo Build)

Después de cada uno, corre tú: `rebar3 compile && rebar3 eunit` y toma captura.

---
## Problema 3
```text
Lee AGENTS.md y sigue sus reglas. Crea src/p03_pares.erl para este problema:
"Imprimir los enteros pares del 2 al 48."
Lógica pura en pares/0 usando lists:seq(2, 48, 2); run/1 los imprime uno por línea.
Agrega su prueba EUnit en test/ejercicios_tests.erl (24 elementos, primero 2, último 48).
Ejecuta rebar3 compile && rebar3 eunit y corrige lo que falle. Muéstrame la salida de
rebar3 escriptize && ./_build/default/bin/ejercicios 3
```
---
## Problema 4
```text
Crea src/p04_reciprocos.erl: "Imprimir los enteros del 1 al 30, apareados con sus
recíprocos." reciprocos/0 devuelve [{N, 1/N}]; run/1 imprime una tabla con encabezado
(N y 1/N) con 8 decimales. Agrega pruebas EUnit, corre compile y eunit, y ejecútalo
con: ./_build/default/bin/ejercicios 4
```
---
## Problema 5
```text
Crea src/p05_potencias2.erl: "Imprimir una tabla de potencias del 2 que no exceda al
1,000." potencias/0 devuelve [{Exp, 2^Exp}] desde Exp=0 mientras el valor sea =< 1000
(usa recursión y bsl). run/1 imprime la tabla (n y 2^n). Último renglón: 2^9=512.
Pruebas EUnit, compile, eunit y ejecuta: ejercicios 5
```
---
## Problema 6
```text
Crea src/p06_conversiones.erl: "Convertir milímetros a centímetros, centímetros a metros
y metros a kilómetros. Crear una tabla de conversión para los valores 1, 10, 100 y 1,000
de cada unidad." conversiones/0 devuelve [{"mm","cm",10},{"cm","m",100},{"m","km",1000}];
tabla/1 recibe el divisor y devuelve [{Valor, Valor/Divisor}] para 1,10,100,1000.
run/1 imprime tres tablas con 3 decimales. Pruebas EUnit, compile, eunit y ejecuta: ejercicios 6
```
---
## Problema 7
```text
Crea src/p07_divisible14.erl: "Determinar si un número dado es divisible entre 14."
es_divisible_14/1 con N rem 14 =:= 0. run/1 usa ej_util:un_entero/1 (argumento o
teclado) e imprime el residuo y SI/NO. Pruebas EUnit (28, 0, -42 sí; 7, 29 no).
Corre compile y eunit; ejecuta: ejercicios 7 28 y ejercicios 7 29
```
---
## Problema 8
```text
Crea src/p08_multiplo6.erl: "Determinar si un entero dado es un múltiplo de 6."
es_multiplo_6/1 con N rem 6 =:= 0. run/1 igual que p07 pero para 6.
Pruebas EUnit (12, 0, -18 sí; 7, 29 no). Compile, eunit y ejecuta: ejercicios 8 18
```
---
## Problema 9
```text
Crea src/p09_par_impar.erl: "Introducir y determinar si un número es par o impar."
clasificar/1 devuelve el átomo par o impar (cuida los negativos). run/1 usa
ej_util:un_entero/1. Pruebas EUnit (4, 0 par; 29, -3 impar). Compile, eunit y
ejecuta: ejercicios 9 29
```
---
## Problema 10
```text
Crea src/p10_25_enteros.erl: "Escribir un programa que acepte 25 enteros positivos como
datos y describir cada uno como impar o par." Reutiliza p09_par_impar:clasificar/1.
Usa ej_util:obtener/4 con 25 valores, parse_entero_positivo y una función demo/0 con 25
enteros positivos de ejemplo. Imprime una línea numerada por dato. Pruebas EUnit,
compile, eunit y ejecuta: ejercicios 10 demo
```
---
## Problema 11
```text
Crea src/p11_pos_neg.erl: "Introducir un conjunto de 25 números. Determinar la cantidad
de números positivos y negativos del conjunto." contar/1 devuelve {Pos, Neg, Ceros} con
lists:foldl. demo/0 con 25 números (12 positivos, 12 negativos, 1 cero). Acepta
enteros y decimales (ej_util:parse_numero). Pruebas EUnit, compile, eunit y ejecuta:
ejercicios 11 demo
```
---
## Problema 12
```text
Crea src/p12_mayor_de_15.erl: "Encontrar el entero positivo mayor en una lista de
quince enteros, algunos de los cuales son impares." mayor/1 con lists:max/1. Valida 15
enteros positivos, demo/0 con 15 valores (mayor = 91). Imprime también si el mayor es
par o impar. Pruebas EUnit, compile, eunit y ejecuta: ejercicios 12 demo
```
---
## Problema 13
```text
Crea src/p13_segundo_mayor.erl: "Determinar el segundo entero más grande en un conjunto
de quince enteros positivos suministrados como datos." segundo_mayor/1 devuelve {ok, S}
o none; toma el segundo valor DISTINTO (lists:usort + reverse). Documenta esa decisión
en el encabezado. demo/0 con 15 valores (segundo = 76). Pruebas EUnit incluyendo
[9,9,5] -> {ok,5} y [4,4,4] -> none. Compile, eunit y ejecuta: ejercicios 13 demo
```
