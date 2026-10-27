%%%-------------------------------------------------------------------
%%% Programador : Stephanie Ariana Medrano Vargas (No. de lista 29)
%%% Fecha       : 27/10/2026
%%% Descripción : Tabla de conversion de unidades: mm->cm, cm->m,
%%%               m->km para los valores 1, 10, 100 y 1,000.
%%%               Imprime 3 decimales en cada conversion.
%%%-------------------------------------------------------------------
-module(p06_conversiones).
-export([run/1, conversiones/0, tabla/1]).

%% -------------------------------------------------------------------
%% conversiones/0
%% Devuelve la lista de conversiones: {UnidadOrigen, UnidadDestino, Divisor}
%% -------------------------------------------------------------------
conversiones() ->
    [{"mm", "cm",  10},
     {"cm", "m",  100},
     {"m",  "km", 1000}].

%% -------------------------------------------------------------------
%% tabla/1
%% Recibe un Divisor y devuelve [{Valor, Valor/Divisor}]
%% para los valores 1, 10, 100 y 1000.
%% La division se hace en punto flotante para conservar decimales.
%% -------------------------------------------------------------------
tabla(Divisor) ->
    [{V, V / Divisor} || V <- [1, 10, 100, 1000]].

%% -------------------------------------------------------------------
%% run/1
%% Imprime las tres tablas de conversion con 3 decimales.
%% -------------------------------------------------------------------
run(_Args) ->
    lists:foreach(fun imprimir_tabla/1, conversiones()),
    ok.

%% Imprime una tabla individual para una conversión dada.
imprimir_tabla({Orig, Dest, Divisor}) ->
    io:format("~n  ~s -> ~s  (divide entre ~w)~n", [Orig, Dest, Divisor]),
    io:format("  ~8s   ~10s~n", [Orig, Dest]),
    io:format("  ~8s   ~10s~n", ["--------", "----------"]),
    lists:foreach(
        fun({V, R}) ->
            io:format("  ~8w   ~10.3f~n", [V, R])
        end,
        tabla(Divisor)).
