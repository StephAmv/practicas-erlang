%%%-------------------------------------------------------------------
%%% Programador : Stephanie Ariana Medrano Vargas (No. de lista 29)
%%% Fecha       : 27/10/2026
%%% Descripción : Encuentra el entero positivo mayor en una lista de
%%%               quince enteros (algunos impares) usando lists:max/1.
%%%               También indica si el mayor es par o impar.
%%%-------------------------------------------------------------------
-module(p12_mayor_de_15).
-export([run/1, mayor/1, demo/0]).

%% -------------------------------------------------------------------
%% demo/0
%% 15 enteros positivos de ejemplo. El mayor es 91 (impar).
%% Incluye mezcla de pares e impares tal como pide el enunciado.
%% -------------------------------------------------------------------
demo() ->
    ["45","12","91","33","78","7","56","29","64","11",
     "83","40","17","62","5"].

%% -------------------------------------------------------------------
%% mayor/1
%% Recibe una lista de enteros y devuelve el mayor usando lists:max/1.
%% -------------------------------------------------------------------
mayor(Nums) ->
    lists:max(Nums).

%% -------------------------------------------------------------------
%% Prompts para lectura interactiva desde teclado.
%% -------------------------------------------------------------------
prompts() ->
    [io_lib:format("Entero positivo #~w: ", [N]) || N <- lists:seq(1, 15)].

%% -------------------------------------------------------------------
%% run/1
%% Obtiene 15 enteros positivos (args, "demo" o teclado), valida,
%% encuentra el mayor e imprime resultado con clasificacion par/impar.
%% -------------------------------------------------------------------
run(Args) ->
    case ej_util:obtener(15, Args, demo(), prompts()) of
        {ok, Strs} ->
            case validar(Strs, 1, []) of
                {ok, Nums} ->
                    M = mayor(Nums),
                    Clase = p09_par_impar:clasificar(M),
                    io:format("Lista    : ~w~n", [Nums]),
                    io:format("Mayor    : ~w~n", [M]),
                    io:format("Es       : ~s~n", [atom_to_list(Clase)]),
                    ok;
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
