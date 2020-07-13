-module(openapi_orders).

-export([encode/1]).

-export_type([openapi_orders/0]).

-type openapi_orders() ::
    #{ 'type' => binary(),
       'exchange_id' => binary(),
       'data' => list()
     }.

encode(#{ 'type' := Type,
          'exchange_id' := ExchangeId,
          'data' := Data
        }) ->
    #{ 'type' => Type,
       'exchange_id' => ExchangeId,
       'data' => Data
     }.
