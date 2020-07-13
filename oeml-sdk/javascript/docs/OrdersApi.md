# OemlRestApi.OrdersApi

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

```javascript
import OemlRestApi from 'oeml_rest_api';

let apiInstance = new OemlRestApi.OrdersApi();
let orderCancelAllRequest = new OemlRestApi.OrderCancelAllRequest(); // OrderCancelAllRequest | 
apiInstance.v1OrdersCancelAllPost(orderCancelAllRequest, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
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

```javascript
import OemlRestApi from 'oeml_rest_api';

let apiInstance = new OemlRestApi.OrdersApi();
let orderCancelSingleRequest = new OemlRestApi.OrderCancelSingleRequest(); // OrderCancelSingleRequest | 
apiInstance.v1OrdersCancelPost(orderCancelSingleRequest, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
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

> [ExecutionReport] v1OrdersGet(opts)

Get all orders

Get all current open orders across all or single specified exchange.

### Example

```javascript
import OemlRestApi from 'oeml_rest_api';

let apiInstance = new OemlRestApi.OrdersApi();
let opts = {
  'exchangeId': KRAKEN // String | Filter the output to the orders from the specific exchange.
};
apiInstance.v1OrdersGet(opts, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **exchangeId** | **String**| Filter the output to the orders from the specific exchange. | [optional] 

### Return type

[**[ExecutionReport]**](ExecutionReport.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## v1OrdersPost

> ExecutionReport v1OrdersPost(newOrderSingle)

Create new order

This request creating new order for the specific exchange.

### Example

```javascript
import OemlRestApi from 'oeml_rest_api';

let apiInstance = new OemlRestApi.OrdersApi();
let newOrderSingle = new OemlRestApi.NewOrderSingle(); // NewOrderSingle | 
apiInstance.v1OrdersPost(newOrderSingle, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **newOrderSingle** | [**NewOrderSingle**](NewOrderSingle.md)|  | 

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

```javascript
import OemlRestApi from 'oeml_rest_api';

let apiInstance = new OemlRestApi.OrdersApi();
let clientOrderId = 6ab36bc1-344d-432e-ac6d-0bf44ee64c2b; // String | Order Client Id of the order for which the status is requested.
apiInstance.v1OrdersStatusClientOrderIdGet(clientOrderId, (error, data, response) => {
  if (error) {
    console.error(error);
  } else {
    console.log('API called successfully. Returned data: ' + data);
  }
});
```

### Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **clientOrderId** | **String**| Order Client Id of the order for which the status is requested. | 

### Return type

[**ExecutionReport**](ExecutionReport.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

