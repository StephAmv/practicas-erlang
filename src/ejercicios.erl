%%%-------------------------------------------------------------------
%%% Programador : Stephanie Ariana Medrano Vargas (No. de lista 29)
%%% Fecha       : 27/10/2026
%%% Descripción : Punto de entrada escript. Ejecuta una practica por
%%%               numero ("ejercicios 7 28") o todas ("ejercicios todos").
%%%-------------------------------------------------------------------
-module(ejercicios).
-export([main/1]).

%% Tabla de practicas disponibles: {NumStr, Modulo}
practicas() ->
    [{"3",  p03_pares},
     {"4",  p04_reciprocos},
     {"5",  p05_potencias2},
     {"6",  p06_conversiones},
     {"7",  p07_divisible14},
     {"8",  p08_multiplo6},
     {"9",  p09_par_impar},
     {"10", p10_25_enteros},
     {"11", p11_pos_neg},
     {"12", p12_mayor_de_15},
     {"13", p13_segundo_mayor}].

%% -------------------------------------------------------------------
%% main/1  — punto de entrada escript
%% Uso:
%%   ejercicios <num> [args...]   -> ejecuta la practica <num>
%%   ejercicios todos             -> ejecuta todas en modo demo
%% -------------------------------------------------------------------
main([]) ->
    uso();
main(["todos" | _]) ->
    io:format("=== Ejecutando todas las practicas en modo demo ===~n"),
    lists:foreach(
        fun({_Num, Mod}) ->
            io:format("~n--- Practica ~s (~p) ---~n", [_Num, Mod]),
            catch Mod:run(args_demo(_Num))
        end,
        practicas());
main([NumStr | Resto]) ->
    case lists:keyfind(NumStr, 1, practicas()) of
        {NumStr, Mod} ->
            case Mod:run(Resto) of
                ok              -> ok;
                {error, Msg}    -> io:format("Error: ~s~n", [Msg])
            end;
        false ->
            io:format("Practica '~s' no encontrada.~n", [NumStr]),
            uso()
    end.

uso() ->
    io:format("Uso: ejercicios <numero> [args...]~n"),
    io:format("     ejercicios todos~n"),
    io:format("Practicas disponibles: 3 al 13~n").


%% Datos de ejemplo para el modo "todos".
args_demo("7") -> ["28"];
args_demo("8") -> ["18"];
args_demo("9") -> ["29"];
args_demo(_)   -> ["demo"].
