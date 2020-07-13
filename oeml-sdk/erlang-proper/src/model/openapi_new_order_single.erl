-module(openapi_new_order_single).

-include("openapi.hrl").

-export([openapi_new_order_single/0]).

-export([openapi_new_order_single/1]).

-export_type([openapi_new_order_single/0]).

-type openapi_new_order_single() ::
  [ {'exchange_id', binary() }
  | {'client_order_id', binary() }
  | {'symbol_exchange', binary() }
  | {'symbol_coinapi', binary() }
  | {'amount_order', integer() }
  | {'price', integer() }
  | {'side', openapi_ord_side:openapi_ord_side() }
  | {'order_type', openapi_ord_type:openapi_ord_type() }
  | {'time_in_force', openapi_time_in_force:openapi_time_in_force() }
  | {'expire_time', date() }
  | {'exec_inst', list(binary()) }
  ].


openapi_new_order_single() ->
    openapi_new_order_single([]).

openapi_new_order_single(Fields) ->
  Default = [ {'exchange_id', binary() }
            , {'client_order_id', binary() }
            , {'symbol_exchange', binary() }
            , {'symbol_coinapi', binary() }
            , {'amount_order', integer() }
            , {'price', integer() }
            , {'side', openapi_ord_side:openapi_ord_side() }
            , {'order_type', openapi_ord_type:openapi_ord_type() }
            , {'time_in_force', openapi_time_in_force:openapi_time_in_force() }
            , {'expire_time', date() }
            , {'exec_inst', list(binary()) }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

