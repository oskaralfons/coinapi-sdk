# OrdersApi

All URIs are relative to *http://localhost:8080*

Method | HTTP request | Description
------------- | ------------- | -------------
[**v1OrdersCancelAllPost**](OrdersApi.md#v1OrdersCancelAllPost) | **POST** /v1/orders/cancel/all | Cancel all orders request
[**v1OrdersCancelPost**](OrdersApi.md#v1OrdersCancelPost) | **POST** /v1/orders/cancel | Cancel order request
[**v1OrdersGet**](OrdersApi.md#v1OrdersGet) | **GET** /v1/orders | Get open orders
[**v1OrdersPost**](OrdersApi.md#v1OrdersPost) | **POST** /v1/orders | Send new order
[**v1OrdersStatusClientOrderIdGet**](OrdersApi.md#v1OrdersStatusClientOrderIdGet) | **GET** /v1/orders/status/{client_order_id} | Get order execution report


<a name="v1OrdersCancelAllPost"></a>
# **v1OrdersCancelAllPost**
> Message v1OrdersCancelAllPost(cancelOrderAllRequest)

Cancel all orders request

This request cancels all open orders on single specified exchange.

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = OrdersApi()
val cancelOrderAllRequest : CancelOrderAllRequest =  // CancelOrderAllRequest | CancelOrderAllRequest object.
try {
    val result : Message = apiInstance.v1OrdersCancelAllPost(cancelOrderAllRequest)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling OrdersApi#v1OrdersCancelAllPost")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling OrdersApi#v1OrdersCancelAllPost")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cancelOrderAllRequest** | [**CancelOrderAllRequest**](CancelOrderAllRequest.md)| CancelOrderAllRequest object. |

### Return type

[**Message**](Message.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json, appliction/json

<a name="v1OrdersCancelPost"></a>
# **v1OrdersCancelPost**
> OrderExecutionReport v1OrdersCancelPost(cancelOrderSingleRequest)

Cancel order request

Request cancel for an existing order. The order can be canceled using the &#x60;client_order_id&#x60; or &#x60;exchange_order_id&#x60;.

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = OrdersApi()
val cancelOrderSingleRequest : CancelOrderSingleRequest =  // CancelOrderSingleRequest | CancelOrderSingleRequest object.
try {
    val result : OrderExecutionReport = apiInstance.v1OrdersCancelPost(cancelOrderSingleRequest)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling OrdersApi#v1OrdersCancelPost")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling OrdersApi#v1OrdersCancelPost")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cancelOrderSingleRequest** | [**CancelOrderSingleRequest**](CancelOrderSingleRequest.md)| CancelOrderSingleRequest object. |

### Return type

[**OrderExecutionReport**](OrderExecutionReport.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json, appliction/json

<a name="v1OrdersGet"></a>
# **v1OrdersGet**
> kotlin.Array&lt;OrderExecutionReport&gt; v1OrdersGet(exchangeId)

Get open orders

Get last execution reports for open orders across all or single exchange.

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = OrdersApi()
val exchangeId : kotlin.String = KRAKEN // kotlin.String | Filter the open orders to the specific exchange.
try {
    val result : kotlin.Array<OrderExecutionReport> = apiInstance.v1OrdersGet(exchangeId)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling OrdersApi#v1OrdersGet")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling OrdersApi#v1OrdersGet")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **exchangeId** | **kotlin.String**| Filter the open orders to the specific exchange. | [optional]

### Return type

[**kotlin.Array&lt;OrderExecutionReport&gt;**](OrderExecutionReport.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, appliction/json

<a name="v1OrdersPost"></a>
# **v1OrdersPost**
> OrderExecutionReport v1OrdersPost(newOrderSingle)

Send new order

This request creating new order for the specific exchange.

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = OrdersApi()
val newOrderSingle : NewOrderSingle =  // NewOrderSingle | NewOrderSingle object.
try {
    val result : OrderExecutionReport = apiInstance.v1OrdersPost(newOrderSingle)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling OrdersApi#v1OrdersPost")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling OrdersApi#v1OrdersPost")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **newOrderSingle** | [**NewOrderSingle**](NewOrderSingle.md)| NewOrderSingle object. |

### Return type

[**OrderExecutionReport**](OrderExecutionReport.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json, appliction/json

<a name="v1OrdersStatusClientOrderIdGet"></a>
# **v1OrdersStatusClientOrderIdGet**
> OrderExecutionReport v1OrdersStatusClientOrderIdGet(clientOrderId)

Get order execution report

Get the last order execution report for the specified order. The requested order does not need to be active or opened.

### Example
```kotlin
// Import classes:
//import org.openapitools.client.infrastructure.*
//import org.openapitools.client.models.*

val apiInstance = OrdersApi()
val clientOrderId : kotlin.String = 6ab36bc1-344d-432e-ac6d-0bf44ee64c2b // kotlin.String | The unique identifier of the order assigned by the client.
try {
    val result : OrderExecutionReport = apiInstance.v1OrdersStatusClientOrderIdGet(clientOrderId)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling OrdersApi#v1OrdersStatusClientOrderIdGet")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling OrdersApi#v1OrdersStatusClientOrderIdGet")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **clientOrderId** | **kotlin.String**| The unique identifier of the order assigned by the client. |

### Return type

[**OrderExecutionReport**](OrderExecutionReport.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

