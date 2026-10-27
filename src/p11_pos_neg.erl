%%%-------------------------------------------------------------------
%%% Programador : Stephanie Ariana Medrano Vargas (No. de lista 29)
%%% Fecha       : 27/10/2026
%%% Descripción : Recibe 25 numeros (enteros o decimales) y cuenta
%%%               cuantos son positivos, negativos y ceros.
%%%               contar/1 usa lists:foldl para recorrer la lista.
%%%-------------------------------------------------------------------
-module(p11_pos_neg).
-export([run/1, contar/1, demo/0]).

%% -------------------------------------------------------------------
%% demo/0
%% 25 números de ejemplo: 12 positivos, 12 negativos, 1 cero.
%% Mezcla enteros y decimales para ejercitar parse_numero.
%% -------------------------------------------------------------------
demo() ->
    ["1", "2.5", "3", "-1", "-2.5", "-3",
     "4", "5",   "6", "-4", "-5",   "-6",
     "7", "8.1", "9", "-7", "-8.1", "-9",
     "10","11",  "12","-10","-11",  "-12",
     "0"].

%% -------------------------------------------------------------------
%% contar/1
%% Recibe una lista de números (integer o float) y devuelve
%% {Positivos, Negativos, Ceros} usando lists:foldl.
%% -------------------------------------------------------------------
contar(Nums) ->
    lists:foldl(
        fun(N, {Pos, Neg, Cer}) ->
            if
                N  > 0 -> {Pos + 1, Neg,     Cer    };
                N  < 0 -> {Pos,     Neg + 1, Cer    };
                true   -> {Pos,     Neg,     Cer + 1}
            end
        end,
        {0, 0, 0},
        Nums).

%% -------------------------------------------------------------------
%% Prompts para lectura interactiva desde teclado.
%% -------------------------------------------------------------------
prompts() ->
    [io_lib:format("Numero #~w: ", [N]) || N <- lists:seq(1, 25)].

%% -------------------------------------------------------------------
%% run/1
%% Obtiene 25 valores (args, "demo" o teclado), parsea cada uno con
%% parse_numero, cuenta pos/neg/ceros e imprime el resumen.
%% -------------------------------------------------------------------
run(Args) ->
    case ej_util:obtener(25, Args, demo(), prompts()) of
        {ok, Strs} ->
            case parsear(Strs, 1, []) of
                {ok, Nums} ->
                    {Pos, Neg, Cer} = contar(Nums),
                    io:format("Total de numeros : ~w~n", [length(Nums)]),
                    io:format("Positivos        : ~w~n", [Pos]),
                    io:format("Negativos        : ~w~n", [Neg]),
                    io:format("Ceros            : ~w~n", [Cer]),
                    ok;
                {error, Msg} ->
                    {error, Msg}
            end;
        {error, Msg} ->
            {error, Msg}
    end.

%% -------------------------------------------------------------------
%% parsear/3
%% Convierte lista de strings a números usando parse_numero.
%% Devuelve {ok, [N1..N25]} o {error, Msg}.
%% -------------------------------------------------------------------
parsear([], _Idx, Acc) ->
    {ok, lists:reverse(Acc)};
parsear([H | T], Idx, Acc) ->
    case ej_util:parse_numero(H) of
        {ok, N}      -> parsear(T, Idx + 1, [N | Acc]);
        {error, Msg} -> {error, io_lib:format("Dato #~w: ~s", [Idx, Msg])}
    end.
