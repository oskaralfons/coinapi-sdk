-module(openapi_orders_api).

-export([v1_orders_cancel_all_post/2, v1_orders_cancel_all_post/3,
         v1_orders_cancel_post/2, v1_orders_cancel_post/3,
         v1_orders_get/1, v1_orders_get/2,
         v1_orders_post/2, v1_orders_post/3,
         v1_orders_status_client_order_id_get/2, v1_orders_status_client_order_id_get/3]).

-define(BASE_URL, "").

%% @doc Cancel all orders
%% This request cancels all open orders across all or single specified exchange.
-spec v1_orders_cancel_all_post(ctx:ctx(), openapi_order_cancel_all_request:openapi_order_cancel_all_request()) -> {ok, openapi_message:openapi_message(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
v1_orders_cancel_all_post(Ctx, OpenapiOrderCancelAllRequest) ->
    v1_orders_cancel_all_post(Ctx, OpenapiOrderCancelAllRequest, #{}).

-spec v1_orders_cancel_all_post(ctx:ctx(), openapi_order_cancel_all_request:openapi_order_cancel_all_request(), maps:map()) -> {ok, openapi_message:openapi_message(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
v1_orders_cancel_all_post(Ctx, OpenapiOrderCancelAllRequest, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/v1/orders/cancel/all"],
    QS = [],
    Headers = [],
    Body1 = OpenapiOrderCancelAllRequest,
    ContentTypeHeader = openapi_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Cancel order
%% This request cancels an existing order. The order can be canceled by the client order ID or exchange order ID.
-spec v1_orders_cancel_post(ctx:ctx(), openapi_order_cancel_single_request:openapi_order_cancel_single_request()) -> {ok, openapi_execution_report:openapi_execution_report(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
v1_orders_cancel_post(Ctx, OpenapiOrderCancelSingleRequest) ->
    v1_orders_cancel_post(Ctx, OpenapiOrderCancelSingleRequest, #{}).

-spec v1_orders_cancel_post(ctx:ctx(), openapi_order_cancel_single_request:openapi_order_cancel_single_request(), maps:map()) -> {ok, openapi_execution_report:openapi_execution_report(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
v1_orders_cancel_post(Ctx, OpenapiOrderCancelSingleRequest, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/v1/orders/cancel"],
    QS = [],
    Headers = [],
    Body1 = OpenapiOrderCancelSingleRequest,
    ContentTypeHeader = openapi_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get all orders
%% Get all current open orders across all or single specified exchange.
-spec v1_orders_get(ctx:ctx()) -> {ok, openapi_orders:openapi_orders(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
v1_orders_get(Ctx) ->
    v1_orders_get(Ctx, #{}).

-spec v1_orders_get(ctx:ctx(), maps:map()) -> {ok, openapi_orders:openapi_orders(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
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

%% @doc Create new order
%% This request creating new order for the specific exchange.
-spec v1_orders_post(ctx:ctx(), openapi_new_order:openapi_new_order()) -> {ok, openapi_execution_report:openapi_execution_report(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
v1_orders_post(Ctx, OpenapiNewOrder) ->
    v1_orders_post(Ctx, OpenapiNewOrder, #{}).

-spec v1_orders_post(ctx:ctx(), openapi_new_order:openapi_new_order(), maps:map()) -> {ok, openapi_execution_report:openapi_execution_report(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
v1_orders_post(Ctx, OpenapiNewOrder, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(kuberl, config, #{})),

    Method = post,
    Path = ["/v1/orders"],
    QS = [],
    Headers = [],
    Body1 = OpenapiNewOrder,
    ContentTypeHeader = openapi_utils:select_header_content_type([<<"application/json">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    openapi_utils:request(Ctx, Method, [?BASE_URL, Path], QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get order status
%% Get the current order status for the specified order. The requested order can no longer be active.
-spec v1_orders_status_client_order_id_get(ctx:ctx(), binary()) -> {ok, openapi_execution_report:openapi_execution_report(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
v1_orders_status_client_order_id_get(Ctx, ClientOrderId) ->
    v1_orders_status_client_order_id_get(Ctx, ClientOrderId, #{}).

-spec v1_orders_status_client_order_id_get(ctx:ctx(), binary(), maps:map()) -> {ok, openapi_execution_report:openapi_execution_report(), openapi_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), openapi_utils:response_info()}.
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


