# openapi.api.OrdersApi

## Load the API package
```dart
import 'package:openapi/api.dart';
```

All URIs are relative to *http://localhost:8080*

Method | HTTP request | Description
------------- | ------------- | -------------
[**v1OrdersCancelAllPost**](OrdersApi.md#v1OrdersCancelAllPost) | **post** /v1/orders/cancel/all | Cancel all orders
[**v1OrdersCancelPost**](OrdersApi.md#v1OrdersCancelPost) | **post** /v1/orders/cancel | Cancel order
[**v1OrdersGet**](OrdersApi.md#v1OrdersGet) | **get** /v1/orders | Get all orders
[**v1OrdersPost**](OrdersApi.md#v1OrdersPost) | **post** /v1/orders | Create new order
[**v1OrdersStatusClientOrderIdGet**](OrdersApi.md#v1OrdersStatusClientOrderIdGet) | **get** /v1/orders/status/{client_order_id} | Get order status


# **v1OrdersCancelAllPost**
> Message v1OrdersCancelAllPost(orderCancelAllRequest)

Cancel all orders

This request cancels all open orders across all or single specified exchange.

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new OrdersApi();
var orderCancelAllRequest = new OrderCancelAllRequest(); // OrderCancelAllRequest | 

try { 
    var result = api_instance.v1OrdersCancelAllPost(orderCancelAllRequest);
    print(result);
} catch (e) {
    print("Exception when calling OrdersApi->v1OrdersCancelAllPost: $e\n");
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

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1OrdersCancelPost**
> ExecutionReport v1OrdersCancelPost(orderCancelSingleRequest)

Cancel order

This request cancels an existing order. The order can be canceled by the client order ID or exchange order ID.

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new OrdersApi();
var orderCancelSingleRequest = new OrderCancelSingleRequest(); // OrderCancelSingleRequest | 

try { 
    var result = api_instance.v1OrdersCancelPost(orderCancelSingleRequest);
    print(result);
} catch (e) {
    print("Exception when calling OrdersApi->v1OrdersCancelPost: $e\n");
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

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1OrdersGet**
> Orders v1OrdersGet(exchangeId)

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

[**Orders**](Orders.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1OrdersPost**
> ExecutionReport v1OrdersPost(newOrder)

Create new order

This request creating new order for the specific exchange.

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new OrdersApi();
var newOrder = new NewOrder(); // NewOrder | 

try { 
    var result = api_instance.v1OrdersPost(newOrder);
    print(result);
} catch (e) {
    print("Exception when calling OrdersApi->v1OrdersPost: $e\n");
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

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **v1OrdersStatusClientOrderIdGet**
> ExecutionReport v1OrdersStatusClientOrderIdGet(clientOrderId)

Get order status

Get the current order status for the specified order. The requested order can no longer be active.

### Example 
```dart
import 'package:openapi/api.dart';

var api_instance = new OrdersApi();
var clientOrderId = 6ab36bc1-344d-432e-ac6d-0bf44ee64c2b; // String | Order Client Id of the order for which the status is requested.

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
 **clientOrderId** | **String**| Order Client Id of the order for which the status is requested. | [default to null]

### Return type

[**ExecutionReport**](ExecutionReport.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

