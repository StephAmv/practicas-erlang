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
