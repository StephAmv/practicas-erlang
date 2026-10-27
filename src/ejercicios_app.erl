%%%-------------------------------------------------------------------
%%% Programador : Stephanie Ariana Medrano Vargas (No. de lista 29)
%%% Fecha       : 27/10/2026
%%% Descripción : Callback de la aplicacion OTP ejercicios.
%%%-------------------------------------------------------------------
-module(ejercicios_app).
-behaviour(application).

-export([start/2, stop/1]).

start(_StartType, _StartArgs) ->
    ejercicios_sup:start_link().

stop(_State) ->
    ok.
