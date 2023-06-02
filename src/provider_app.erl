%%%-------------------------------------------------------------------
%% @doc provider public API
%% @end
%%%-------------------------------------------------------------------

-module(provider_app).

-behaviour(application).

-export([start/2, stop/1]).

start(_StartType, _StartArgs) ->
    provider_sup:start_link().

stop(_State) ->
    ok.

%% internal functions
