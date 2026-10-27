%%%-------------------------------------------------------------------
%%% Programador : Stephanie Ariana Medrano Vargas (No. de lista 29)
%%% Fecha       : 27/10/2026
%%% Descripción : Imprime los enteros pares del 2 al 48, uno por linea.
%%%-------------------------------------------------------------------
-module(p03_pares).
-export([run/1, pares/0]).

%% -------------------------------------------------------------------
%% pares/0
%% Lógica pura: devuelve la lista de enteros pares del 2 al 48.
%% -------------------------------------------------------------------
pares() ->
    lists:seq(2, 48, 2).

%% -------------------------------------------------------------------
%% run/1
%% Imprime cada número par del 2 al 48 en su propia línea.
%% -------------------------------------------------------------------
run(_Args) ->
    io:format("Numeros pares del 2 al 48:~n"),
    lists:foreach(fun(N) -> io:format("~w~n", [N]) end, pares()),
    ok.
