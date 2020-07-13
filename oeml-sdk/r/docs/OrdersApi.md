# OrdersApi

All URIs are relative to *http://localhost:8080*

Method | HTTP request | Description
------------- | ------------- | -------------
[**V1OrdersCancelAllPost**](OrdersApi.md#V1OrdersCancelAllPost) | **POST** /v1/orders/cancel/all | Cancel all orders
[**V1OrdersCancelPost**](OrdersApi.md#V1OrdersCancelPost) | **POST** /v1/orders/cancel | Cancel order
[**V1OrdersGet**](OrdersApi.md#V1OrdersGet) | **GET** /v1/orders | Get all orders
[**V1OrdersPost**](OrdersApi.md#V1OrdersPost) | **POST** /v1/orders | Create new order
[**V1OrdersStatusClientOrderIdGet**](OrdersApi.md#V1OrdersStatusClientOrderIdGet) | **GET** /v1/orders/status/{client_order_id} | Get order status


# **V1OrdersCancelAllPost**
> Message V1OrdersCancelAllPost(order.cancel.all.request)

Cancel all orders

This request cancels all open orders across all or single specified exchange.

### Example
```R
library(openapi)

var.order.cancel.all.request <- OrderCancelAllRequest$new("exchange_id_example") # OrderCancelAllRequest | 

#Cancel all orders
api.instance <- OrdersApi$new()
result <- api.instance$V1OrdersCancelAllPost(var.order.cancel.all.request)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **order.cancel.all.request** | [**OrderCancelAllRequest**](OrderCancelAllRequest.md)|  | 

### Return type

[**Message**](Message.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Result |  -  |

# **V1OrdersCancelPost**
> ExecutionReport V1OrdersCancelPost(order.cancel.single.request)

Cancel order

This request cancels an existing order. The order can be canceled by the client order ID or exchange order ID.

### Example
```R
library(openapi)

var.order.cancel.single.request <- OrderCancelSingleRequest$new("exchange_id_example", "exchange_order_id_example", "client_order_id_example") # OrderCancelSingleRequest | 

#Cancel order
api.instance <- OrdersApi$new()
result <- api.instance$V1OrdersCancelPost(var.order.cancel.single.request)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **order.cancel.single.request** | [**OrderCancelSingleRequest**](OrderCancelSingleRequest.md)|  | 

### Return type

[**ExecutionReport**](ExecutionReport.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json, appliction/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Canceled order |  -  |
| **400** | Validation errors |  -  |
| **490** | Exchange not registered |  -  |

# **V1OrdersGet**
> array[ExecutionReport] V1OrdersGet(exchange.id=var.exchange.id)

Get all orders

Get all current open orders across all or single specified exchange.

### Example
```R
library(openapi)

var.exchange.id <- 'KRAKEN' # character | Filter the output to the orders from the specific exchange.

#Get all orders
api.instance <- OrdersApi$new()
result <- api.instance$V1OrdersGet(exchange.id=var.exchange.id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **exchange.id** | **character**| Filter the output to the orders from the specific exchange. | [optional] 

### Return type

[**array[ExecutionReport]**](ExecutionReport.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Collection of requested open orders. |  -  |

# **V1OrdersPost**
> ExecutionReport V1OrdersPost(new.order.single)

Create new order

This request creating new order for the specific exchange.

### Example
```R
library(openapi)

var.new.order.single <- NewOrderSingle$new("exchange_id_example", "client_order_id_example", "symbol_exchange_example", "symbol_coinapi_example", 123, 123, OrdSide$new(), OrdType$new(), TimeInForce$new(), "expire_time_example", list("exec_inst_example")) # NewOrderSingle | 

#Create new order
api.instance <- OrdersApi$new()
result <- api.instance$V1OrdersPost(var.new.order.single)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **new.order.single** | [**NewOrderSingle**](NewOrderSingle.md)|  | 

### Return type

[**ExecutionReport**](ExecutionReport.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json, appliction/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | Created |  -  |
| **400** | Validation errors |  -  |
| **490** | Exchange not registered |  -  |

# **V1OrdersStatusClientOrderIdGet**
> ExecutionReport V1OrdersStatusClientOrderIdGet(client.order.id)

Get order status

Get the current order status for the specified order. The requested order can no longer be active.

### Example
```R
library(openapi)

var.client.order.id <- '6ab36bc1-344d-432e-ac6d-0bf44ee64c2b' # character | Order Client Id of the order for which the status is requested.

#Get order status
api.instance <- OrdersApi$new()
result <- api.instance$V1OrdersStatusClientOrderIdGet(var.client.order.id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **client.order.id** | **character**| Order Client Id of the order for which the status is requested. | 

### Return type

[**ExecutionReport**](ExecutionReport.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

### HTTP response details
| Status code | Description | Response headers |
|-------------|-------------|------------------|
| **200** | The order was found. |  -  |
| **400** | The order was not found. |  -  |

