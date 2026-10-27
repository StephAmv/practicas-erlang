%%%-------------------------------------------------------------------
%%% Programador : Stephanie Ariana Medrano Vargas (No. de lista 29)
%%% Fecha       : 27/10/2026
%%% Descripción : Suite EUnit para todos los problemas del proyecto.
%%%-------------------------------------------------------------------
-module(ejercicios_tests).
-include_lib("eunit/include/eunit.hrl").

%% ===================================================================
%% Problema 3 — pares del 2 al 48
%% ===================================================================
p03_longitud_test() ->
    ?assertEqual(24, length(p03_pares:pares())).

p03_primero_test() ->
    ?assertEqual(2, hd(p03_pares:pares())).

p03_ultimo_test() ->
    ?assertEqual(48, lists:last(p03_pares:pares())).

%% ===================================================================
%% Problema 5 — potencias del 2 que no excedan 1,000
%% ===================================================================
p05_ultimo_exp_test() ->
    %% El último renglón debe ser 2^9 = 512
    {Exp, Val} = lists:last(p05_potencias2:potencias()),
    ?assertEqual(9,   Exp),
    ?assertEqual(512, Val).

p05_primero_test() ->
    %% El primer renglón es 2^0 = 1
    ?assertEqual({0, 1}, hd(p05_potencias2:potencias())).

p05_no_excede_1000_test() ->
    %% Ningún valor de la tabla supera 1,000
    Vals = [V || {_E, V} <- p05_potencias2:potencias()],
    ?assert(lists:max(Vals) =< 1000).

p05_siguiente_excede_test() ->
    %% El siguiente (2^10 = 1024) ya superaría el límite
    ?assert(1 bsl 10 > 1000).

%% ===================================================================
%% Problema 6 — tablas de conversión de unidades
%% ===================================================================
p06_conversiones_longitud_test() ->
    %% Deben existir exactamente 3 conversiones
    ?assertEqual(3, length(p06_conversiones:conversiones())).

p06_tabla_cuatro_filas_test() ->
    %% tabla/1 siempre devuelve 4 filas (1, 10, 100, 1000)
    ?assertEqual(4, length(p06_conversiones:tabla(10))).

p06_tabla_mm_cm_test() ->
    %% 1 mm = 0.1 cm, 1000 mm = 100.0 cm
    Tab = p06_conversiones:tabla(10),
    ?assertEqual({1,    0.1}, hd(Tab)),
    ?assertEqual({1000, 100.0}, lists:last(Tab)).

p06_tabla_cm_m_test() ->
    %% 100 cm = 1.0 m
    Tab = p06_conversiones:tabla(100),
    {100, Val} = lists:nth(3, Tab),
    ?assertEqual(1.0, Val).

p06_tabla_m_km_test() ->
    %% 1000 m = 1.0 km
    Tab = p06_conversiones:tabla(1000),
    ?assertEqual({1000, 1.0}, lists:last(Tab)).

%% ===================================================================
%% Problema 7 — divisible entre 14
%% ===================================================================
p07_si_28_test() ->
    ?assert(p07_divisible14:es_divisible_14(28)).

p07_si_0_test() ->
    ?assert(p07_divisible14:es_divisible_14(0)).

p07_si_neg42_test() ->
    ?assert(p07_divisible14:es_divisible_14(-42)).

p07_no_7_test() ->
    ?assertNot(p07_divisible14:es_divisible_14(7)).

p07_no_29_test() ->
    ?assertNot(p07_divisible14:es_divisible_14(29)).

%% ===================================================================
%% Problema 8 — multiplo de 6
%% ===================================================================
p08_si_12_test() ->
    ?assert(p08_multiplo6:es_multiplo_6(12)).

p08_si_0_test() ->
    ?assert(p08_multiplo6:es_multiplo_6(0)).

p08_si_neg18_test() ->
    ?assert(p08_multiplo6:es_multiplo_6(-18)).

p08_no_7_test() ->
    ?assertNot(p08_multiplo6:es_multiplo_6(7)).

p08_no_29_test() ->
    ?assertNot(p08_multiplo6:es_multiplo_6(29)).

%% ===================================================================
%% Problema 9 — par o impar
%% ===================================================================
p09_par_4_test() ->
    ?assertEqual(par, p09_par_impar:clasificar(4)).

p09_par_0_test() ->
    ?assertEqual(par, p09_par_impar:clasificar(0)).

p09_impar_29_test() ->
    ?assertEqual(impar, p09_par_impar:clasificar(29)).

p09_impar_neg3_test() ->
    ?assertEqual(impar, p09_par_impar:clasificar(-3)).

%% ===================================================================
%% Problema 10 — 25 enteros positivos par/impar
%% ===================================================================
p10_demo_longitud_test() ->
    %% demo/0 debe contener exactamente 25 elementos
    ?assertEqual(25, length(p10_25_enteros:demo())).

