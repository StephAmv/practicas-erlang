%%%-------------------------------------------------------------------
%%% Programador : Stephanie Ariana Medrano Vargas (No. de lista 29)
%%% Fecha       : 27/10/2026
%%% Descripción : Determina el segundo entero mas grande en un conjunto
%%%               de quince enteros positivos.
%%%
%%% Decisión de diseño:
%%%   Se busca el segundo valor DISTINTO, no la segunda posición.
%%%   Algoritmo: lists:usort/1 elimina duplicados y ordena de menor a
%%%   mayor; lists:reverse/1 lo invierte (mayor primero); si quedan al
%%%   menos 2 elementos el segundo es el resultado. Si todos los valores
%%%   son iguales (solo un elemento tras usort) se devuelve 'none'.
%%%   Ejemplos:
%%%     [9,9,5]   -> usort=[5,9] -> reverse=[9,5] -> {ok,5}
%%%     [4,4,4]   -> usort=[4]   -> reverse=[4]   -> none
%%%-------------------------------------------------------------------
-module(p13_segundo_mayor).
-export([run/1, segundo_mayor/1, demo/0]).

%% -------------------------------------------------------------------
%% demo/0
%% 15 enteros positivos de ejemplo. El mayor es 91, el segundo es 76.
%% -------------------------------------------------------------------
demo() ->
    ["91","76","45","33","70","7","56","29","64","11",
     "76","40","17","62","5"].

%% -------------------------------------------------------------------
%% segundo_mayor/1
%% Recibe una lista de enteros y devuelve {ok, S} o none.
%% Usa lists:usort para eliminar duplicados y ordenar,
%% luego invierte y toma el segundo elemento si existe.
%% -------------------------------------------------------------------
segundo_mayor(Nums) ->
    Unicos = lists:reverse(lists:usort(Nums)),
    case Unicos of
        [_Primero, Segundo | _] -> {ok, Segundo};
        _                       -> none
    end.

%% -------------------------------------------------------------------
%% Prompts para lectura interactiva desde teclado.
%% -------------------------------------------------------------------
prompts() ->
    [io_lib:format("Entero positivo #~w: ", [N]) || N <- lists:seq(1, 15)].

%% -------------------------------------------------------------------
%% run/1
%% Obtiene 15 enteros positivos (args, "demo" o teclado), valida,
%% encuentra el segundo mayor e imprime el resultado.
%% -------------------------------------------------------------------
run(Args) ->
    case ej_util:obtener(15, Args, demo(), prompts()) of
        {ok, Strs} ->
            case validar(Strs, 1, []) of
                {ok, Nums} ->
                    Mayor = lists:max(Nums),
                    case segundo_mayor(Nums) of
                        {ok, S} ->
                            io:format("Lista          : ~w~n", [Nums]),
                            io:format("Mayor          : ~w~n", [Mayor]),
                            io:format("Segundo mayor  : ~w~n", [S]),
                            ok;
                        none ->
                            io:format("Lista          : ~w~n", [Nums]),
                            io:format("Mayor          : ~w~n", [Mayor]),
                            io:format("Segundo mayor  : no existe (todos iguales)~n"),
                            ok
                    end;
                {error, Msg} ->
                    {error, Msg}
            end;
        {error, Msg} ->
            {error, Msg}
    end.

%% -------------------------------------------------------------------
%% validar/3
%% Convierte lista de strings a enteros positivos.
%% Devuelve {ok, [N1..N15]} o {error, Msg}.
%% -------------------------------------------------------------------
validar([], _Idx, Acc) ->
    {ok, lists:reverse(Acc)};
validar([H | T], Idx, Acc) ->
    case ej_util:parse_entero_positivo(H) of
        {ok, N}      -> validar(T, Idx + 1, [N | Acc]);
        {error, Msg} -> {error, io_lib:format("Dato #~w: ~s", [Idx, Msg])}
    end.
