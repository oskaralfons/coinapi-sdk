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
> Message V1OrdersCancelAllPost(cancel.order.all.request)

Cancel all orders

This request cancels all open orders across all or single specified exchange.

### Example
```R
library(openapi)

var.cancel.order.all.request <- CancelOrderAllRequest$new("exchange_id_example") # CancelOrderAllRequest | 

#Cancel all orders
api.instance <- OrdersApi$new()
result <- api.instance$V1OrdersCancelAllPost(var.cancel.order.all.request)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cancel.order.all.request** | [**CancelOrderAllRequest**](CancelOrderAllRequest.md)|  | 

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
> OrderExecutionReport V1OrdersCancelPost(cancel.order.single.request)

Cancel order

This request cancels an existing order. The order can be canceled by the client order ID or exchange order ID.

### Example
```R
library(openapi)

var.cancel.order.single.request <- CancelOrderSingleRequest$new("exchange_id_example", "exchange_order_id_example", "client_order_id_example") # CancelOrderSingleRequest | 

#Cancel order
api.instance <- OrdersApi$new()
result <- api.instance$V1OrdersCancelPost(var.cancel.order.single.request)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cancel.order.single.request** | [**CancelOrderSingleRequest**](CancelOrderSingleRequest.md)|  | 

### Return type

[**OrderExecutionReport**](OrderExecutionReport.md)

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
> array[OrderExecutionReport] V1OrdersGet(exchange.id=var.exchange.id)

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

[**array[OrderExecutionReport]**](OrderExecutionReport.md)

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
> OrderExecutionReport V1OrdersPost(new.order.single)

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

[**OrderExecutionReport**](OrderExecutionReport.md)

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
> OrderExecutionReport V1OrdersStatusClientOrderIdGet(client.order.id)

Get order status

Get the last order execution report for the specified order. The requested order does not need to be active/opened.

### Example
```R
library(openapi)

var.client.order.id <- '6ab36bc1-344d-432e-ac6d-0bf44ee64c2b' # character | The unique identifier of the order assigned by the client.

#Get order status
api.instance <- OrdersApi$new()
result <- api.instance$V1OrdersStatusClientOrderIdGet(var.client.order.id)
dput(result)
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **client.order.id** | **character**| The unique identifier of the order assigned by the client. | 

### Return type

[**OrderExecutionReport**](OrderExecutionReport.md)

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

