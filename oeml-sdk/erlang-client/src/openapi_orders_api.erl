-module(openapi_orders_api).

-export([v1_orders_cancel_all_post/2, v1_orders_cancel_all_post/3,
         v1_orders_cancel_post/2, v1_orders_cancel_post/3,
         v1_orders_get/1, v1_orders_get/2,
         v1_orders_post/2, v1_orders_post/3,
         v1_orders_status_client_order_id_get/2, v1_orders_status_client_order_id_get/3]).

-define(BASE_URL, "").

%% @doc Cancel all orders request
%% This request cancels all open orders on single specified exchange.
-spec v1_orders_cancel_all_post(ctx:ctx(), openapi_cancel_order_all_request:openapi_cancel_order_all_request()) -> {ok, openapi_message:openapi_message(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
v1_orders_cancel_all_post(Ctx, OpenapiCancelOrderAllRequest) ->
    v1_orders_cancel_all_post(Ctx, OpenapiCancelOrderAllRequest, #{}).

-spec v1_orders_cancel_all_post(ctx:ctx(), openapi_cancel_order_all_request:openapi_cancel_order_all_request(), maps:map()) -> {ok, openapi_message:openapi_message(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
v1_orders_cancel_all_post(Ctx, OpenapiCancelOrderAllRequest, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/v1/orders/cancel/all"],
    QS = [],
    Headers = [],
    Body1 = OpenapiCancelOrderAllRequest,
    ContentTypeHeader = openapi_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Cancel order request
%% Request cancel for an existing order. The order can be canceled using the `client_order_id` or `exchange_order_id`.
-spec v1_orders_cancel_post(ctx:ctx(), openapi_cancel_order_single_request:openapi_cancel_order_single_request()) -> {ok, openapi_order_execution_report:openapi_order_execution_report(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
v1_orders_cancel_post(Ctx, OpenapiCancelOrderSingleRequest) ->
    v1_orders_cancel_post(Ctx, OpenapiCancelOrderSingleRequest, #{}).

-spec v1_orders_cancel_post(ctx:ctx(), openapi_cancel_order_single_request:openapi_cancel_order_single_request(), maps:map()) -> {ok, openapi_order_execution_report:openapi_order_execution_report(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
v1_orders_cancel_post(Ctx, OpenapiCancelOrderSingleRequest, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/v1/orders/cancel"],
    QS = [],
    Headers = [],
    Body1 = OpenapiCancelOrderSingleRequest,
    ContentTypeHeader = openapi_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get open orders
%% Get last execution reports for open orders across all or single exchange.
-spec v1_orders_get(ctx:ctx()) -> {ok, [openapi_order_execution_report:openapi_order_execution_report()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
v1_orders_get(Ctx) ->
    v1_orders_get(Ctx, #{}).

-spec v1_orders_get(ctx:ctx(), maps:map()) -> {ok, [openapi_order_execution_report:openapi_order_execution_report()], openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
v1_orders_get(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/v1/orders"],
    QS = lists:flatten([])++openapi_utils:optional_params(['exchange_id'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Send new order
%% This request creating new order for the specific exchange.
-spec v1_orders_post(ctx:ctx(), openapi_new_order_single:openapi_new_order_single()) -> {ok, openapi_order_execution_report:openapi_order_execution_report(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
v1_orders_post(Ctx, OpenapiNewOrderSingle) ->
    v1_orders_post(Ctx, OpenapiNewOrderSingle, #{}).

-spec v1_orders_post(ctx:ctx(), openapi_new_order_single:openapi_new_order_single(), maps:map()) -> {ok, openapi_order_execution_report:openapi_order_execution_report(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
v1_orders_post(Ctx, OpenapiNewOrderSingle, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/v1/orders"],
    QS = [],
    Headers = [],
    Body1 = OpenapiNewOrderSingle,
    ContentTypeHeader = openapi_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get order execution report
%% Get the last order execution report for the specified order. The requested order does not need to be active or opened.
-spec v1_orders_status_client_order_id_get(ctx:ctx(), binary()) -> {ok, openapi_order_execution_report:openapi_order_execution_report(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
v1_orders_status_client_order_id_get(Ctx, ClientOrderId) ->
    v1_orders_status_client_order_id_get(Ctx, ClientOrderId, #{}).

-spec v1_orders_status_client_order_id_get(ctx:ctx(), binary(), maps:map()) -> {ok, openapi_order_execution_report:openapi_order_execution_report(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
v1_orders_status_client_order_id_get(Ctx, ClientOrderId, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = get,
    Path = ["/v1/orders/status/", ClientOrderId, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = openapi_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


