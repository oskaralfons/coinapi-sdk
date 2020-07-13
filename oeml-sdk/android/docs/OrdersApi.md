# OrdersApi

All URIs are relative to *http://localhost:8080*

Method | HTTP request | Description
------------- | ------------- | -------------
[**v1OrdersCancelAllPost**](OrdersApi.md#v1OrdersCancelAllPost) | **POST** /v1/orders/cancel/all | Cancel all orders
[**v1OrdersCancelPost**](OrdersApi.md#v1OrdersCancelPost) | **POST** /v1/orders/cancel | Cancel order
[**v1OrdersGet**](OrdersApi.md#v1OrdersGet) | **GET** /v1/orders | Get all orders
[**v1OrdersPost**](OrdersApi.md#v1OrdersPost) | **POST** /v1/orders | Create new order
[**v1OrdersStatusClientOrderIdGet**](OrdersApi.md#v1OrdersStatusClientOrderIdGet) | **GET** /v1/orders/status/{client_order_id} | Get order status



## v1OrdersCancelAllPost

> Message v1OrdersCancelAllPost(cancelOrderAllRequest)

Cancel all orders

This request cancels all open orders across all or single specified exchange.

### Example

```java
// Import classes:
//import org.openapitools.client.api.OrdersApi;

OrdersApi apiInstance = new OrdersApi();
CancelOrderAllRequest cancelOrderAllRequest = new CancelOrderAllRequest(); // CancelOrderAllRequest | 
try {
    Message result = apiInstance.v1OrdersCancelAllPost(cancelOrderAllRequest);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling OrdersApi#v1OrdersCancelAllPost");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cancelOrderAllRequest** | [**CancelOrderAllRequest**](CancelOrderAllRequest.md)|  |

### Return type

[**Message**](Message.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json, appliction/json


## v1OrdersCancelPost

> OrderExecutionReport v1OrdersCancelPost(cancelOrderSingleRequest)

Cancel order

This request cancels an existing order. The order can be canceled by the client order ID or exchange order ID.

### Example

```java
// Import classes:
//import org.openapitools.client.api.OrdersApi;

OrdersApi apiInstance = new OrdersApi();
CancelOrderSingleRequest cancelOrderSingleRequest = new CancelOrderSingleRequest(); // CancelOrderSingleRequest | 
try {
    OrderExecutionReport result = apiInstance.v1OrdersCancelPost(cancelOrderSingleRequest);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling OrdersApi#v1OrdersCancelPost");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **cancelOrderSingleRequest** | [**CancelOrderSingleRequest**](CancelOrderSingleRequest.md)|  |

### Return type

[**OrderExecutionReport**](OrderExecutionReport.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json, appliction/json


## v1OrdersGet

> List&lt;OrderExecutionReport&gt; v1OrdersGet(exchangeId)

Get all orders

Get all current open orders across all or single specified exchange.

### Example

```java
// Import classes:
//import org.openapitools.client.api.OrdersApi;

OrdersApi apiInstance = new OrdersApi();
String exchangeId = KRAKEN; // String | Filter the output to the orders from the specific exchange.
try {
    List<OrderExecutionReport> result = apiInstance.v1OrdersGet(exchangeId);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling OrdersApi#v1OrdersGet");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **exchangeId** | **String**| Filter the output to the orders from the specific exchange. | [optional] [default to null]

### Return type

[**List&lt;OrderExecutionReport&gt;**](OrderExecutionReport.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, appliction/json


## v1OrdersPost

> OrderExecutionReport v1OrdersPost(newOrderSingle)

Create new order

This request creating new order for the specific exchange.

### Example

```java
// Import classes:
//import org.openapitools.client.api.OrdersApi;

OrdersApi apiInstance = new OrdersApi();
NewOrderSingle newOrderSingle = new NewOrderSingle(); // NewOrderSingle | 
try {
    OrderExecutionReport result = apiInstance.v1OrdersPost(newOrderSingle);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling OrdersApi#v1OrdersPost");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **newOrderSingle** | [**NewOrderSingle**](NewOrderSingle.md)|  |

### Return type

[**OrderExecutionReport**](OrderExecutionReport.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json, appliction/json


## v1OrdersStatusClientOrderIdGet

> OrderExecutionReport v1OrdersStatusClientOrderIdGet(clientOrderId)

Get order status

Get the last order execution report for the specified order. The requested order does not need to be active/opened.

### Example

```java
// Import classes:
//import org.openapitools.client.api.OrdersApi;

OrdersApi apiInstance = new OrdersApi();
String clientOrderId = 6ab36bc1-344d-432e-ac6d-0bf44ee64c2b; // String | The unique identifier of the order assigned by the client.
try {
    OrderExecutionReport result = apiInstance.v1OrdersStatusClientOrderIdGet(clientOrderId);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling OrdersApi#v1OrdersStatusClientOrderIdGet");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **clientOrderId** | **String**| The unique identifier of the order assigned by the client. | [default to null]

### Return type

[**OrderExecutionReport**](OrderExecutionReport.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

