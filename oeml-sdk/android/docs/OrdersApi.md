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

> Message v1OrdersCancelAllPost(orderCancelAllRequest)

Cancel all orders

This request cancels all open orders across all or single specified exchange.

### Example

```java
// Import classes:
//import org.openapitools.client.api.OrdersApi;

OrdersApi apiInstance = new OrdersApi();
OrderCancelAllRequest orderCancelAllRequest = new OrderCancelAllRequest(); // OrderCancelAllRequest | 
try {
    Message result = apiInstance.v1OrdersCancelAllPost(orderCancelAllRequest);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling OrdersApi#v1OrdersCancelAllPost");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **orderCancelAllRequest** | [**OrderCancelAllRequest**](OrderCancelAllRequest.md)|  |

### Return type

[**Message**](Message.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## v1OrdersCancelPost

> ExecutionReport v1OrdersCancelPost(orderCancelSingleRequest)

Cancel order

This request cancels an existing order. The order can be canceled by the client order ID or exchange order ID.

### Example

```java
// Import classes:
//import org.openapitools.client.api.OrdersApi;

OrdersApi apiInstance = new OrdersApi();
OrderCancelSingleRequest orderCancelSingleRequest = new OrderCancelSingleRequest(); // OrderCancelSingleRequest | 
try {
    ExecutionReport result = apiInstance.v1OrdersCancelPost(orderCancelSingleRequest);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling OrdersApi#v1OrdersCancelPost");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **orderCancelSingleRequest** | [**OrderCancelSingleRequest**](OrderCancelSingleRequest.md)|  |

### Return type

[**ExecutionReport**](ExecutionReport.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json, appliction/json


## v1OrdersGet

> List&lt;NewOrder&gt; v1OrdersGet(exchangeId)

Get all orders

Get all current open orders across all or single specified exchange.

### Example

```java
// Import classes:
//import org.openapitools.client.api.OrdersApi;

OrdersApi apiInstance = new OrdersApi();
String exchangeId = KRAKEN; // String | Filter the output to the orders from the specific exchange.
try {
    List<NewOrder> result = apiInstance.v1OrdersGet(exchangeId);
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

[**List&lt;NewOrder&gt;**](NewOrder.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## v1OrdersPost

> ExecutionReport v1OrdersPost(newOrder)

Create new order

This request creating new order for the specific exchange.

### Example

```java
// Import classes:
//import org.openapitools.client.api.OrdersApi;

OrdersApi apiInstance = new OrdersApi();
NewOrder newOrder = new NewOrder(); // NewOrder | 
try {
    ExecutionReport result = apiInstance.v1OrdersPost(newOrder);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling OrdersApi#v1OrdersPost");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **newOrder** | [**NewOrder**](NewOrder.md)|  |

### Return type

[**ExecutionReport**](ExecutionReport.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json, appliction/json


## v1OrdersStatusClientOrderIdGet

> ExecutionReport v1OrdersStatusClientOrderIdGet(clientOrderId)

Get order status

Get the current order status for the specified order. The requested order can no longer be active.

### Example

```java
// Import classes:
//import org.openapitools.client.api.OrdersApi;

OrdersApi apiInstance = new OrdersApi();
String clientOrderId = 6ab36bc1-344d-432e-ac6d-0bf44ee64c2b; // String | Order Client Id of the order for which the status is requested.
try {
    ExecutionReport result = apiInstance.v1OrdersStatusClientOrderIdGet(clientOrderId);
    System.out.println(result);
} catch (ApiException e) {
    System.err.println("Exception when calling OrdersApi#v1OrdersStatusClientOrderIdGet");
    e.printStackTrace();
}
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **clientOrderId** | **String**| Order Client Id of the order for which the status is requested. | [default to null]

### Return type

[**ExecutionReport**](ExecutionReport.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

