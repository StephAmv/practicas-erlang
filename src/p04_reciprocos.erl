%%%-------------------------------------------------------------------
%%% Programador : Stephanie Ariana Medrano Vargas (No. de lista 29)
%%% Fecha       : 27/10/2026
%%% Descripción : Problema 4. Imprime los enteros del 1 al 30 junto
%%%               con su recíproco (1/N).
%%%-------------------------------------------------------------------
-module(p04_reciprocos).

-export([run/1, reciprocos/0]).

%% [{N, 1/N}] para N de 1 a 30.
reciprocos() ->
    [{N, 1 / N} || N <- lists:seq(1, 30)].

run(_Args) ->
    io:format("~4s  ~12s~n", ["N", "1/N"]),
    lists:foreach(
      fun({N, R}) -> io:format("~4w  ~12.8f~n", [N, R]) end,
      reciprocos()),
    ok.
