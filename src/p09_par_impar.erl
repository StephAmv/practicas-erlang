%%%-------------------------------------------------------------------
%%% Programador : Stephanie Ariana Medrano Vargas (No. de lista 29)
%%% Fecha       : 27/10/2026
%%% Descripción : Determina si un numero introducido es par o impar.
%%%               Funciona correctamente con negativos usando abs/1
%%%               antes de aplicar rem, aunque N rem 2 =:= 0 ya es
%%%               suficiente porque (-4) rem 2 = 0 en Erlang.
%%%-------------------------------------------------------------------
-module(p09_par_impar).
-export([run/1, clasificar/1]).

%% -------------------------------------------------------------------
%% clasificar/1
%% Lógica pura: devuelve el átomo 'par' o 'impar'.
%% Usa abs/1 para manejar negativos sin ambigüedad:
%%   abs(-3) rem 2 = 1  -> impar
%%   abs(-4) rem 2 = 0  -> par
%% -------------------------------------------------------------------
clasificar(N) ->
    case abs(N) rem 2 of
        0 -> par;
        _ -> impar
    end.

%% -------------------------------------------------------------------
%% run/1
%% Obtiene un entero (argumento CLI o teclado) e imprime si es
%% par o impar.
%% -------------------------------------------------------------------
run(Args) ->
    case ej_util:un_entero(Args) of
        {ok, N} ->
            Clase = clasificar(N),
            io:format("Numero : ~w~n",   [N]),
            io:format("Es     : ~s~n",   [atom_to_list(Clase)]),
            ok;
        {error, Msg} ->
            {error, Msg}
    end.
