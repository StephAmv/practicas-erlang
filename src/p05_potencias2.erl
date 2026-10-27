%%%-------------------------------------------------------------------
%%% Programador : Stephanie Ariana Medrano Vargas (No. de lista 29)
%%% Fecha       : 27/10/2026
%%% Descripción : Imprime una tabla de potencias del 2 que no exceda
%%%               al 1,000. Ultimo renglon: 2^9 = 512.
%%%-------------------------------------------------------------------
-module(p05_potencias2).
-export([run/1, potencias/0]).

%% -------------------------------------------------------------------
%% potencias/0
%% Lógica pura: devuelve [{Exp, 2^Exp}] desde Exp=0
%% mientras el valor sea =< 1000.
%% Usa bsl (bit shift left) para calcular 2^Exp = 1 bsl Exp.
%% -------------------------------------------------------------------
potencias() ->
    potencias(0, []).

potencias(Exp, Acc) ->
    Valor = 1 bsl Exp,          %% 2^Exp usando desplazamiento de bits
    case Valor =< 1000 of
        true  -> potencias(Exp + 1, [{Exp, Valor} | Acc]);
        false -> lists:reverse(Acc)
    end.

%% -------------------------------------------------------------------
%% run/1
%% Imprime la tabla con encabezado: columnas n y 2^n.
%% -------------------------------------------------------------------
run(_Args) ->
    io:format("~4s  ~6s~n", ["n", "2^n"]),
    io:format("~4s  ~6s~n", ["----", "------"]),
    lists:foreach(
        fun({Exp, Val}) ->
            io:format("~4w  ~6w~n", [Exp, Val])
        end,
        potencias()),
    ok.