p10_demo_todos_positivos_test() ->
    %% Todos los strings de demo/0 deben parsearse como enteros positivos
    Resultados = [ej_util:parse_entero_positivo(S) || S <- p10_25_enteros:demo()],
    ?assert(lists:all(fun({ok, _}) -> true; (_) -> false end, Resultados)).

p10_clasificacion_par_test() ->
    %% El elemento "2" debe clasificarse como par
    {ok, N} = ej_util:parse_entero_positivo("2"),
    ?assertEqual(par, p09_par_impar:clasificar(N)).

p10_clasificacion_impar_test() ->
    %% El elemento "1" debe clasificarse como impar
    {ok, N} = ej_util:parse_entero_positivo("1"),
    ?assertEqual(impar, p09_par_impar:clasificar(N)).

%% ===================================================================
%% Problema 11 — contar positivos, negativos y ceros
%% ===================================================================
p11_demo_longitud_test() ->
    %% demo/0 debe tener exactamente 25 elementos
    ?assertEqual(25, length(p11_pos_neg:demo())).

p11_demo_conteo_test() ->
    %% El demo tiene 12 positivos, 12 negativos, 1 cero
    {ok, Nums} = p11_util_parsear(p11_pos_neg:demo()),
    ?assertEqual({12, 12, 1}, p11_pos_neg:contar(Nums)).

p11_contar_basico_test() ->
    %% Prueba directa con lista de números ya parseados
    ?assertEqual({2, 1, 1}, p11_pos_neg:contar([3, -1, 0, 7])).

p11_contar_todos_cero_test() ->
    ?assertEqual({0, 0, 3}, p11_pos_neg:contar([0, 0, 0])).

p11_contar_float_test() ->
    %% Acepta decimales
    ?assertEqual({1, 1, 0}, p11_pos_neg:contar([1.5, -2.5])).

%% Auxiliar de test: parsea lista de strings a números
p11_util_parsear(Strs) ->
    Results = [ej_util:parse_numero(S) || S <- Strs],
    case lists:all(fun({ok,_}) -> true; (_) -> false end, Results) of
        true  -> {ok, [N || {ok, N} <- Results]};
        false -> error
    end.

%% ===================================================================
%% Problema 12 — mayor de 15 enteros positivos
%% ===================================================================
p12_demo_longitud_test() ->
    %% demo/0 debe tener exactamente 15 elementos
    ?assertEqual(15, length(p12_mayor_de_15:demo())).

p12_demo_mayor_91_test() ->
    %% El mayor del demo es 91
    {ok, Nums} = p12_util_validar(p12_mayor_de_15:demo()),
    ?assertEqual(91, p12_mayor_de_15:mayor(Nums)).

p12_mayor_impar_test() ->
    %% 91 es impar
    ?assertEqual(impar, p09_par_impar:clasificar(91)).

p12_mayor_basico_test() ->
    ?assertEqual(10, p12_mayor_de_15:mayor([3, 10, 7, 1])).

p12_mayor_par_test() ->
    %% Verificar clasificacion cuando el mayor es par
    ?assertEqual(par, p09_par_impar:clasificar(p12_mayor_de_15:mayor([4, 2, 6]))).

%% Auxiliar: valida lista de strings como enteros positivos
p12_util_validar(Strs) ->
    Results = [ej_util:parse_entero_positivo(S) || S <- Strs],
    case lists:all(fun({ok,_}) -> true; (_) -> false end, Results) of
        true  -> {ok, [N || {ok, N} <- Results]};
        false -> error
    end.

%% ===================================================================
%% Problema 13 — segundo mayor (valor distinto)
%% ===================================================================
p13_demo_longitud_test() ->
    %% demo/0 debe tener exactamente 15 elementos
    ?assertEqual(15, length(p13_segundo_mayor:demo())).

p13_demo_segundo_76_test() ->
    %% El segundo mayor del demo es 76
    {ok, Nums} = p12_util_validar(p13_segundo_mayor:demo()),
    ?assertEqual({ok, 76}, p13_segundo_mayor:segundo_mayor(Nums)).

p13_duplicados_test() ->
    %% [9,9,5] -> segundo distinto es 5
    ?assertEqual({ok, 5}, p13_segundo_mayor:segundo_mayor([9, 9, 5])).

p13_todos_iguales_test() ->
    %% [4,4,4] -> none porque no hay segundo valor distinto
    ?assertEqual(none, p13_segundo_mayor:segundo_mayor([4, 4, 4])).

p13_sin_duplicados_test() ->
    %% Lista sin duplicados: segundo mayor normal
    ?assertEqual({ok, 8}, p13_segundo_mayor:segundo_mayor([3, 8, 10, 1])).

p13_dos_elementos_test() ->
    %% Con exactamente dos valores distintos
    ?assertEqual({ok, 2}, p13_segundo_mayor:segundo_mayor([2, 5])).
