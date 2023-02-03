-module(proc).
-export([run/0,process/0]).

process() ->
    receive
        Request ->
            io:format("Handling: ~s~n", [Request]),
            process()
    end.

run() ->
    Pid = spawn(?MODULE, process, []),
    Pid ! request1,
    Pid ! request2,
    ok.
