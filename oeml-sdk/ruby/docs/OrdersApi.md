# OpenapiClient::OrdersApi

All URIs are relative to *http://localhost:8080*

Method | HTTP request | Description
------------- | ------------- | -------------
[**v1_orders_cancel_all_post**](OrdersApi.md#v1_orders_cancel_all_post) | **POST** /v1/orders/cancel/all | Cancel all orders
[**v1_orders_cancel_post**](OrdersApi.md#v1_orders_cancel_post) | **POST** /v1/orders/cancel | Cancel order
[**v1_orders_get**](OrdersApi.md#v1_orders_get) | **GET** /v1/orders | Get all orders
[**v1_orders_post**](OrdersApi.md#v1_orders_post) | **POST** /v1/orders | Create new order
[**v1_orders_status_client_order_id_get**](OrdersApi.md#v1_orders_status_client_order_id_get) | **GET** /v1/orders/status/{client_order_id} | Get order status



## v1_orders_cancel_all_post

> Message v1_orders_cancel_all_post(order_cancel_all_request)

Cancel all orders

This request cancels all open orders across all or single specified exchange.

### Example

```ruby
# load the gem
require 'openapi_client'

api_instance = OpenapiClient::OrdersApi.new
order_cancel_all_request = OpenapiClient::OrderCancelAllRequest.new # OrderCancelAllRequest | 

begin
  #Cancel all orders
  result = api_instance.v1_orders_cancel_all_post(order_cancel_all_request)
  p result
rescue OpenapiClient::ApiError => e
  puts "Exception when calling OrdersApi->v1_orders_cancel_all_post: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **order_cancel_all_request** | [**OrderCancelAllRequest**](OrderCancelAllRequest.md)|  | 

### Return type

[**Message**](Message.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## v1_orders_cancel_post

> ExecutionReport v1_orders_cancel_post(order_cancel_single_request)

Cancel order

This request cancels an existing order. The order can be canceled by the client order ID or exchange order ID.

### Example

```ruby
# load the gem
require 'openapi_client'

api_instance = OpenapiClient::OrdersApi.new
order_cancel_single_request = OpenapiClient::OrderCancelSingleRequest.new # OrderCancelSingleRequest | 

begin
  #Cancel order
  result = api_instance.v1_orders_cancel_post(order_cancel_single_request)
  p result
rescue OpenapiClient::ApiError => e
  puts "Exception when calling OrdersApi->v1_orders_cancel_post: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **order_cancel_single_request** | [**OrderCancelSingleRequest**](OrderCancelSingleRequest.md)|  | 

### Return type

[**ExecutionReport**](ExecutionReport.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json, appliction/json


## v1_orders_get

> Array&lt;Order&gt; v1_orders_get(opts)

Get all orders

Get all current open orders across all or single specified exchange.

### Example

```ruby
# load the gem
require 'openapi_client'

api_instance = OpenapiClient::OrdersApi.new
opts = {
  exchange_id: 'KRAKEN' # String | Filter the output to the orders from the specific exchange.
}

begin
  #Get all orders
  result = api_instance.v1_orders_get(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Exception when calling OrdersApi->v1_orders_get: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **exchange_id** | **String**| Filter the output to the orders from the specific exchange. | [optional] 

### Return type

[**Array&lt;Order&gt;**](Order.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## v1_orders_post

> ExecutionReport v1_orders_post(new_order)

Create new order

This request creating new order for the specific exchange.

### Example

```ruby
# load the gem
require 'openapi_client'

api_instance = OpenapiClient::OrdersApi.new
new_order = OpenapiClient::NewOrder.new # NewOrder | 

begin
  #Create new order
  result = api_instance.v1_orders_post(new_order)
  p result
rescue OpenapiClient::ApiError => e
  puts "Exception when calling OrdersApi->v1_orders_post: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **new_order** | [**NewOrder**](NewOrder.md)|  | 

### Return type

[**ExecutionReport**](ExecutionReport.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json, appliction/json


## v1_orders_status_client_order_id_get

> ExecutionReport v1_orders_status_client_order_id_get(client_order_id)

Get order status

Get the current order status for the specified order. The requested order can no longer be active.

### Example

```ruby
# load the gem
require 'openapi_client'

api_instance = OpenapiClient::OrdersApi.new
client_order_id = '6ab36bc1-344d-432e-ac6d-0bf44ee64c2b' # String | Order Client Id of the order for which the status is requested.

begin
  #Get order status
  result = api_instance.v1_orders_status_client_order_id_get(client_order_id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Exception when calling OrdersApi->v1_orders_status_client_order_id_get: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **client_order_id** | **String**| Order Client Id of the order for which the status is requested. | 

### Return type

[**ExecutionReport**](ExecutionReport.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

