# openapi.api.OrdersApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *http://localhost:8080*

Method | HTTP request | Description
------------- | ------------- | -------------
[**v1OrdersCancelAllPost**](OrdersApi.md#v1OrdersCancelAllPost) | **Post** /v1/orders/cancel/all | Cancel all orders
[**v1OrdersCancelPost**](OrdersApi.md#v1OrdersCancelPost) | **Post** /v1/orders/cancel | Cancel order
[**v1OrdersGet**](OrdersApi.md#v1OrdersGet) | **Get** /v1/orders | Get all orders
[**v1OrdersPost**](OrdersApi.md#v1OrdersPost) | **Post** /v1/orders | Create new order
[**v1OrdersStatusClientOrderIdGet**](OrdersApi.md#v1OrdersStatusClientOrderIdGet) | **Get** /v1/orders/status/:client_order_id | Get order status


# **v1OrdersCancelAllPost**
> Message v1OrdersCancelAllPost(cancelOrderAllRequest)

Cancel all orders

This request cancels all open orders across all or single specified exchange.

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new OrdersApi();
var cancelOrderAllRequest = new CancelOrderAllRequest(); // CancelOrderAllRequest | 

try { 
    var result = api_instance.v1OrdersCancelAllPost(cancelOrderAllRequest);
    print(result);
} catch (e) {
    print("Exception when calling OrdersApi->v1OrdersCancelAllPost: $e\n");
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

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1OrdersCancelPost**
> OrderExecutionReport v1OrdersCancelPost(cancelOrderSingleRequest)

Cancel order

This request cancels an existing order. The order can be canceled by the client order ID or exchange order ID.

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new OrdersApi();
var cancelOrderSingleRequest = new CancelOrderSingleRequest(); // CancelOrderSingleRequest | 

try { 
    var result = api_instance.v1OrdersCancelPost(cancelOrderSingleRequest);
    print(result);
} catch (e) {
    print("Exception when calling OrdersApi->v1OrdersCancelPost: $e\n");
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

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1OrdersGet**
> List<OrderExecutionReport> v1OrdersGet(exchangeId)

Get all orders

Get all current open orders across all or single specified exchange.

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new OrdersApi();
var exchangeId = KRAKEN; // String | Filter the output to the orders from the specific exchange.

try { 
    var result = api_instance.v1OrdersGet(exchangeId);
    print(result);
} catch (e) {
    print("Exception when calling OrdersApi->v1OrdersGet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **exchangeId** | **String**| Filter the output to the orders from the specific exchange. | [optional] [default to null]

### Return type

[**List<OrderExecutionReport>**](OrderExecutionReport.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, appliction/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1OrdersPost**
> OrderExecutionReport v1OrdersPost(newOrderSingle)

Create new order

This request creating new order for the specific exchange.

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new OrdersApi();
var newOrderSingle = new NewOrderSingle(); // NewOrderSingle | 

try { 
    var result = api_instance.v1OrdersPost(newOrderSingle);
    print(result);
} catch (e) {
    print("Exception when calling OrdersApi->v1OrdersPost: $e\n");
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

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1OrdersStatusClientOrderIdGet**
> OrderExecutionReport v1OrdersStatusClientOrderIdGet(clientOrderId)

Get order status

Get the last order execution report for the specified order. The requested order does not need to be active/opened.

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new OrdersApi();
var clientOrderId = 6ab36bc1-344d-432e-ac6d-0bf44ee64c2b; // String | The unique identifier of the order assigned by the client.

try { 
    var result = api_instance.v1OrdersStatusClientOrderIdGet(clientOrderId);
    print(result);
} catch (e) {
    print("Exception when calling OrdersApi->v1OrdersStatusClientOrderIdGet: $e\n");
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

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

