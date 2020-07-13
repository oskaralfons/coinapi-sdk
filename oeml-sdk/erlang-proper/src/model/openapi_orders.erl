-module(openapi_orders).

-include("openapi.hrl").

-export([openapi_orders/0]).

-export([openapi_orders/1]).

-export_type([openapi_orders/0]).

-type openapi_orders() ::
  [ {'type', binary() }
  | {'exchange_id', binary() }
  | {'data', list(openapi_orders_data:openapi_orders_data()) }
  ].


openapi_orders() ->
    openapi_orders([]).

openapi_orders(Fields) ->
  Default = [ {'type', binary() }
            , {'exchange_id', binary() }
            , {'data', list(openapi_orders_data:openapi_orders_data()) }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

