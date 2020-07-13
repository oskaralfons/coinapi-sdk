-module(openapi_create_order_validation_error).

-include("openapi.hrl").

-export([openapi_create_order_validation_error/0]).

-export([openapi_create_order_validation_error/1]).

-export_type([openapi_create_order_validation_error/0]).

-type openapi_create_order_validation_error() ::
  [ {'type', binary() }
  | {'title', binary() }
  | {'status', integer() }
  | {'traceId', binary() }
  | {'errors', binary() }
  ].


openapi_create_order_validation_error() ->
    openapi_create_order_validation_error([]).

openapi_create_order_validation_error(Fields) ->
  Default = [ {'type', binary() }
            , {'title', binary() }
            , {'status', integer() }
            , {'traceId', binary() }
            , {'errors', binary() }
            ],
  lists:ukeymerge(1, lists:sort(Fields), lists:sort(Default)).

