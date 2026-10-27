%%%-------------------------------------------------------------------
%%% Programador : Stephanie Ariana Medrano Vargas (No. de lista 29)
%%% Fecha       : 27/10/2026
%%% Descripción : Determina si un entero dado es multiplo de 6.
%%%               Imprime el residuo y SI o NO segun corresponda.
%%%-------------------------------------------------------------------
-module(p08_multiplo6).
-export([run/1, es_multiplo_6/1]).

%% -------------------------------------------------------------------
%% es_multiplo_6/1
%% Lógica pura: devuelve true si N es múltiplo de 6, false si no.
%% Funciona para positivos, negativos y cero.
%% -------------------------------------------------------------------
es_multiplo_6(N) ->
    N rem 6 =:= 0.

%% -------------------------------------------------------------------
%% run/1
%% Obtiene un entero (argumento CLI o teclado), calcula el residuo
%% e imprime el resultado.
%% -------------------------------------------------------------------
run(Args) ->
    case ej_util:un_entero(Args) of
        {ok, N} ->
            Residuo = N rem 6,
            Resultado = case es_multiplo_6(N) of
                true  -> "SI";
                false -> "NO"
            end,
            io:format("Numero  : ~w~n",    [N]),
            io:format("Residuo : ~w~n",    [Residuo]),
            io:format("Multiplo de 6: ~s~n", [Resultado]),
            ok;
        {error, Msg} ->
            {error, Msg}
    end.
