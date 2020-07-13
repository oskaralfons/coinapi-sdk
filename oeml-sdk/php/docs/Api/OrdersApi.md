# OpenAPI\Client\OrdersApi

All URIs are relative to *http://localhost:8080*

Method | HTTP request | Description
------------- | ------------- | -------------
[**v1OrdersCancelAllPost**](OrdersApi.md#v1OrdersCancelAllPost) | **POST** /v1/orders/cancel/all | Cancel all orders
[**v1OrdersCancelPost**](OrdersApi.md#v1OrdersCancelPost) | **POST** /v1/orders/cancel | Cancel order
[**v1OrdersGet**](OrdersApi.md#v1OrdersGet) | **GET** /v1/orders | Get all orders
[**v1OrdersPost**](OrdersApi.md#v1OrdersPost) | **POST** /v1/orders | Create new order
[**v1OrdersStatusClientOrderIdGet**](OrdersApi.md#v1OrdersStatusClientOrderIdGet) | **GET** /v1/orders/status/{client_order_id} | Get order status



## v1OrdersCancelAllPost

> \OpenAPI\Client\Model\Message v1OrdersCancelAllPost($order_cancel_all_request)

Cancel all orders

This request cancels all open orders across all or single specified exchange.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


$apiInstance = new OpenAPI\Client\Api\OrdersApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$order_cancel_all_request = new \OpenAPI\Client\Model\OrderCancelAllRequest(); // \OpenAPI\Client\Model\OrderCancelAllRequest | 

try {
    $result = $apiInstance->v1OrdersCancelAllPost($order_cancel_all_request);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling OrdersApi->v1OrdersCancelAllPost: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **order_cancel_all_request** | [**\OpenAPI\Client\Model\OrderCancelAllRequest**](../Model/OrderCancelAllRequest.md)|  |

### Return type

[**\OpenAPI\Client\Model\Message**](../Model/Message.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../../README.md#documentation-for-models)
[[Back to README]](../../README.md)


## v1OrdersCancelPost

> \OpenAPI\Client\Model\ExecutionReport v1OrdersCancelPost($order_cancel_single_request)

Cancel order

This request cancels an existing order. The order can be canceled by the client order ID or exchange order ID.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


$apiInstance = new OpenAPI\Client\Api\OrdersApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$order_cancel_single_request = new \OpenAPI\Client\Model\OrderCancelSingleRequest(); // \OpenAPI\Client\Model\OrderCancelSingleRequest | 

try {
    $result = $apiInstance->v1OrdersCancelPost($order_cancel_single_request);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling OrdersApi->v1OrdersCancelPost: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **order_cancel_single_request** | [**\OpenAPI\Client\Model\OrderCancelSingleRequest**](../Model/OrderCancelSingleRequest.md)|  |

### Return type

[**\OpenAPI\Client\Model\ExecutionReport**](../Model/ExecutionReport.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json, appliction/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../../README.md#documentation-for-models)
[[Back to README]](../../README.md)


## v1OrdersGet

> \OpenAPI\Client\Model\Order[] v1OrdersGet($exchange_id)

Get all orders

Get all current open orders across all or single specified exchange.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


$apiInstance = new OpenAPI\Client\Api\OrdersApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$exchange_id = KRAKEN; // string | Filter the output to the orders from the specific exchange.

try {
    $result = $apiInstance->v1OrdersGet($exchange_id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling OrdersApi->v1OrdersGet: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **exchange_id** | **string**| Filter the output to the orders from the specific exchange. | [optional]

### Return type

[**\OpenAPI\Client\Model\Order[]**](../Model/Order.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../../README.md#documentation-for-models)
[[Back to README]](../../README.md)


## v1OrdersPost

> \OpenAPI\Client\Model\ExecutionReport v1OrdersPost($new_order)

Create new order

This request creating new order for the specific exchange.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


$apiInstance = new OpenAPI\Client\Api\OrdersApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$new_order = new \OpenAPI\Client\Model\NewOrder(); // \OpenAPI\Client\Model\NewOrder | 

try {
    $result = $apiInstance->v1OrdersPost($new_order);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling OrdersApi->v1OrdersPost: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **new_order** | [**\OpenAPI\Client\Model\NewOrder**](../Model/NewOrder.md)|  |

### Return type

[**\OpenAPI\Client\Model\ExecutionReport**](../Model/ExecutionReport.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json, appliction/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../../README.md#documentation-for-models)
[[Back to README]](../../README.md)


## v1OrdersStatusClientOrderIdGet

> \OpenAPI\Client\Model\ExecutionReport v1OrdersStatusClientOrderIdGet($client_order_id)

Get order status

Get the current order status for the specified order. The requested order can no longer be active.

### Example

```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');


$apiInstance = new OpenAPI\Client\Api\OrdersApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client()
);
$client_order_id = 6ab36bc1-344d-432e-ac6d-0bf44ee64c2b; // string | Order Client Id of the order for which the status is requested.

try {
    $result = $apiInstance->v1OrdersStatusClientOrderIdGet($client_order_id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling OrdersApi->v1OrdersStatusClientOrderIdGet: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **client_order_id** | **string**| Order Client Id of the order for which the status is requested. |

### Return type

[**\OpenAPI\Client\Model\ExecutionReport**](../Model/ExecutionReport.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../../README.md#documentation-for-models)
[[Back to README]](../../README.md)

