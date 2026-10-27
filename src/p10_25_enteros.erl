%%%-------------------------------------------------------------------
%%% Programador : Stephanie Ariana Medrano Vargas (No. de lista 29)
%%% Fecha       : 27/10/2026
%%% Descripción : Acepta 25 enteros positivos e indica si cada uno
%%%               es par o impar, con linea numerada. Reutiliza
%%%               p09_par_impar:clasificar/1.
%%%-------------------------------------------------------------------
-module(p10_25_enteros).
-export([run/1, demo/0]).

%% -------------------------------------------------------------------
%% demo/0
%% 25 enteros positivos de ejemplo (mezcla de pares e impares).
%% -------------------------------------------------------------------
demo() ->
    ["1","2","3","4","5","6","7","8","9","10",
     "11","12","13","14","15","16","17","18","19","20",
     "21","22","23","24","25"].

%% -------------------------------------------------------------------
%% Prompts para lectura interactiva desde teclado.
%% -------------------------------------------------------------------
prompts() ->
    [io_lib:format("Entero positivo #~w: ", [N]) || N <- lists:seq(1, 25)].

%% -------------------------------------------------------------------
%% run/1
%% Obtiene 25 enteros positivos (args, "demo" o teclado),
%% valida cada uno con parse_entero_positivo/1 e imprime una línea
%% numerada con su clasificación.
%% -------------------------------------------------------------------
run(Args) ->
    case ej_util:obtener(25, Args, demo(), prompts()) of
        {ok, Strs} ->
            %% Validar que todos sean enteros positivos
            case validar(Strs, 1, []) of
                {ok, Nums} ->
                    io:format("~n  #   Numero   Clasificacion~n"),
                    io:format("  -   ------   -------------~n"),
                    lists:foreach(
                        fun({Idx, N}) ->
                            Clase = p09_par_impar:clasificar(N),
                            io:format("  ~2w  ~6w   ~s~n",
                                      [Idx, N, atom_to_list(Clase)])
                        end,
                        lists:zip(lists:seq(1, 25), Nums)),
                    ok;
                {error, Msg} ->
                    {error, Msg}
            end;
        {error, Msg} ->
            {error, Msg}
    end.

%% -------------------------------------------------------------------
%% validar/3
%% Recorre la lista de strings validando cada uno con
%% parse_entero_positivo. Devuelve {ok, [N1..N25]} o {error, Msg}.
%% -------------------------------------------------------------------
validar([], _Idx, Acc) ->
    {ok, lists:reverse(Acc)};
validar([H | T], Idx, Acc) ->
    case ej_util:parse_entero_positivo(H) of
        {ok, N}      -> validar(T, Idx + 1, [N | Acc]);
        {error, Msg} -> {error, io_lib:format("Dato #~w: ~s", [Idx, Msg])}
    end.
