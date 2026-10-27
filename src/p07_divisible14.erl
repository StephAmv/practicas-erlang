%%%-------------------------------------------------------------------
%%% Programador : Stephanie Ariana Medrano Vargas (No. de lista 29)
%%% Fecha       : 27/10/2026
%%% Descripción : Determina si un numero dado es divisible entre 14.
%%%               Imprime el residuo y SI o NO segun corresponda.
%%%-------------------------------------------------------------------
-module(p07_divisible14).
-export([run/1, es_divisible_14/1]).

%% -------------------------------------------------------------------
%% es_divisible_14/1
%% Lógica pura: devuelve true si N es divisible entre 14, false si no.
%% Funciona para positivos, negativos y cero.
%% -------------------------------------------------------------------
es_divisible_14(N) ->
    N rem 14 =:= 0.

%% -------------------------------------------------------------------
%% run/1
%% Obtiene un entero (argumento CLI o teclado), calcula el residuo
%% e imprime el resultado.
%% -------------------------------------------------------------------
run(Args) ->
    case ej_util:un_entero(Args) of
        {ok, N} ->
            Residuo = N rem 14,
            Resultado = case es_divisible_14(N) of
                true  -> "SI";
                false -> "NO"
            end,
            io:format("Numero  : ~w~n",   [N]),
            io:format("Residuo : ~w~n",   [Residuo]),
            io:format("Divisible entre 14: ~s~n", [Resultado]),
            ok;
        {error, Msg} ->
            {error, Msg}
    end.
