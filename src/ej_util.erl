%%%-------------------------------------------------------------------
%%% Programador : Stephanie Ariana Medrano Vargas (No. de lista 29)
%%% Fecha       : 27/10/2026
%%% Descripción : Utilidades compartidas: lectura, validación y
%%%               obtención de valores desde argumentos o teclado.
%%%-------------------------------------------------------------------
-module(ej_util).
-export([parse_entero/1, parse_entero_positivo/1, parse_numero/1,
         un_entero/1, obtener/4]).

%% -------------------------------------------------------------------
%% parse_entero/1
%% Convierte un string a entero.
%% Devuelve {ok, N} o {error, Msg}.
%% -------------------------------------------------------------------
parse_entero(Str) ->
    S = string:trim(Str),
    case string:to_integer(S) of
        {N, ""} -> {ok, N};
        _       -> {error, "Valor no es un entero valido: " ++ S}
    end.

%% -------------------------------------------------------------------
%% parse_entero_positivo/1
%% Igual que parse_entero/1 pero exige que el número sea > 0.
%% -------------------------------------------------------------------
parse_entero_positivo(Str) ->
    case parse_entero(Str) of
        {ok, N} when N > 0 -> {ok, N};
        {ok, _}            -> {error, "Se requiere un entero positivo: " ++ Str};
        Err                -> Err
    end.

%% -------------------------------------------------------------------
%% parse_numero/1
%% Convierte un string a número (entero o float).
%% Devuelve {ok, N} o {error, Msg}.
%% -------------------------------------------------------------------
parse_numero(Str) ->
    S = string:trim(Str),
    case string:to_float(S) of
        {F, ""} ->
            {ok, F};
        _ ->
            case string:to_integer(S) of
                {N, ""} -> {ok, N};
                _       -> {error, "Valor no es un numero valido: " ++ S}
            end
    end.

%% -------------------------------------------------------------------
%% un_entero/1
%% Obtiene un entero a partir de:
%%   - una lista con al menos un argumento (primer elemento)
%%   - lista vacía => lee desde teclado
%% Devuelve {ok, N} o {error, Msg}.
%% -------------------------------------------------------------------
un_entero([]) ->
    io:format("Ingresa un entero: "),
    Linea = string:trim(io:get_line("")),
    parse_entero(Linea);
un_entero([H | _]) ->
    parse_entero(H).

%% -------------------------------------------------------------------
%% obtener/4
%% Toma exactamente N valores de: argumentos, la palabra "demo" o teclado.
%%   N       : cantidad de valores requeridos
%%   Args    : lista de strings (argumentos CLI)
%%   Demo    : lista de N valores por defecto (usada si Args==["demo"])
%%   Prompt  : lista de N strings-prompt para leer desde teclado
%% Devuelve {ok, [Str1, ..., StrN]} o {error, Msg}.
%% -------------------------------------------------------------------
obtener(N, ["demo" | _], Demo, _Prompts) when length(Demo) >= N ->
    Vals = lists:sublist(Demo, N),
    io:format("Modo demo: usando valores ~p~n", [Vals]),
    {ok, Vals};
obtener(N, Args, _Demo, _Prompts) when length(Args) >= N ->
    {ok, lists:sublist(Args, N)};
obtener(N, _Args, _Demo, Prompts) ->
    %% Leer desde teclado usando los prompts proporcionados
    leer_teclado(N, Prompts, []).

%% Auxiliar recursiva: lee N líneas del teclado.
leer_teclado(0, _Prompts, Acc) ->
    {ok, lists:reverse(Acc)};
leer_teclado(N, [P | Resto], Acc) ->
    io:format("~s", [P]),
    Linea = string:trim(io:get_line("")),
    leer_teclado(N - 1, Resto, [Linea | Acc]);
leer_teclado(N, [], Acc) ->
    %% Si se agotan los prompts, usar prompt genérico
    io:format("Valor: "),
    Linea = string:trim(io:get_line("")),
    leer_teclado(N - 1, [], [Linea | Acc]).
