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

> Message v1_orders_cancel_all_post(cancel_order_all_request)

Cancel all orders

This request cancels all open orders across all or single specified exchange.

### Example

```ruby
# load the gem
require 'openapi_client'

api_instance = OpenapiClient::OrdersApi.new
cancel_order_all_request = OpenapiClient::CancelOrderAllRequest.new # CancelOrderAllRequest | 

begin
  #Cancel all orders
  result = api_instance.v1_orders_cancel_all_post(cancel_order_all_request)
  p result
rescue OpenapiClient::ApiError => e
  puts "Exception when calling OrdersApi->v1_orders_cancel_all_post: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cancel_order_all_request** | [**CancelOrderAllRequest**](CancelOrderAllRequest.md)|  | 

### Return type

[**Message**](Message.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json, appliction/json


## v1_orders_cancel_post

> OrderExecutionReport v1_orders_cancel_post(cancel_order_single_request)

Cancel order

This request cancels an existing order. The order can be canceled by the client order ID or exchange order ID.

### Example

```ruby
# load the gem
require 'openapi_client'

api_instance = OpenapiClient::OrdersApi.new
cancel_order_single_request = OpenapiClient::CancelOrderSingleRequest.new # CancelOrderSingleRequest | 

begin
  #Cancel order
  result = api_instance.v1_orders_cancel_post(cancel_order_single_request)
  p result
rescue OpenapiClient::ApiError => e
  puts "Exception when calling OrdersApi->v1_orders_cancel_post: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cancel_order_single_request** | [**CancelOrderSingleRequest**](CancelOrderSingleRequest.md)|  | 

### Return type

[**OrderExecutionReport**](OrderExecutionReport.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json, appliction/json


## v1_orders_get

> Array&lt;OrderExecutionReport&gt; v1_orders_get(opts)

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

[**Array&lt;OrderExecutionReport&gt;**](OrderExecutionReport.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, appliction/json


## v1_orders_post

> OrderExecutionReport v1_orders_post(new_order_single)

Create new order

This request creating new order for the specific exchange.

### Example

```ruby
# load the gem
require 'openapi_client'

api_instance = OpenapiClient::OrdersApi.new
new_order_single = OpenapiClient::NewOrderSingle.new # NewOrderSingle | 

begin
  #Create new order
  result = api_instance.v1_orders_post(new_order_single)
  p result
rescue OpenapiClient::ApiError => e
  puts "Exception when calling OrdersApi->v1_orders_post: #{e}"
end
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **new_order_single** | [**NewOrderSingle**](NewOrderSingle.md)|  | 

### Return type

[**OrderExecutionReport**](OrderExecutionReport.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json, appliction/json


## v1_orders_status_client_order_id_get

> OrderExecutionReport v1_orders_status_client_order_id_get(client_order_id)

Get order status

Get the last order execution report for the specified order. The requested order does not need to be active/opened.

### Example

```ruby
# load the gem
require 'openapi_client'

api_instance = OpenapiClient::OrdersApi.new
client_order_id = '6ab36bc1-344d-432e-ac6d-0bf44ee64c2b' # String | The unique identifier of the order assigned by the client.

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
 **client_order_id** | **String**| The unique identifier of the order assigned by the client. | 

### Return type

[**OrderExecutionReport**](OrderExecutionReport.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

